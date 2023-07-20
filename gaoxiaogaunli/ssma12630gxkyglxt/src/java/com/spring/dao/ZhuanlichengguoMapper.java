package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhuanlichengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhuanlichengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhuanlichengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhuanlichengguo pojo);
    // 查询一行数据
    Zhuanlichengguo find(Zhuanlichengguo pojo);
    // 插入数据
    int insert(Zhuanlichengguo pojo);
    // 更新数据
    int update(Zhuanlichengguo pojo);
}
