package com.srujana.eshopfrontend.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.daoImpl.CartDaoImpl;
import com.srujana.eshopbackend.daoImpl.OrderDaoImpl;
import com.srujana.eshopbackend.daoImpl.ProductDaoImpl;
import com.srujana.eshopbackend.daoImpl.UserDaoImpl;
import com.srujana.eshopbackend.model.Cart;
import com.srujana.eshopbackend.model.Product;
import com.srujana.eshopbackend.model.ShippingAdress;
import com.srujana.eshopbackend.model.User;
import com.srujana.eshopbackend.model.UserOrder;

@Controller
public class OrderController {

	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	CartDaoImpl cartDaoImpl;
	@Autowired
	OrderDaoImpl orderDaoImpl;
	@Autowired 
	ProductDaoImpl producyDaoIml;

	@RequestMapping(value="/placeorder")
	public ModelAndView placeOrder(HttpSession session)
	{
		ModelAndView modelAndView=new ModelAndView("shippingAddress");
		//ShippingAdress shippingAdress=new ShippingAdress();
		
		String user=(String)session.getAttribute("uname");
		User u=userDaoImpl.getUser(user);
		ShippingAdress shippingAdress2 =u.getShippingAdress();

	
		
		modelAndView.addObject("order", shippingAdress2);
		return modelAndView;
}
	@RequestMapping(value="/shipA")
	public ModelAndView orderDetails(@ModelAttribute("order") ShippingAdress shippingAdress,HttpSession session)
	{
		ModelAndView modelAndView=new ModelAndView("orderdetails");
		UserOrder userOrder=new UserOrder();
		
		//Cart cart=new Cart();
		Date date=new Date();

		String email=(String)session.getAttribute("uname");
		System.out.println(email);
		
		User user=userDaoImpl.getUser(email);
		int tp=0;
		List<Cart> list= cartDaoImpl.getCartList(email);
		
		for(Cart c:list)
		{
			//int pi=c.getProductId();
			
			tp=tp+c.getTotalPrice();
			int pi=c.getProductId();
			Product pr=producyDaoIml.getProduct(pi);
			int cq=c.getQuantity();
			int pq=pr.getQuantity();
			pr.setQuantity(pq-cq);
			producyDaoIml.editProduct(pr);
			
			
		}
		
		userOrder.setDate(date);
		user.setShippingAdress(shippingAdress);
		userOrder.setUser(user);
		userOrder.setShippingAdress(shippingAdress);
		
		userOrder.setGrandTotal(tp);

		orderDaoImpl.saveOrder(userOrder);
		modelAndView.addObject("uo", userOrder);
		
		
		return modelAndView;
		
		
	}
	@RequestMapping(value="/myorder")
	public ModelAndView myOrders(HttpSession session)
	{
		String user=(String)session.getAttribute("uname");
		List<UserOrder>  u=orderDaoImpl.getMyOrders(user);
		
		ModelAndView modelAndView=new ModelAndView("MyOrders");
		
		List<Cart> cList=cartDaoImpl.getCartList(user);
		for(Cart cart:cList)
		{
				cartDaoImpl.deleteCart(cart);
		}
		modelAndView.addObject("my", u);
		return modelAndView;
	}
}
