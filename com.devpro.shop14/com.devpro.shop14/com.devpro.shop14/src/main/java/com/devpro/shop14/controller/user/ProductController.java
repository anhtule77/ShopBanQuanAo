package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.entities.Product;
import com.devpro.shop14.service.ProductService;

@Controller
public class ProductController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"/SanPham"}, method = RequestMethod.GET)
	public String sanpham(final ModelMap model,
			final HttpServletRequest request, 
			final HttpServletResponse response)
	throws IOException{
		List<Product> products = productService.findAll();
		
		model.addAttribute("products",products);
		
		return "user/SanPham";
	}
	
	@RequestMapping(value = { "/ChiTietSP/{productId}" }, method = RequestMethod.GET) // -> action
	public String delProduct(final ModelMap model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productId") int productId)
			throws IOException {
		
		Product products = productService.getById(productId);
		model.addAttribute("products" ,products);
		// cac views se duoc dat tai thu muc: 
		return "user/ChiTietSP"; // -> duong dan toi VIEW.
	}
}
