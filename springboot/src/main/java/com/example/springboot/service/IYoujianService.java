package com.example.springboot.service;

import com.example.springboot.entity.Youjian;

import java.util.List;

public interface IYoujianService {
    List<Youjian> getAllYoujian();
    void saveYoujian(Youjian youjian);
    List<Youjian> getPendingYoujians(Integer userId);
}