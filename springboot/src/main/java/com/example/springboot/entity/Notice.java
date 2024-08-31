package com.example.springboot.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import cn.hutool.core.annotation.Alias;

/**
 * <p>
 * 
 * </p>
 *
 * @wz
 * @since 2024-08-22
 */
@Getter
@Setter
@ApiModel(value = "Notice对象", description = "")
public class Notice implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty("标题")
    @Alias("标题")
    private String name;

    @ApiModelProperty("内容")
    @Alias("内容")
    private String content;

    @ApiModelProperty("封面")
    @Alias("封面")
    private String img;

    @ApiModelProperty("1-简单的公告，2富文本")
    @Alias("1-简单的公告，2富文本")
    private Integer type;


}
