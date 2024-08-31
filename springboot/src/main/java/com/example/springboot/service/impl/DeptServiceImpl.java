package com.example.springboot.service.impl;

import com.example.springboot.entity.Dept;
import com.example.springboot.mapper.DeptMapper;
import com.example.springboot.service.IDeptService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @wz
 * @since 2024-08-22
 */
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements IDeptService {

}
