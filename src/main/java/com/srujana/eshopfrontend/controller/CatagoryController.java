package com.srujana.eshopfrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.dao.CatagoryDao;
import com.srujana.eshopbackend.daoImpl.CatagoryDaoImpl;
import com.srujana.eshopbackend.model.Catagory;

//spring-contex-org.springframework.sterotype.controller
@Controller
public class CatagoryController {

	@Autowired
	CatagoryDaoImpl catagoryDaoImpl;
	
	
	public CatagoryController() {
		System.out.println("catagory controller loading");
	}
	@RequestMapping(value="/addcatagory",method=RequestMethod.GET)
	public ModelAndView goToForm()
	{
		ModelAndView modelAndView=new ModelAndView("Home");
		Catagory catagory=new Catagory();
		modelAndView.addObject("cat",catagory );
		modelAndView.addObject("buttonName", "AddCatagory");
		return modelAndView;
	}
	@RequestMapping(value="/addcatagory",method=RequestMethod.POST)
	public ModelAndView receiveFormData(@ModelAttribute("cat") Catagory catagory)
	{
		ModelAndView modelAndView=new ModelAndView("catagory");
		catagoryDaoImpl.saveCategory(catagory);
		return modelAndView;
	}
	@RequestMapping(value="/showcatagory",method=RequestMethod.GET)
	public ModelAndView showFormData()
	{
		ModelAndView modelAndView=new ModelAndView("showCatagory");
		List<Catagory> catagories=catagoryDaoImpl.getCategoryList();
		modelAndView.addObject("showCatagory", catagories);
		
		return modelAndView;
	}
	@RequestMapping(value="/edit")
	public ModelAndView editFormData(@RequestParam("catId") int categoryId)
	{
		ModelAndView modelAndView=new ModelAndView("catagory");
		
		Catagory catagory=catagoryDaoImpl.getCategory(categoryId);
		
		modelAndView.addObject("cat",catagory);
		modelAndView.addObject("buttonName", "UpdateCatagory");
		return modelAndView;
	}
	@RequestMapping(value="/delete")
	public String deleteFormData(@RequestParam("catId") int categoryId)
	{
		
		Catagory category=catagoryDaoImpl.getCategory(categoryId);
		catagoryDaoImpl.deleteCategory(category);
		 return "redirect:showcatagory";
		
	}
}
