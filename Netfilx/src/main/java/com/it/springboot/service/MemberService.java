package com.it.springboot.service;

public interface MemberService {
    // void register(UserlistDto userlistDto) throws Exception;
    int emailCheck(String email) throws Exception;
    
}
