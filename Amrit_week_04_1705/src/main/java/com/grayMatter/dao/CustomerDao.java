package com.grayMatter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.grayMatter.model.Customer;

import lombok.Setter;

@Setter
@Component
public class CustomerDao {
	@Autowired
	private  JdbcTemplate jdbcTemplate;
	public List<Customer> getAllCustomers(){
		String query="select * from customers";
		List<Customer>custList = jdbcTemplate.query(query, new CustomerMapper());
		return custList;
	}
	public int addCustomer(Customer c) {
		String query="insert into customers values(?,?,?,?)";
		return jdbcTemplate.update(query,c.getId(),c.getName(),c.getEmail(),c.getPassword());
	}
	public int deleteCustomer(int id) {
		String query="delete from customers where id=?";
		return jdbcTemplate.update(query,id);
	}
	public int updateCustomer(Customer c) {
		String query="UPDATE customers SET name=?, email=?,password=? WHERE id=?";
		return jdbcTemplate.update(query,c.getName(),c.getEmail(),c.getPassword(),c.getId());
	}
	public Customer getCustomerById(int id) {
		String query="SELECT * FROM customers WHERE id=?";
		List<Customer>getcust = jdbcTemplate.query(query, new CustomerMapper(),id);
		return getcust.get(0);
	}
	public Customer getCustomerByName(String name,String password) {
		String query="SELECT * FROM customers WHERE name=? and password=?";
		List<Customer>getcust = jdbcTemplate.query(query, new CustomerMapper(),name,password);
		return getcust.get(0);
	}
	
	
}
