package com.devpro.shop14.controller.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.entities.Product;
import com.devpro.shop14.service.CategoriesService;
import com.devpro.shop14.service.ProductService;

@Controller
public class ManagerAddProductController extends BaseController{
	@Autowired 
	private CategoriesService categoryService;
	@Autowired 
	private ProductService productService;
	/*
	 * @RequestMapping(value = { "/manager/list-product" }, method =
	 * RequestMethod.GET) public String searchProduct(final ModelMap model, final
	 * HttpServletRequest request, final HttpServletResponse response) throws
	 * IOException {
	 * 
	 * 
	 * String keyword = request.getParameter("keyword"); ProductSearch ps = new
	 * ProductSearch(); ps.setKeyword(keyword); ps.setPage(getCurrentPage(request));
	 * 
	 * model.addAttribute("product", productService.search(ps));
	 * 
	 * //các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views return
	 * "manager/product"; }
	 */
	
	
	  @RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.GET)
	  public String product(final ModelMap model, final HttpServletRequest request,
	  final HttpServletResponse response) throws IOException { List<Categories>
	  categories = categoryService.findAll();
	 
	 model.addAttribute("categories",categories);
	  
	 model.addAttribute("product",new Product());
	 
	 //các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views return
	 return "manager/add-product"; }
	 
	
	@RequestMapping(value = { "/admin/edit-product/{productSeo}" }, method = RequestMethod.GET) // -> action
	public String editProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productSeo") String productSeo)
			throws IOException {
		
		//lay san pham  tu databases
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeo(productSeo);
		Product product = productService.search(productSearch).get(0);
		
		
		//lay danh sach category
		List<Categories> category = categoryService.findAllActive();
		//day xuong view de xu ly
		model.addAttribute("categories",category);
		
		model.addAttribute("product",product);
		
		// cac views se duoc dat tai thu muc: 
		return "manager/add-product"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.POST)
	public String addProduct(final ModelMap model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("product")Product product,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures)
			throws Exception {
		
		
		// kiểm tra xem action là thêm mới hay chỉnh sửa
		if(product.getId()==null || product.getId()<=0) {
			productService.save(product, productAvatar, productPictures);
		}else {
			productService.edit(product, productAvatar, productPictures);
		}
		
		//các view se duoc dat tại thư mục \src\main\webapp\WEB-INF\views
		return "manager/add-product";
		
	}
	
	@RequestMapping(value = { "/admin/del-product/{id}" }, method = RequestMethod.GET) // -> action
	public String delProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("id") int id)
			throws IOException {
		
		productService.deleteById(id);
		
		// cac views se duoc dat tai thu muc: 
		return "redirect:/admin/product"; // -> duong dan toi VIEW.
	}
}
