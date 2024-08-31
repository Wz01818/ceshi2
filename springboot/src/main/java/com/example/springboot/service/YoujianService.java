package com.example.springboot.service;

import com.example.springboot.entity.Youjian;
import com.example.springboot.mapper.YoujianMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YoujianService implements IYoujianService {

    @Autowired
    private YoujianMapper youjianMapper;

    @Override
    public List<Youjian> getAllYoujian() {
        return youjianMapper.selectList(null);
    }

    @Override
    public void saveYoujian(Youjian youjian) {
        youjianMapper.insert(youjian);
    }

    @Override
    public List<Youjian> getPendingYoujians(Integer userId) {
        return youjianMapper.getPendingYoujiansByUserId(userId);
    }
}