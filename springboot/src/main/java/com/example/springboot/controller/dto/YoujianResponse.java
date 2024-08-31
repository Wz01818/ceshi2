package com.example.springboot.controller.dto;

import lombok.Data;

@Data
public class YoujianResponse {
    private Integer id;
    private String title;
    private String receiveemail;
    private String content;
    private String createtime;
    private String sendemail;
    private Integer userid;
}