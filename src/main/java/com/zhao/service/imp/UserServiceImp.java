package com.zhao.service.imp;

import com.zhao.dao.UserDao;
import com.zhao.model.User;
import com.zhao.service.UserService;
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
