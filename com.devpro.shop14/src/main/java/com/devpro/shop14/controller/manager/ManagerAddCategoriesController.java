package com.devpro.shop14.controller.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.service.CategoriesService;

@Controller
public class ManagerAddCategoriesController extends BaseController{
	@Autowired 
	private CategoriesService categoryService;
	 
	@RequestMapping(value = { "/admin/add-categories" }, method = RequestMethod.GET)
	public String category(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		List<Categories> categories = categoryService.findAll();
		
		model.addAttribute("categories",new Categories());
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/add-categories";
		
	}
	
	@RequestMapping(value = { "/admin/edit-categories/{categoriesId}" }, method = RequestMethod.GET) // -> action
	public String editCategories(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("categoriesId") int categoriesId)
			throws IOException {
		
		//lay san pham  tu databases
		Categories categories = categoryService.getById(categoriesId);
		
		//day xuong view de xu ly
		model.addAttribute("categories",categories);
		
		
		// cac views se duoc dat tai thu muc: 
		return "manager/add-categories"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/admin/add-categories" }, method = RequestMethod.POST)
	public String addCategories(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("categories")Categories categories)
			throws Exception {
		
		
		// kiểm tra xem action là thêm mới hay chỉnh sửa
		if(categories.getId()==null || categories.getId()<=0) {
			categoryService.save(categories);
		}else {
			categoryService.edit(categories);
		}
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/add-categories";
		
	}
}
