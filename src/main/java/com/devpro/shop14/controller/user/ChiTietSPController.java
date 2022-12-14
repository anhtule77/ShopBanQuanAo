package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.entities.Product;
import com.devpro.shop14.service.ProductService;

@Controller
public class ChiTietSPController extends BaseController{
	@Autowired 
	private ProductService productService;
	
	@RequestMapping(value = {"/ChiTietSP"}, method = RequestMethod.GET)
	public String home(final ModelMap model,
			final HttpServletRequest request, 
			final HttpServletResponse response)
	throws IOException{
		List<Product> products = productService.findAll();
//		Product p  = new Product();
//		int qtt = p.getQuantity();
//		if(qtt <= 2 && qtt > 0) {
//			System.out.println("Sắp hết hàng"); 
//		}else if(qtt == 0) {
//			System.out.println("Hết hàng");
//		}else {
//			System.out.println("Còn hàng");
//		}
//		
//		model.addAttribute("qtt",qtt);
		model.addAttribute("products",products);
		
		return "user/ChiTietSP";
	}
}
