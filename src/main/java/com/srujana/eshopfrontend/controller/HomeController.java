package com.srujana.eshopfrontend.controller;

import com.srujana.eshopbackend.daoImpl.CatagoryDaoImpl;
import com.srujana.eshopbackend.model.Catagory;
import com.srujana.eshopfrontend.controller.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	CatagoryDaoImpl catagoryDaoImpl;
	@RequestMapping("/Home")
	public String goToHome()
	{
		return "Home";
	}
	@RequestMapping("/AdminHome")
	public String goToAdminHome()
	{
		return "adminHeader";
	}
	@RequestMapping("/aboutUs")
	public String goToAboutUs()
	{
		return "aboutUs";
	}
	@RequestMapping("/contactUs")
	public String goToContactAUs()
	{
		return "contactUs";
	}
	@RequestMapping("/userHome")
	public ModelAndView goToUserHome()
	{
		ModelAndView mv=new ModelAndView("userHome");
		List<Catagory> catagories=catagoryDaoImpl.getCategoryList();
		mv.addObject("catagoryList", catagories);
		return mv;
	}
}
