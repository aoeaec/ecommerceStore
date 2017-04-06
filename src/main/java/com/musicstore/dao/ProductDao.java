package com.musicstore.dao;

import com.musicstore.model.Product;

import java.util.List;

/**
 * Created by user on 04-Apr-17.
 */
public interface ProductDao {

    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProduct(String id);
}
