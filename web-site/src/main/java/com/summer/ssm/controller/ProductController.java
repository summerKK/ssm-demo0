package com.summer.ssm.controller;

import com.summer.ssm.domain.Product;
import com.summer.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IProductService productService;

    @RequestMapping("/list.go")
    public ModelAndView list(ModelAndView modelAndView) throws Exception {
        List<Product> products = productService.findAll();
        modelAndView.addObject("productList", products);
        modelAndView.setViewName("product-list");
        return modelAndView;
    }

    @RequestMapping("/save.go")
    public String save(Product product) throws Exception {
        productService.save(product);
        return "redirect:list.go";
    }
}
