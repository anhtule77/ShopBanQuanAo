package com.devpro.shop14.service;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.Contact;

@Service
public class ContactService extends BaseService<Contact>{

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}

}
