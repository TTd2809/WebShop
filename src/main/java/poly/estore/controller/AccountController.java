package poly.estore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.estore.entity.Account;
import poly.estore.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	AccountService accountService;
	
	@GetMapping("/account/sign-up")
	public String signUpForm(@ModelAttribute("account") Account account) {
		return "account/sign-up";
	}
	@PostMapping("/account/sign-up")
	public String signUpProcess(Model model, 
			@ModelAttribute("account") Account account, 
			@RequestParam("confirm") String confirm) {
		if(!confirm.equals(account.getPassword())) {
			model.addAttribute("message", "Xác nhận mật khẩu không chính xác");
		} else {
			accountService.create(account);
			model.addAttribute("message", "Đăng ký thành công");
		}
		return "account/sign-up";
	}
	
	@GetMapping("/account/edit-profile")
	public String editProfileForm(Model model, Authentication auth) {
		String username = auth.getName();
		Account account = accountService.findByUsername(username);
		model.addAttribute("account", account);
		return "account/edit-profile";
	}
	@PostMapping("/account/edit-profile")
	public String editProfileProcess(Model model, 
			@ModelAttribute("account") Account account) {
		accountService.update(account);
		model.addAttribute("message", "Thông tin tài khoản của bạn đã được cập nhật");
		return "account/edit-profile";
	}
	
	@GetMapping("/account/forgot-password")
	public String forgotPasswordForm() {
		return "account/forgot-password";
	}
	@PostMapping("/account/forgot-password")
	public String forgotPasswordProcess(Model model,
			@RequestParam("username") String username, 
			@RequestParam("email") String email) {
		return "account/forgot-password";
	}
	
	@GetMapping("/account/change-password")
	public String changePasswordForm(Model model, Authentication auth) {
		String username = auth.getName();
		Account account = accountService.findByUsername(username);
		model.addAttribute("account", account);
		return "account/change-password";
	}
	@PostMapping("/account/change-password")
	public String changePasswordProcess(Model model,@ModelAttribute("account") Account account,
			@RequestParam("username") String username, 
			@RequestParam("oldpass") String oldpass, 
			@RequestParam("newpass") String newpass, 
			@RequestParam("confirm") String confirm) {
		if(!oldpass.equals(account.getPassword())) {
			model.addAttribute("message", "Password ko chính xác");
		} else {
			if (!confirm.equals(newpass)) {
				model.addAttribute("message", "Xác nhận password mới ko chính xác");
			}else {
				account.setPassword(newpass);
				accountService.update(account);
				model.addAttribute("message", "Thay đổi password thành công");
			}
			
		}
		return "account/change-password";
	}
}