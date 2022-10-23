package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.TikiContact;

@Controller
public class TikiController {
	@RequestMapping(value = { "/tikiform" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		model.addAttribute("tikiform",new TikiContact());
		return "user/tikiform";
	}
	
	@RequestMapping(value = {"/tikiform" }, method = RequestMethod.POST)
	public String saveTikiform(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("tikiform")TikiContact tikiform)
			throws IOException {
		
		String email = request.getParameter("txtEmail");
		String emailFromSpringForm = tikiform.getTxtEmail();
		model.addAttribute("thongbao","cam on ban "+ emailFromSpringForm +" da gui lien he!");
		
		return "user/tikiform";
	}
	
	@RequestMapping(value = { "/tikiform-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contactAjax(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 
						final @RequestBody TikiContact tikiform) {
		
		System.out.println("Contact[mainsp]: " + tikiform.getTxtEmail());
		System.out.println("Contact[detailsp]: " + tikiform.getTxtdetailsp());
		System.out.println("Contact[Email]: " + tikiform.getTxtEmail());
		System.out.println("Contact[Phone]: " + tikiform.getTxtPhone());
		System.out.println("Contact[ID]: " + tikiform.getTxtID());
		System.out.println("Contact[Title]: " + tikiform.getTxtTitle());
		System.out.println("Contact[Content]: " + tikiform.getTxtContent());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		// 200 <-> thanh cong
		// 500 <-> khong thanh cong
		jsonResult.put("code", 200);
		jsonResult.put("message", tikiform);
		return ResponseEntity.ok(jsonResult);
	}
}
