package com.it.springboot.service;

public interface MemberService {
    // void register(UserlistDto userlistDto) throws Exception;
    int emailCheck(String email) throws Exception;

    // chart;
    int getMenCount(String sx) throws Exception;

    int getWomenCount(String sx) throws Exception;

    // contents
    int getActionCount(String category) throws Exception;

    int getHorrorCount(String category) throws Exception;

    int getRomenceCount(String category) throws Exception;

    int getSfCount(String category) throws Exception;

    int getComicCount(String category) throws Exception;
}
