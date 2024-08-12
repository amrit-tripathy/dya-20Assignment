package com.grayMatter.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class viewController {
	@RequestMapping(value="/login" ,method=RequestMethod.GET)
	public ModelAndView showlogin() {
		return new ModelAndView("loginpage");
	}
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView showsignup() {
		return new ModelAndView("signuppage");
	}
	@RequestMapping(value="/addOrder",method=RequestMethod.GET)
	public ModelAndView showaddOrder() {
		return new ModelAndView("addOrderPage");
	}
	
	@RequestMapping(value="/updateOrder",method=RequestMethod.GET)
	public ModelAndView showupdateOrder() {
		return new ModelAndView("updateOrderPage");
	}
	@RequestMapping(value="/deleteOrder",method=RequestMethod.GET)
	public ModelAndView showdeleteOrder() {
		return new ModelAndView("deleteOrderPage");
	}
	@RequestMapping(value="/getOrderByid",method=RequestMethod.GET)
	public ModelAndView showgetOrderByid() {
		return new ModelAndView("getOrderByidPage");
	}
	
	@RequestMapping(value = "gobacktologin")
	public String goback(HttpSession session) {
	    session.removeAttribute("custid");
	    return "redirect:/index.jsp";
	}
	
	@RequestMapping(value = "updateCustomer")
	public ModelAndView updateCustomer(HttpSession session) {
	    return new ModelAndView("updateProfilePage");
	}
	
	
}
//<form action="addOrder" method="get">
//<button type="submit">add Order</button>
//</form>
//<form action="getallOrdersCust" method="get">
//<button type="submit">Get all of your Orders</button>
//</form>
//
//<form action="updateOrder" method="get">
//<button type="submit">update Order</button>
//</form>
//
//<form action="deleteOrder" method="get">
//<button type="submit">delete Order</button>
//</form>
//
//<form action="getOrderByid" method="get">
//<button type="submit">Get Order by id</button>
//</form>
