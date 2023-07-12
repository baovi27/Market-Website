package com.ps22978.asm.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps22978.asm.Bean.Account;
import com.ps22978.asm.Bean.TopCustomer;


public interface AccountDao extends JpaRepository<Account, String> {

	@Query("SELECT new TopCustomer(o.account, count(o.account.username)) FROM Order o GROUP BY o.account.username ORDER BY count(o.account.username) DESC")
	List<TopCustomer> getTopAccount();
	
	   
		
		
		
}
