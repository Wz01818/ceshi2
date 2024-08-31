package com.example.springboot.service;

import com.example.springboot.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @wz
 * @since 2024-08-22
 */
public interface IMenuService extends IService<Menu> {

    List<Menu> findMenus(String name);
}
