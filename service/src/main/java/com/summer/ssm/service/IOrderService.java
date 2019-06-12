package com.summer.ssm.service;

import com.summer.ssm.domain.Order;

import java.util.List;

public interface IOrderService {

    List<Order> findAll() throws Exception;
}
