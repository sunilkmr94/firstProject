package com.niit.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping(value="/Login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping(value="/")
	public String showIndexPage()
	{
		return "index";
	}
	
	@RequestMapping(value="/index")
	public String showIndex()
	{
		return "index";
	}
	
	@RequestMapping(value="/ContactUs")
	public String showcontact()
	{
		return "ContactUs";
	}
	
	@RequestMapping(value="/Cart")
	public String showCartPage()
	{
		return "Cart";
	}
	
	@RequestMapping(value="/AboutUS")
	public String showabout()
	{
		return "AboutUS";
	}

}
