package com.summer.ssm.dao;

import com.summer.ssm.domain.Product;

import java.util.List;

public interface ProductDao {

    public List<Product> findAll() throws Exception;

    void save(Product product) throws Exception;
}
