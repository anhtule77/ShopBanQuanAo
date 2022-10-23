package com.devpro.shop14.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	
	public int getCurrentPage(HttpServletRequest request) {
		try {
			return Integer.parseInt(request.getParameter("page"))-1;
		} catch (Exception e) {
			// TODO: handle exception
			return -1;
		}
		
	}
	@ModelAttribute("projectTitle")
	public String getTitle(){
		return "javaWeb 14";
	}
}
