package com.ps22978.asm.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps22978.asm.Bean.Orders;




public interface OrderDao extends JpaRepository<Orders,Integer> {

	
}
