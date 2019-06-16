package com.summer.ssm.dao;

import com.summer.ssm.domain.Order;

import java.util.List;

public interface OrderDao {

    List<Order> findAll() throws Exception;

    Order findById(int id) throws Exception;
}
