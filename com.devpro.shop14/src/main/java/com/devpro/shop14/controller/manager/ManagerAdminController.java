package com.devpro.shop14.controller.manager;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ManagerAdminController{

	@RequestMapping(value = { "/admin/index" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/index";
		
	}
}
