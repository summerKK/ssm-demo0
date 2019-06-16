package com.summer.ssm.service;

import com.summer.ssm.domain.Order;

import java.util.List;

public interface IOrderService {

    List<Order> findAll(int page, int size) throws Exception;

    Order findById(int id) throws Exception;
}
