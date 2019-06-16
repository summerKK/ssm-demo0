package com.summer.ssm.dao;

import com.summer.ssm.domain.Traveller;

import java.util.List;

public interface TravllerDao {

    List<Traveller> findByOrderId(int orderId) throws Exception;
}
