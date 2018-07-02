package com.niit.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.ShopBackEnd.Dao.UserDAO;
import com.niit.ShopBackEnd.Model.UserDetail;

@Controller
public class RegisterController {
	@Autowired
	UserDAO userDetailDAO;
	
	@RequestMapping("/Register")
	public String showUserDetail(Model m)
	{
		System.out.println("---UserDetail Page Displaying-----");
		return "Register";
		
		
	}
	
	@RequestMapping(value="InsertUserDetail",method=RequestMethod.POST)
	public String insertUserDetail(@ModelAttribute("userdetail") UserDetail userdetail,Model m)
	{
		System.out.println("---Add UserDetail Starting-----");
		userdetail.setRole("ROLE_USER");
        userdetail.setEnabled(true);
        userDetailDAO.updateDetail(userdetail);
		
		List<UserDetail> userdetaillist=userDetailDAO.listUser();
		m.addAttribute("userdetail",userdetaillist);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---UserDetail Added----");
		return "Register2";
	}

}
