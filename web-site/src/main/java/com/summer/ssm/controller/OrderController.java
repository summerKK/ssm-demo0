package com.summer.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.summer.ssm.domain.Order;
import com.summer.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    @RequestMapping("/list.go")
    public ModelAndView list(ModelAndView modelAndView, @RequestParam(name = "page", required = true, defaultValue = "1") int page, @RequestParam(name = "size", required = true, defaultValue = "4") int size)
            throws Exception {
        List<Order> orders = orderService.findAll(page, size);
        PageInfo<Order> pageInfo = new PageInfo<Order>(orders);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("order-list");
        return modelAndView;
    }
}
