package com.summer.ssm.service.impl;

import com.summer.ssm.dao.OrderDao;
import com.summer.ssm.domain.Order;
import com.summer.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> findAll() throws Exception {
        return orderDao.findAll();
    }
}
