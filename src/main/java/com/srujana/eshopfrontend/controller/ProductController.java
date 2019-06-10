package com.srujana.eshopfrontend.controller;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.daoImpl.CatagoryDaoImpl;
import com.srujana.eshopbackend.daoImpl.ProductDaoImpl;
import com.srujana.eshopbackend.daoImpl.SupplierDaoImpl;
import com.srujana.eshopbackend.model.Catagory;
import com.srujana.eshopbackend.model.Product;
import com.srujana.eshopbackend.model.Supplier;


@Controller
public class ProductController {

	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	CatagoryDaoImpl catagoryDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	 public ProductController() {
		System.out.println("product controller loading");
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.GET)
	public ModelAndView goToForm()
	{
		ModelAndView modelAndView=new ModelAndView("product");
		Product product=new Product();
		
			int productId	=(int)(Math.random()*10000);
			product.setProductId(productId);
		
		
		List<Catagory> catagories=catagoryDaoImpl.getCategoryList();
		modelAndView.addObject("catagoryList", catagories);
		
		List<Supplier> suppliers=supplierDaoImpl.getSupplierList();
		modelAndView.addObject("supplierList", suppliers);
		
		modelAndView.addObject("buttonName", "AddProduct");
		
		modelAndView.addObject("pro",product );
		return modelAndView;
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public ModelAndView receiveFormData(@ModelAttribute("pro") Product product)
	{
		ModelAndView modelAndView=new ModelAndView("product");
		productDaoImpl.saveProduct(product);
		
		MultipartFile image=product.getProImage();
		System.out.println("------------"+image);
		
		BufferedOutputStream  bos=null;
		try {
			byte barry[] = image.getBytes();
			FileOutputStream fos=new FileOutputStream("Desktop\\NIIT NotesAndPro\\EclipsePgmVersion2\\eshopfrontend\\src\\main\\webapp\\resources\\product-images\\"+product.getProductId()+".jpg");
			  bos=new BufferedOutputStream(fos);
			bos.write(barry);
			
			
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		finally {
			
			try {
				bos.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			
		return modelAndView;
	}
	@RequestMapping(value="/showproduct",method=RequestMethod.GET)
	public ModelAndView showFormData()
	{
		ModelAndView modelAndView=new ModelAndView("showproducts");
		List<Product> products=productDaoImpl.getProductList();
		modelAndView.addObject("showpro", products);
		
		return modelAndView;
	}
	@RequestMapping(value="/up")
	public ModelAndView editFormData(@RequestParam("proId") int productId)
	{
		ModelAndView modelAndView=new ModelAndView("product");
		
		Product product=productDaoImpl.getProduct(productId);
		
		List<Catagory> catagories=catagoryDaoImpl.getCategoryList();
		modelAndView.addObject("catagoryList", catagories);
		
		List<Supplier> suppliers=supplierDaoImpl.getSupplierList();
		modelAndView.addObject("supplierList", suppliers);
		
		modelAndView.addObject("pro",product);
		modelAndView.addObject("buttonName", "UpdateProduct");
		return modelAndView;
	}
	@RequestMapping(value="/de")
	public String deleteFormData(@RequestParam("proId") int productId)
	{
		
		Product product=productDaoImpl.getProduct(productId);
		productDaoImpl.deleteProduct(product);
		 return "redirect:showproduct";
		
	}
	
}
