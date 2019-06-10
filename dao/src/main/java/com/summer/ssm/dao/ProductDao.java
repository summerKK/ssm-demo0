package com.summer.ssm.dao;

import java.util.List;

import com.summer.ssm.domain.Product;

public interface ProductDao {

    public List<Product> findAll() throws Exception;
}
