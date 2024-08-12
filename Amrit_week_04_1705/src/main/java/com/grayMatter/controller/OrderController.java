package com.grayMatter.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.grayMatter.model.Customer;
import com.grayMatter.model.Order;
import com.grayMatter.service.CustService;
import com.grayMatter.service.OrderService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class OrderController {
	@Autowired
	
	private OrderService service;
	@RequestMapping(value="addOrder", method=RequestMethod.POST)
	public ModelAndView doaddorder(@RequestParam String id,@RequestParam String order_date,@RequestParam String total_amount,HttpSession session) throws ParseException {
		int custid = (int) session.getAttribute("custid");
		
		SimpleDateFormat format= new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate = format.parse(order_date);
		
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		Order o = new Order(Integer.parseInt(id),sqlDate,Double.parseDouble(total_amount),custid);
		service.addOrder(o);
		return new ModelAndView("custHome");
	}
	@RequestMapping(value="updateOrder", method=RequestMethod.POST)
	public ModelAndView doUpdateorder(@RequestParam String id,@RequestParam String order_date,@RequestParam String total_amount,HttpSession session) throws ParseException {
		int custid = (int) session.getAttribute("custid");
		
		SimpleDateFormat format= new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate = format.parse(order_date);
		
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		Order o = new Order(Integer.parseInt(id),sqlDate,Double.parseDouble(total_amount),custid);
		service.updateOrder(o);
		return new ModelAndView("custHome");
	}
	@RequestMapping(value="deleteOrder", method=RequestMethod.POST)
	public ModelAndView dodeleteorder(@RequestParam String id) {
		service.deleteOrder(Integer.parseInt(id));
		return new ModelAndView("custHome");
	}
	
	@RequestMapping(value = "getallOrdersCust", method = RequestMethod.POST)
	public ModelAndView dogetallorderbycust(HttpSession session) {
	    Integer custid = (Integer) session.getAttribute("custid");
	    
	   
	    if (custid == null) {
	        return new ModelAndView("errorPage");
	    }

	    List<Order> ordList = service.getOrdersByCustomerId(custid);
	    
	    ModelAndView mv = new ModelAndView();
	    if (ordList != null && !ordList.isEmpty()) {
	        mv.setViewName("getallOrdersCustPage");
	        mv.addObject("ordList", ordList); // Pass orders to the view
	    } else {
	        mv.setViewName("custHome");
	    }
	    
	    return mv;
	}
	
	@RequestMapping(value = "getOrderById", method = RequestMethod.POST)
	public ModelAndView dogetorderbyid(@RequestParam String id,HttpSession session) {

	    Order o = service.getOrderById(Integer.parseInt(id));
	    List<Order> ordList = Arrays.asList(o);
	    ModelAndView mv = new ModelAndView();
	    if (ordList != null && !ordList.isEmpty()) {
	        mv.setViewName("getallOrdersCustPage");
	        mv.addObject("ordList", ordList); // Pass orders to the view
	    } else {
	        mv.setViewName("custHome");
	    }
	    
	    return mv;
	}
	@RequestMapping("getallOrders")
	public ModelAndView showallOrders() {
		List<Order> ordList = service.getAllOrders();
		ModelAndView mv = new ModelAndView("getallOrdersPage");
		mv.addObject("ordList",ordList);
		return mv;
	}
	
	@RequestMapping("calTotalRevenue")
	public ModelAndView calculateTotal() {
		List<Order> ordList = service.getAllOrders();
		int total = 0;
		for(Order o:ordList) {
			total+=o.getTotalAmount();
		}
		ModelAndView mv = new ModelAndView("adminHome");
		mv.addObject("total",total);
		return mv;
	}
	
	
}

