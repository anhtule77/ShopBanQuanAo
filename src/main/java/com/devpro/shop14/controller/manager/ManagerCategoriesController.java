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
import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.service.CategoriesService;

@Controller
public class ManagerCategoriesController extends BaseController{
	
	//inject một bean(service) vào trong một bean khác(controller)
	@Autowired 
	private CategoriesService categoryService;
	 
	@RequestMapping(value = { "/admin/categories" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		//lay danh sach category tu db  và trả ve view qua model
		List<Categories> categories = categoryService.findAllActive();
		
		//day xuong view de xu ly
		model.addAttribute("categories",categories);
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/categories";
		
	}
		
}
