package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author： ygl
 * @date： 2018/4/18
 * @Description：
 */
@RestController
public class HelloController {

    @GetMapping("/index")
    public String index(){
        return "hello world! -- created by maven!";
    }
}
