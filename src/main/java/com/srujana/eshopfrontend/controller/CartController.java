package com.srujana.eshopfrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.daoImpl.CartDaoImpl;
import com.srujana.eshopbackend.daoImpl.ProductDaoImpl;
import com.srujana.eshopbackend.model.Cart;
import com.srujana.eshopbackend.model.Catagory;
import com.srujana.eshopbackend.model.Product;
import com.srujana.eshopbackend.model.Supplier;

@Controller
public class CartController {
	
	@Autowired
	CartDaoImpl cartDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@RequestMapping("/showProductsUser")
	public ModelAndView goToUser()
	{
		ModelAndView mv=new ModelAndView("userProducts");
		List<Product> lc;
		lc=productDaoImpl.getProductList();
		mv.addObject("showProd",lc);
		return mv;
		
	}
	@RequestMapping("/viewProduct")
	public ModelAndView goToProducts(@RequestParam("pid") int pid)
	{
		ModelAndView mv=new ModelAndView("productsDetails");
		
		Product p= productDaoImpl.getProduct(pid);
		Cart cart=new Cart();
		int pq=p.getQuantity();
		mv.addObject("productQ", pq);
			
		mv.addObject("showProd",p);
		mv.addObject("b", "AddToCart");
		
		return mv;
		}
	
	@RequestMapping("/cart")
	public ModelAndView addToCart(HttpServletRequest req,HttpSession session)
	{
		
		ModelAndView modelAndView=new ModelAndView("userHome");
		
		int q=Integer.parseInt(req.getParameter("qnum"));
		int pid=(Integer.parseInt(req.getParameter("pid")));
		Product p=productDaoImpl.getProduct(pid);
		
		String n=(String)session.getAttribute("uname");
		cartDaoImpl.saveCart(p, q,n);
		
		
		
		return modelAndView;
	}
	@RequestMapping("/cartshow")
	public ModelAndView showCart(HttpSession session)
	{
		
		String userName=(String)session.getAttribute("uname");
		
		List<Cart> c=cartDaoImpl.getCartList(userName);
		
		ModelAndView mv=new ModelAndView("showCart");
		mv.addObject("cart",c);
		
		return mv;
	}
	@RequestMapping(value="/d")
	public String deleteCartData(@RequestParam("cartId") int cartId)
	{
		Cart cart=cartDaoImpl.getCart(cartId);

		cartDaoImpl.deleteCart(cart);
		 return "redirect:cartshow";
		
	}
	@RequestMapping(value="/u")
	public ModelAndView editCartData(@RequestParam("cartId") int cartId)
	{
		ModelAndView modelAndView=new ModelAndView("productsDetails");
		Cart cart=cartDaoImpl.getCart(cartId);
		//modelAndView.addObject("cart", cart);
		System.out.println(cart.getProductId());
		System.out.println(cart.getCartId());
		Product p= productDaoImpl.getProduct(cart.getProductId());
		
		
			//cartDaoImpl.editCart(cart);
		modelAndView.addObject("showProd",p);

		modelAndView.addObject("b", "UpdateCart");
		
		
		return modelAndView;
	}
	
}
