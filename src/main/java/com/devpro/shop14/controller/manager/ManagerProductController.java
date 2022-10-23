package com.devpro.shop14.controller.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.service.ProductService;

@Controller
public class ManagerProductController extends BaseController{
	@Autowired 
	private ProductService productService;
	
	
	@RequestMapping(value = { "/admin/product" }, method = RequestMethod.GET)
	public String product(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		List<Product> products = productService.findAll();
		
		model.addAttribute("products",products);
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/product";
		
	}
	
	

	@RequestMapping(value = { "/admin/search-product" }, method = RequestMethod.GET)
	public String searchProduct(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		
		
		String keyword = request.getParameter("keyword");		
		ProductSearch ps = new ProductSearch();
		ps.setKeyword(keyword);
		ps.setPage(getCurrentPage(request));
		
		int pagePrev = ps.getPage();
		if(pagePrev <= 0) {
			pagePrev = 1;
		}
		
		List<Product> products = productService.search(ps);
		int pageNext = ps.getPage()+2;
		if(products.size() <= 1) {
			pageNext = pageNext-1;
		}
		
		model.addAttribute("pagePrev", pagePrev);
		model.addAttribute("pageNext", pageNext);
		model.addAttribute("products",products);
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/product";
	}
}
