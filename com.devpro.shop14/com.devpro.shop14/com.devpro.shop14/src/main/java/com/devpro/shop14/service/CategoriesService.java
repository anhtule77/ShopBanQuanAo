package com.devpro.shop14.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.entities.Product;

@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}
	
	public List<Categories>findAllActive(){
		String sql ="select * from tbl_category where status = 1";
		return executeNativeSql(sql,-1);
	}
	
	@Transactional
	public Categories edit(Categories categories) throws Exception{
		//lấy thông tin sản phẩm trong db
		Categories  categoriesOnDb = super.getById(categories.getId());
		
		return super.saveOrUpdate(categories);
	}
	
	@Transactional
	public Categories save(Categories categories) throws Exception{
		
		return super.saveOrUpdate(categories);
	}
}
