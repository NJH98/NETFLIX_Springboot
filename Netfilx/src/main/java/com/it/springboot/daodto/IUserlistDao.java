package com.it.springboot.daodto;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface IUserlistDao{
   public List<UserlistDto> findUser(String email);
   public void save(UserlistDto dto);
   public List<UserlistDto> selectUser(UserlistDto userlistDto);
   int emailCheck(String email) throws Exception;
   public List<ContentDto> content();
   public List<UserlistDto> listDao();
   public int userdelete(@Param("_email") String email);


   int getMenCount(String sx) throws Exception;
   int getWomenCount(String sx) throws Exception;

   public int contentdelete(@Param("_title") String title);
   public int getWomenCount();
   public int getMenCount();
}


