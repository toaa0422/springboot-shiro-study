package com.baizhi.springboot_jsp_shiro;

import com.baizhi.springboot_jsp_shiro.entity.User;
import com.baizhi.springboot_jsp_shiro.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringbootJspShiroApplicationTests {

    @Test
    void contextLoads() {
    }
    @Autowired
    UserService userService;

    @Test
    public void test01() {

        User user = new User();
        user.setUsername("yeyouruiwen");
        user.setPassword("yeyouruiwen");
        user.setSalt("yeyouruiwen");
        userService.register(user);

    }
}
