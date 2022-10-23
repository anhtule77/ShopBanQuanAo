package com.devpro.shop14.service;

import java.io.File;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.Constans;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.entities.Product_images;



@Service
public class ProductService extends BaseService<Product> implements Constans{

	@Override
	protected Class<Product> clazz() {
		// TODO Auto-generated method stub
		return Product.class;
	}
	
	
	// tất cả các services cần thêm hàm search.
		public List<Product> search(ProductSearch searchModel) {

			// khởi tạo câu lệnh
			String sql = "SELECT * FROM tbl_products p WHERE 1=1";

			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.title like '%" + searchModel.getKeyword() + "%'" + " or p.detail_description like '%"
						+ searchModel.getKeyword() + "%'" + " or p.short_description like '%"
						+ searchModel.getKeyword() + "%')";
			}
			
			// chi lay san pham chua xoa
//			sql += " and p.status=1 ";

			return executeNativeSql(sql,searchModel.getPage());
		}
		
		
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;

		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;

		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	@Transactional
	public Product edit(Product product, MultipartFile productAvatar, MultipartFile[] productPictures) throws Exception{
		
		//lấy thông tin sản phẩm trong db
		Product  productOnDb = super.getById(product.getId());
		
		//có đẩy avatar lên không??
		if(!isEmptyUploadFile(productAvatar)) {
			//xóa avatar trong folder
			new File(UPLOAD_FOLDER_ROOT + productOnDb.getAvatar()).delete();
			
			//add avatar mới
			productAvatar.transferTo(new File(UPLOAD_FOLDER_ROOT + "product/avatar/" + productAvatar.getOriginalFilename()));
			product.setAvatar("product/avatar/"+productAvatar.getOriginalFilename());
		}else {
			//sử dụng lại avatar cũ 
			product.setAvatar(productOnDb.getAvatar());
		}
		
	
		//có đẩy picture lên không??
			if(!isEmptyUploadFile(productPictures)) {
				for(MultipartFile pic : productPictures) {
				pic.transferTo(new File(UPLOAD_FOLDER_ROOT+"product/picture/"+pic.getOriginalFilename()));
					
				Product_images pi = new Product_images();
				pi.setPath("product/picture/"+pic.getOriginalFilename());
				pi.setTitle(pic.getOriginalFilename());
					
				product.addRelationProduct_images(pi);
				}
			}	
		return super.saveOrUpdate(product);
	}
	
	@Transactional
	public Product save(Product product, MultipartFile productAvatar, MultipartFile[] productPictures) throws Exception{
		
		//có đẩy avatar lên không??
		if(!isEmptyUploadFile(productAvatar)) {
			String pathToFile=UPLOAD_FOLDER_ROOT+"product/avatar/"+productAvatar.getOriginalFilename();
			productAvatar.transferTo(new File(pathToFile));
			product.setAvatar("product/avatar/"+productAvatar.getOriginalFilename());
		}
		
		
		//có đẩy picture lên không??
		if(!isEmptyUploadFile(productPictures)) {
			for(MultipartFile pic : productPictures) {
			pic.transferTo(new File(UPLOAD_FOLDER_ROOT+"product/picture/"+pic.getOriginalFilename()));
			
			Product_images pi = new Product_images();
			pi.setPath("product/picture/"+pic.getOriginalFilename());
			pi.setTitle(pic.getOriginalFilename());
			
			product.addRelationProduct_images(pi);
			}
		}
		return super.saveOrUpdate(product);
	}
}
