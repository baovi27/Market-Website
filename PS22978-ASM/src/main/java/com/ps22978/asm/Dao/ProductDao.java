package com.ps22978.asm.Dao;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps22978.asm.Bean.Products;
import com.ps22978.asm.Bean.ReportCategory;


public interface ProductDao extends JpaRepository<Products,Integer>{
	@Query("SELECT p FROM Products p WHERE p.price > ?1")
	List<Products> findByPrice2(float min, Sort sort);
	
	@Query("SELECT p FROM Products p WHERE p.price > ?1")
	List<Products> findByPriceAsc(float min, Sort sort);
	
	@Query(value="SELECT * FROM Products WHERE name LIKE ?1",nativeQuery = true)
	List<Products> findByKeyword(String keyword);
	
	@Query(value="SELECT * FROM Products WHERE typed LIKE ?1",nativeQuery = true)
	List<Products> findByType(String type);
	
	List<Products> findByPriceBetween(float minPrice, float maxPrice);
	
	@Query(value="SELECT * FROM Products WHERE typed='Meat'",nativeQuery=true)
	List<Products> findByMeat(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='Fruit'",nativeQuery=true)
	List<Products> findByFruit(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='Salad'",nativeQuery=true)
	List<Products> findBySalad(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='Vegetable'",nativeQuery=true)
	List<Products> findByVegetable(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='FastFood'",nativeQuery=true)
	List<Products> findByFastFood(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='Traditional'",nativeQuery=true)
	List<Products> findByTraditional(String typed);
	
	@Query(value="SELECT * FROM Products WHERE typed='Drink'",nativeQuery=true)
	List<Products> findByDrink(String typed);
	
	
	@Query("SELECT new ReportCategory(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<ReportCategory> getReportCategory();
	
	
}
