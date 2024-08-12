package com.grayMatter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grayMatter.dao.OrderDao;
import com.grayMatter.dao.OrderMapper;
import com.grayMatter.model.Order;

@Service
public class OrderService {
	@Autowired
	private OrderDao orderdao;
	public List<Order> getAllOrders() {
	    return orderdao.getAllOrders();
    }
	
	public List<Order> getOrdersByCustomerId(int customerId){
	    return orderdao.getOrdersByCustomerId(customerId);
	}

    public int addOrder(Order order) {
    	return orderdao.addOrder(order);
    }

    public int deleteOrder(int id) {
    	return orderdao.deleteOrder(id);
    }

    public int updateOrder(Order order) {
       return orderdao.updateOrder(order);
    }

    // Fetch an order by ID
    public Order getOrderById(int id) {
        return orderdao.getOrderById(id);
    }
}
