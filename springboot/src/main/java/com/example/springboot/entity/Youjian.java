package com.example.springboot.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("youjian")
public class Youjian {
    @TableId
    private Integer id;
    private Integer userid;
    private String title;
    private String receiveemail;
    private String content;
    private String createtime;
    private String sendemail;
}