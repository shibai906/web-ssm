package com.gradu.pro.service.imp;

import com.gradu.pro.dao.UserDao;
import com.gradu.pro.model.User;
import com.gradu.pro.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImp implements UserService {

    @Resource
    private UserDao userDao ;

    public User getById(int id) {
        return userDao.selectUser(id);
    }
}
