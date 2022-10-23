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
public class DressController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"/Dress"}, method = RequestMethod.GET)
	public String dress(final ModelMap model,
			final HttpServletRequest request, 
			final HttpServletResponse response)
	throws IOException{
		List<Product> productdress = productService.findbydress();
		model.addAttribute("productdress", productdress);
		return "user/Dress";
	}
}