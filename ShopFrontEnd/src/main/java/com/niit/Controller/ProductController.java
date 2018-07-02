package com.niit.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.ShopBackEnd.Dao.CategoryDAO;
import com.niit.ShopBackEnd.Dao.ProductDAO;
import com.niit.ShopBackEnd.Model.Category;
import com.niit.ShopBackEnd.Model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/Product")
	public String showProductPage(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		
		m.addAttribute("categoryList", this.getCategories());
		
		return "Product";
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product,@RequestParam("pimage") MultipartFile productImage,Model m)
	{
		productDAO.addProduct(product);
		
		Product product1=new Product(); 
		m.addAttribute(product1); 
		
		
		
		String path ="C:\\Users\\AJITH\\eclipse-workspace\\ShopFrontEnd\\src\\main\\webapp\\resources\\images\\";
		path=path+String.valueOf(product.getProductId())+".jpg";
		File filepath=new File(path);
		
		if(!productImage.isEmpty())
		{
			try
			{
				byte[] buffer=productImage.getBytes();
				FileOutputStream fos=new FileOutputStream(filepath);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("errorInfo", "There is Exception:"+e.getMessage());
			}
		}
		else
		{
			m.addAttribute("errorInfo", "There is System Problem");
		}
		
		
		
		return "Product";
	}
	
	@RequestMapping(value="/ProductPage",method=RequestMethod.GET)
	public String displayProductPage(Model m)
	{
		List<Product> listProducts=productDAO.listProducts();
		m.addAttribute("listProducts", listProducts);
		
		return "ProductPage";
	}
	
	@RequestMapping(value="/ProductDesc/{productId}",method=RequestMethod.GET)
	public String displayProductDesc(@PathVariable("productId")int productId,Model m)
	{
		Product product=(Product)productDAO.getProduct(productId);
		m.addAttribute("ProductInfo", product);
		return "ProductDesc";
	}
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDAO.getCategories();
		
		LinkedHashMap<Integer,String> categoryList=new LinkedHashMap<Integer,String>();
		
		for(Category category:listCategories)
		{
			categoryList.put(category.getCategoryId(), category.getCategoryName());
		}
		
		return categoryList;
	}

}
