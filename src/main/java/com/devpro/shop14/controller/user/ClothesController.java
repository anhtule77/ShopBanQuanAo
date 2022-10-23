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
public class ClothesController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"/Clothes"}, method = RequestMethod.GET)
	public String clothes(final ModelMap model,
			final HttpServletRequest request, 
			final HttpServletResponse response)
	throws IOException{
		List<Product> productClothes = productService.findbyClothes();
		model.addAttribute("productClothes", productClothes);
		return "user/Clothes";
	}
}
