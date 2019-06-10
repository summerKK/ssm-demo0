package com.summer.ssm.service.impl;

import com.summer.ssm.dao.ProductDao;
import com.summer.ssm.domain.Product;
import com.summer.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {

    @Autowired
    private ProductDao productDao;

    public List<Product> findAll() throws Exception {
        return productDao.findAll();
    }
}
