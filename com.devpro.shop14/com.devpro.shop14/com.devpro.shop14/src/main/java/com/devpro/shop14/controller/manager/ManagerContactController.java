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
import com.devpro.shop14.entities.Contact;
import com.devpro.shop14.service.ContactService;

@Controller
public class ManagerContactController extends BaseController{
	@Autowired 
	private ContactService contactService;
	 
	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		List<Contact> contact = contactService.findAll();
		
		model.addAttribute("contact",contact);
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/contact";
		
	}
}
