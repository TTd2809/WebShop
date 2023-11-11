package poly.estore.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.estore.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
	
	@Query("SELECT a FROM Account a WHERE a.authorities IS NOT EMPTY")
	List<Account> getMasters();
}
