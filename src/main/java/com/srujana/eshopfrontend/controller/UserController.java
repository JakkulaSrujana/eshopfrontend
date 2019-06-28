package com.srujana.eshopfrontend.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.srujana.eshopbackend.daoImpl.UserDaoImpl;
import com.srujana.eshopbackend.model.User;

@Controller
public class UserController {

	@Autowired
	UserDaoImpl ud;
	
	
	@RequestMapping("/reg")
	public ModelAndView goToForm()
	{
		User u=new User();
		ModelAndView mv=new ModelAndView("register");
		mv.addObject("user", u);
		return mv;
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user")User ur)
	{
		
		ModelAndView mv=new ModelAndView("userHome");
		ud.addUser(ur);
		
		return mv;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView goToLogin(@ModelAttribute("user") User u)
	{
		User u2=new User();
		ModelAndView mv=new ModelAndView("login");
		
		
		return mv;
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView checkLogin(@ModelAttribute("user") User u)
	{
		ModelAndView mv=new ModelAndView("login");
		boolean result=ud.checkLogin(u);
        if(result==true)
         {
           ModelAndView modelAndView=new ModelAndView("loginsuccess");
            return modelAndView;
          }
         else {
          ModelAndView modelAndView=new ModelAndView("login");
       return modelAndView;
   }
		
		
		
	}
	@RequestMapping("/loginerror")
	public ModelAndView goToLogin()
	{
		ModelAndView mv=new ModelAndView("loginerror");
		mv.addObject("msg", "Invalid User");
		return mv;
	}
	@RequestMapping("/afterlogin")
	public String afterLogin(HttpSession session)
	{
		String page="";
		   //get Username for future purpose
		   //get context object
		   SecurityContext context=SecurityContextHolder.getContext();

		   //get authentication object
		   Authentication authentication=context.getAuthentication();

		String userId=    authentication.getName();
		session.setAttribute("uname", userId);
		System.out.println("login username "+userId);
		   //get role(authority) and go to userhome/adminhome
		    Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)authentication.getAuthorities();

		    for (GrantedAuthority grantedAuthority : authorities) {

		        System.out.println(grantedAuthority);

		        String role=grantedAuthority.getAuthority();

		        if(role.equals("ROLE_USER"))
		        {
		            page="userHeader";

		        }
		        else
		        if(role.equals("ROLE_ADMIN"))
		        {
		            page="adminHeader";
		        }

		   }//for
		   return page;
	}
}
