package com.example.springboot.controller.dto;

import lombok.Data;

@Data
public class YoujianRequest {
    private Integer userid;
    private String action;
    private String title;
    private String receiveemail;
    private String content;
    private String createtime;
    private String sendemail;
}