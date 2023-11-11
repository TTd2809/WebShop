package poly.estore.api;

import java.io.File;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import poly.estore.entity.Product;
import poly.estore.service.ProductService;
import poly.estore.service.UploadService;

@CrossOrigin("*")
@RestController
public class ProductAPI {
	@Autowired
	ProductService productService;
	
	@Autowired
	UploadService uploadService;
	
	@GetMapping("/api/products")
	public List<Product> getAll(){
		return productService.findAll();
	}
	@GetMapping("/api/products/{id}")
	public Product getOne(@PathVariable("id") Integer id){
		return productService.findById(id);
	}
	@PostMapping("/api/products")
	public Product create(@RequestBody Product product){
		productService.create(product);
		return product;
	}
	@PutMapping("/api/products/{id}")
	public Product update(@RequestBody Product product, 
			@PathVariable("id") Integer id){
		if(productService.existedById(id)) {
			productService.update(product);
		} else {
			throw new RuntimeException();
		}
		return product;
	}
	@DeleteMapping("/api/products/{id}")
	public void delete(@PathVariable("id") Integer id){
		productService.deleteById(id);
	}
	
	@PostMapping("/api/upload/{folder}")
	public JsonNode upload (@PathParam("file") MultipartFile file,
			@PathVariable("folder") String folder) {
		
		 File saveFile = uploadService.save(file,folder);
		 ObjectMapper mapper = new ObjectMapper();
		 ObjectNode node = mapper.createObjectNode();
		 node.put("name", saveFile.getName());
		 node.put("size", saveFile.length());
		 return node;
	}
}