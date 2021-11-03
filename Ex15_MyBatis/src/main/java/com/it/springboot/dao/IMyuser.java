package com.it.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.it.springboot.dto.MyuserDTO;

//DAO 역할

@Mapper
public interface IMyuser {
   public List<MyuserDTO> userList(); //메서드(기능) 이름
}
