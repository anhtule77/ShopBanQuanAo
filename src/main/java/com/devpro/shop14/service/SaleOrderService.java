package com.devpro.shop14.service;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.Saleorder;

@Service
public class SaleOrderService extends BaseService<Saleorder>{

	@Override
	protected Class<Saleorder> clazz() {
		// TODO Auto-generated method stub
		return Saleorder.class;
	}

}
