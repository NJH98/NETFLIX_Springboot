package com.it.springboot.daodto;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface IUserlistDao {
   public List<UserlistDto> findUser(String email);

   public void save(UserlistDto dto);

   public List<UserlistDto> selectUser(UserlistDto userlistDto);

   int emailCheck(String email) throws Exception;

   public List<ContentDto> content();

   public List<UserlistDto> listDao();

   public int userdelete(@Param("_email") String email);

   // chart
   int getMenCount(String sx) throws Exception;

   int getWomenCount(String sx) throws Exception;

   public int contentdelete(@Param("_title") String title);

   // contents
   int getActionCount(String category) throws Exception;

   int getHorrorCount(String category) throws Exception;

   int getRomenceCount(String category) throws Exception;

   int getSfCount(String category) throws Exception;

   int getComicCount(String category) throws Exception;
}
