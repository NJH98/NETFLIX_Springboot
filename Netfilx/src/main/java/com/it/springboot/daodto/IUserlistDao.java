package com.it.springboot.daodto;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface IUserlistDao{
   public List<UserlistDto> findUser(String email);
   public void save(UserlistDto dto);
   public List<UserlistDto> selectUser(UserlistDto userlistDto);
   void register(UserlistDto userlistDto) throws Exception;
   int emailCheck(String email) throws Exception;
   }
