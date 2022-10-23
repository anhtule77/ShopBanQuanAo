package com.devpro.shop14.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.SimpleContact;

@Controller
public class ContactController {
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		model.addAttribute("contact",new SimpleContact());
		return "user/contact";
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String savecontact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("contact")SimpleContact contact,
			@RequestParam("inputFile") MultipartFile[] inputFiles)
			throws IOException {
		
		String email = request.getParameter("txtEmail");
		String emailFromSpringForm = contact.getTxtEmail();
		model.addAttribute("thongbao","cam on ban "+ emailFromSpringForm +" da gui lien he!");
		
		if(inputFiles.length > 0) {
			for(MultipartFile inputFile : inputFiles) {
				inputFile.transferTo(new File("D:/code/com.devpro.shop14/upload/"+inputFile.getOriginalFilename()));
			}
		}
		
		return "user/contact";
	}
	
	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contactAjax(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 
						final @RequestBody SimpleContact contact) {
		
		System.out.println("Contact[Email]: " + contact.getTxtEmail());
		System.out.println("Contact[Content]: " + contact.getTxtContent());

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		// 200 <-> thanh cong
		// 500 <-> khong thanh cong 
		jsonResult.put("code", 200);
		jsonResult.put("message", contact);
		return ResponseEntity.ok(jsonResult);
	}
}
