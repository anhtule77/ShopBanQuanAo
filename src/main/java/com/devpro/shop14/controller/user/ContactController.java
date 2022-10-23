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
		//tầng view
		model.addAttribute("contact",new SimpleContact());// kiểu thực tế là SimpleContact
		return "user/contact";
	}
	
	/*
	 * @ModelAttribute("contact") giá trị contact phải trùng với modelAttribute trong spring form 
	 */
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)//-->action
	public String savecontact(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("contact")SimpleContact contact,
			@RequestParam("inputFile") MultipartFile[] inputFiles)
	//Request Param để hứng file từ action
			throws IOException {
		//lấy thông tin ng dùng đẩy lên
		String email = request.getParameter("txtEmail");
		String emailFromSpringForm = contact.getTxtEmail();
		//gửi về thông báo
		model.addAttribute("thongbao","cam on ban "+ emailFromSpringForm +" da gui lien he!");
		
		//save file
		if(inputFiles.length > 0) {
			for(MultipartFile inputFile : inputFiles) {
				inputFile.transferTo(new File("C:\\Users\\Asus\\Downloads\\com.devpro.shop14\\upload\\"+inputFile.getOriginalFilename()));
			 // Lưu file trên server
			}
		}
		
		return "user/contact";
	}
	
	// định nghĩa cho ajax
	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)// action của ajax
	public ResponseEntity<Map<String, Object>> contactAjax(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 
						final @RequestBody SimpleContact contact) {
		
		System.out.println("Contact[Email]: " + contact.getTxtEmail());

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		// 200 <-> thanh cong
		// 500 <-> khong thanh cong 
		jsonResult.put("code", 200);
		jsonResult.put("message", contact);
		return ResponseEntity.ok(jsonResult);
	}
}
