package com.musicstore.controller;

import com.musicstore.dao.ProductDao;
import com.musicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by user on 02-Mar-17.
 */

@Controller
public class HomeController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> productList = productDao.getAllProducts();
        model.addAttribute("products", productList);
        return "productList";
    }


    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException{
        System.out.println("dddd");
        Product product = productDao.getProductById(productId);
        model.addAttribute("product", product);
        return "viewProduct";
    }


    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }
}
