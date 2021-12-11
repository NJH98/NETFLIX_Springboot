package com.it.springboot.service.impl;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private IUserlistDao iUserlistDao;

    @Autowired
    public MemberServiceImpl(IUserlistDao iUserlistDao) {
        this.iUserlistDao = iUserlistDao;
    }

    @Override
    public int emailCheck(String email) throws Exception {
        int result = iUserlistDao.emailCheck(email);
        return result;
    }

    // chart
    @Override
    public int getMenCount(String sx) throws Exception {
        int result = iUserlistDao.getMenCount(sx);
        return result;
    }

    @Override
    public int getWomenCount(String sx) throws Exception {
        int result = iUserlistDao.getWomenCount(sx);
        return result;
    }

    // contents
    @Override
    public int getActionCount(String category) throws Exception {
        int result = iUserlistDao.getActionCount(category);
        return result;
    }

    @Override
    public int getHorrorCount(String category) throws Exception {
        int result = iUserlistDao.getHorrorCount(category);
        return result;
    }

    @Override
    public int getRomenceCount(String category) throws Exception {
        int result = iUserlistDao.getRomenceCount(category);
        return result;
    }

    @Override
    public int getSfCount(String category) throws Exception {
        int result = iUserlistDao.getSfCount(category);
        return result;
    }

    @Override
    public int getComicCount(String category) throws Exception {
        int result = iUserlistDao.getComicCount(category);
        return result;
    }

}
