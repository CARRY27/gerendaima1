package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface JingfeiMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Jingfei> selectAll(SelectExample example);

    // 按分页查询数据
    List<Jingfei> selectPage(SelectExample example);
    // 删除数据
    int delete(Jingfei pojo);
    // 查询一行数据
    Jingfei find(Jingfei pojo);
    // 插入数据
    int insert(Jingfei pojo);
    // 更新数据
    int update(Jingfei pojo);
}
