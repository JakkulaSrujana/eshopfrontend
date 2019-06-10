package com.srujana.eshopfrontend.controller;

import com.srujana.eshopfrontend.controller.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/Home")
	public String goToHome()
	{
		return "Home";
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
	public String goToUserHome()
	{
		return "userHome";
	}
}
