package com.it.springboot.daodto;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUserlistDao {
   //회원이 맞는지 검사 
   public List<UserlistDto> findUser(String email);
   public void save(UserlistDto dto);
}
