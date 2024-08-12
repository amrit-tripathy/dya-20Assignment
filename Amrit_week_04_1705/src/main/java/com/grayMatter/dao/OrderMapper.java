package com.grayMatter.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.grayMatter.model.Order;

public class OrderMapper implements RowMapper<Order>{

	@Override
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		return new Order(rs.getInt(1),rs.getDate(2),rs.getDouble(3),rs.getInt(4));
	}

}
//private int id;
//private Date orderDate;
//private double totalAmount;
//private int customerId;
