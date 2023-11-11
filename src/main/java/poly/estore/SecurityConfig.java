package poly.estore;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

@SuppressWarnings("deprecation")
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
	public BCryptPasswordEncoder getBCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
	public UserDetailsService userDetailsService;
		
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.cors().disable().csrf().disable();
		
		http.authorizeRequests()
			.antMatchers("/order/**", 
					"/account/change-password",
					"/account/edit-profile",
					"/security/logout",
					"/admin/**").authenticated()
			.antMatchers("/admin/**").hasRole("STAF")
			.anyRequest().permitAll();
		
		//http.httpBasic();
		
		http.formLogin()
			.loginPage("/security/login/form")
			.loginProcessingUrl("/security/login")
			.defaultSuccessUrl("/security/login/success")
			.failureUrl("/security/login/failure");
		http.rememberMe()
			.rememberMeParameter("remember");
		http.exceptionHandling().accessDeniedPage("/security/access/denied");
		
		http.logout()
			.logoutUrl("/security/logout")
			.logoutSuccessUrl("/security/logout/success")
			.addLogoutHandler(new SecurityContextLogoutHandler())
			.clearAuthentication(true);
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/rsx/**", "/api/**");
	}
}