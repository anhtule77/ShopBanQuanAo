package com.devpro.shop14.controller.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.entities.Saleorder;
import com.devpro.shop14.service.SaleOrderService;


@Controller
public class ManagerSaleOrderController extends BaseController{

	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/admin/saleorder" }, method = RequestMethod.GET) // -> action
	public String home(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		//can lay danh sach categories tu db va tra ve view qua model
		List<Saleorder> saleorder = saleOrderService.findAll();
		
		//day xuong view de xu ly
		model.addAttribute("saleorder",saleorder);
		
		// cac views se duoc dat tai thu muc: 
		return "manager/saleorder"; // -> duong dan toi VIEW.
	}
	@RequestMapping(value = { "/admin/del-saleorder/{id}" }, method = RequestMethod.GET) // -> action
	public String delSaleorder(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("id") int id)
			throws IOException {
		
		saleOrderService.deleteById(id);
		
		// cac views se duoc dat tai thu muc: 
		return "redirect:/admin/saleorder"; // -> duong dan toi VIEW.
	}
}