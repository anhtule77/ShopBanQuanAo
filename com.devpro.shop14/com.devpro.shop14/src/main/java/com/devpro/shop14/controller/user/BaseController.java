package com.devpro.shop14.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.entities.User;

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
	
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			isLogined = true;
		}
		return isLogined;
	}
	
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (User) userLogined;
		
		return null;
	}
	
	@ModelAttribute("projectTitle")
	public String getTitle(){
		return "Lap trinh javaWeb";
	}
}
