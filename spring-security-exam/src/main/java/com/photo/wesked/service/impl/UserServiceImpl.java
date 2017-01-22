package com.photo.wesked.service.impl;

import com.photo.wesked.entity.User;
import com.photo.wesked.service.UserService;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Override
    public User getUser(String login) {
        User user = new User();
        user.setLogin(login);
        user.setPassword("3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d");

        return user;
    }

}
