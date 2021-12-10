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

<<<<<<< HEAD

=======
   //public int getWomenCount();
   //public int getMenCount();
   
>>>>>>> 12cb5754b2b428ad05be37bb869ef3949bb26a0e
   int getMenCount(String sx) throws Exception;
   int getWomenCount(String sx) throws Exception;

   public int contentdelete(@Param("_title") String title);
   public int getWomenCount();
   public int getMenCount();
}


