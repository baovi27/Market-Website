package com.ps22978.asm.Bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.ToString;

@Data
@Entity
@Table(name = "Orderdetail")
public class OrderDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	Double price;
	Integer quantity;
	
	@ToString.Exclude
	@ManyToOne @JoinColumn(name = "productid")
	Products product;
	
	@ToString.Exclude
	@ManyToOne @JoinColumn(name = "orderid")
	Orders order;
}
