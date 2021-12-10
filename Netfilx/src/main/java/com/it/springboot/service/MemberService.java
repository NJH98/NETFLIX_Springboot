package com.it.springboot.service;

public interface MemberService {
    // void register(UserlistDto userlistDto) throws Exception;
    int emailCheck(String email) throws Exception;
    // void userdelete(UserlistDto dto) throws Exception;
    int getMenCount(String sx) throws Exception;

    int getWomenCount(String sx) throws Exception;
}
