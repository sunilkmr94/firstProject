package com.niit.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShopBackEnd.Dao.CartDAO;
import com.niit.ShopBackEnd.Dao.UserDAO;
import com.niit.ShopBackEnd.Model.UserDetail;

@Controller
public class LoginController {
	@Autowired
	UserDAO userDAO;
		
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	HttpSession httpSession;
	
	@PostMapping(value="/validate")
	public String userhomepage(@RequestParam("username") String username,@RequestParam("password") String password)
	{
		ModelAndView mv = new ModelAndView("userhome");
		
		UserDetail user= userDAO.validate(username, password);
		
		if (user==null)
		{
			mv.addObject("errorMessage", "Invalid credentials, pls try agin.");
			return "index";
			
		}
		else
		{
			//valid credentials.
			//mv.addObject("welcomeMessage", "Welcome Mr./Ms " + user.getUsername());
			httpSession.setAttribute("user", user);
			//httpSession.setAttribute("welcomeMessage", "Welcome Mr. " + user.getUsername());
			httpSession.setAttribute("loggedInUserID", user.getUsername());
			//httpSession.setAttribute("isLoggedIn",true);
			String s = user.getRole();
			System.out.println(s);
			//fetch how many products are added to the cart.
			//this number add to httpSession.
			
						
			if(s.equals("ROLE_ADMIN"))
			{
				System.out.println("Admin page Opening");
				httpSession.setAttribute("isAdmin", true);
				return "AdminHome";
			}
			
			else
			{
				System.out.println("User page Opening");
				httpSession.setAttribute("is customer", true);
				return "UserHome";
			}
		}
		
	}
	
	@RequestMapping(value="/AdminHome")
	public String adminpage()
	{
		return "AdminHome";
	}
	@RequestMapping(value="/UserHome")
	public String userPage()
	{
		return "UserHome";
	}
	@RequestMapping(value="/Logout")
	public String showLogout()
	{
		return "Login";
	}
	
	/* @Autowired
	    ProductDAO productDAO;
	    
		@RequestMapping("/login_Success")
		public String loginProcess(HttpSession session,Model m)
		{
			System.out.println("-------Login Successful-----");
			String page=null;
			boolean loggedIn=true;
	       
			
			String username=SecurityContextHolder.getContext().getAuthentication().getName();
			session.setAttribute("username", username);
			session.setAttribute("loggedIn",loggedIn);
			
			
			Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
			
			for (GrantedAuthority role:authorities)
			{
				System.out.println("Role:"+role.getAuthority()+"User Name:"+username+"-----");
				System.out.println(role.getAuthority());
				if(role.getAuthority().equals("ROLE_ADMIN"))
				{
					page="AdminHome";
				}
				else
				{
					List<Product> prodlist = productDAO.listProducts();
					System.out.println(prodlist);
					m.addAttribute("prodlist",prodlist);
					page="ProductPage";
				}
			}
			return page;
		}
		@RequestMapping("/logout")
		public String logout(HttpServletRequest req,HttpServletResponse res )
		{
			req.getSession(false).invalidate();
			Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		       new	SecurityContextLogoutHandler().logout(req, res,auth);
		       req.getSession().setAttribute("loggedIn",false);   
			
			
			return "Login";
		}*/

}
