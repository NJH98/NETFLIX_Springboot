package com.it.springboot.service.impl;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    
    @Autowired
    private IUserlistDao iUserlistDao;

    @Autowired
    public MemberServiceImpl(IUserlistDao iUserlistDao){
        this.iUserlistDao = iUserlistDao;
    }


    @Override
    public int emailCheck(String email) throws Exception {
        int result = iUserlistDao.emailCheck(email);
        return result;
    }

    // @Override
    // public void register(UserlistDto userlistDto) throws Exception {
    //     iUserlistDao.register(userlistDto);
        
    // }
}
