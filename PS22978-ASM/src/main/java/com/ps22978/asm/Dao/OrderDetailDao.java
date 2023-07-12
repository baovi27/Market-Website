package com.ps22978.asm.Dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps22978.asm.Bean.OrderDetail;
import com.ps22978.asm.Bean.Top10;



public interface OrderDetailDao extends JpaRepository<OrderDetail, Integer> {

	@Query("SELECT new Top10(o.product, sum(o.quantity)) FROM OrderDetail o GROUP BY o.product ORDER BY sum(o.quantity) DESC")
	Page<Top10> getTop10(Pageable pegeable);
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderID(Integer orderid);
}
