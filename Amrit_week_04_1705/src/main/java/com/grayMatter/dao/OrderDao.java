package com.grayMatter.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.grayMatter.model.Order;

import lombok.Setter;

@Setter
@Component
public class OrderDao {
	@Autowired
	private  JdbcTemplate jdbcTemplate;
	public List<Order> getAllOrders() {
        String query = "SELECT * FROM orders";
        List<Order> allorders = jdbcTemplate.query(query, new OrderMapper());
	    return allorders;
    }
	
	public List<Order> getOrdersByCustomerId(int customerId) {
	    String query = "SELECT * FROM orders WHERE customer_id="+customerId;
	    List<Order> custOrders = jdbcTemplate.query(query, new OrderMapper());
	    return custOrders;
	}

    public int addOrder(Order order) {
        String query = "INSERT INTO orders VALUES (?,?,?,?)";
        return jdbcTemplate.update(query, order.getId(), order.getOrderDate(), order.getTotalAmount(), order.getCustomerId());
    }

    public int deleteOrder(int id) {
        String query = "DELETE FROM orders WHERE id=?";
        return jdbcTemplate.update(query, id);
    }

    public int updateOrder(Order order) {
        String query = "UPDATE orders SET order_date=?, total_amount=? WHERE id=?";
        return jdbcTemplate.update(query, order.getOrderDate(), order.getTotalAmount(), order.getId());
    }

    // Fetch an order by ID
    public Order getOrderById(int id) {
        String query = "SELECT * FROM orders WHERE id=?";
        List<Order> orderList = jdbcTemplate.query(query, new OrderMapper(),id);
        return orderList.get(0);
    }

}
