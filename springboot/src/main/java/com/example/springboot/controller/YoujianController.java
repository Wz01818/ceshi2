package com.example.springboot.controller;

import com.example.springboot.entity.Youjian;
import com.example.springboot.service.IYoujianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/youjian")
public class YoujianController {

    @Autowired
    private IYoujianService youjianService;

    @GetMapping
    public List<Youjian> getAllYoujian() {
        return youjianService.getAllYoujian();
    }

    @PostMapping
    public void saveYoujian(@RequestBody Youjian youjian) {
        youjianService.saveYoujian(youjian);
    }

    @GetMapping("/pending/{userId}")
    public List<Youjian> getPendingYoujians(@PathVariable Integer userId) {
        return youjianService.getPendingYoujians(userId);
    }
}