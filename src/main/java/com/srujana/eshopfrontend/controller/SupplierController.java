package com.srujana.eshopfrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.daoImpl.SupplierDaoImpl;
import com.srujana.eshopbackend.model.Catagory;
import com.srujana.eshopbackend.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	 public SupplierController() {
		
		System.out.println("supplier controller loading");
	}
	
	
	@RequestMapping(value="/addsupplier",method=RequestMethod.GET)
	public ModelAndView goToForm()
	{
		ModelAndView modelAndView=new ModelAndView("supplier");
		Supplier supplier=new Supplier();
		modelAndView.addObject("sup",supplier );
		modelAndView.addObject("buttonName", "AddSupplier");
		return modelAndView;
	}
	@RequestMapping(value="/addsupplier",method=RequestMethod.POST)
	public ModelAndView receiveFormData(@ModelAttribute("sup") Supplier supplier)
	{
		ModelAndView modelAndView=new ModelAndView("adminHeader");
		if(supplier.getSupplierId()==0)
		{
			supplierDaoImpl.saveSupplier(supplier);
		}
		else
		{
			supplierDaoImpl.editSupplier(supplier);
		}
		
		return modelAndView;
	}
	@RequestMapping(value="/showsupplier",method=RequestMethod.GET)
	public ModelAndView showFormData()
	{
		ModelAndView modelAndView=new ModelAndView("showSupplier");
		List<Supplier> suppliers=supplierDaoImpl.getSupplierList();
		modelAndView.addObject("showSupplier", suppliers);
		
		return modelAndView;
	}
	@RequestMapping(value="/update")
	public ModelAndView editFormData(@RequestParam("supId") int supplierId)
	{
		ModelAndView modelAndView=new ModelAndView("supplier");
		
		Supplier supplier=supplierDaoImpl.getSupplier(supplierId);
		
		
		modelAndView.addObject("sup",supplier);
		modelAndView.addObject("buttonName", "UpdateSupplier");
		return modelAndView;
	}
	@RequestMapping(value="/del")
	public String deleteFormData(@RequestParam("supId") int supplierId)
	{
		
		Supplier supplier=supplierDaoImpl.getSupplier(supplierId);
		supplierDaoImpl.deleteSupplier(supplier);
		 return "redirect:showsupplier";
		
	}
}
