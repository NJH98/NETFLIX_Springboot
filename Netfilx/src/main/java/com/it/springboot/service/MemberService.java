package com.it.springboot.service;

import com.it.springboot.daodto.UserlistDto;

public interface MemberService {
    void register(UserlistDto userlistDto) throws Exception;
    int emailCheck(String email) throws Exception;
    
}
