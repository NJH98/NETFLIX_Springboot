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
   public List<UserlistDto> listDao();
   public int userdelete(@Param("_email") String email);
   //public int getWomenCount();
   //public int getMenCount();

   int getMenCount(String sx) throws Exception;
   int getWomenCount(String sx) throws Exception;
}


