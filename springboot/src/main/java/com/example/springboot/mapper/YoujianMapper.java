package com.example.springboot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.springboot.entity.Youjian;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface YoujianMapper extends BaseMapper<Youjian> {

    @Select("SELECT * FROM youjian WHERE userid = #{userId} AND status = 'pending'")
    List<Youjian> getPendingYoujiansByUserId(Integer userId);
}