package com.it.springboot.daodto;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;


@Mapper
public interface IUserlistDao{
   public List<UserlistDto> findUser(String email);
   public void save(UserlistDto dto);
   public List<UserlistDto> selectUser(UserlistDto userlistDto);
   // void register(UserlistDto userlistDto) throws Exception;
   int emailCheck(String email) throws Exception;
   
   public List<UserlistDto> listDao();
<<<<<<< HEAD
   public int userdelete(@Param("_email") String email);

=======
   public int getWomenCount();
   public int getMenCount();
>>>>>>> f5ff60a59e464bd7788c84967310f104a7980ee2
}


