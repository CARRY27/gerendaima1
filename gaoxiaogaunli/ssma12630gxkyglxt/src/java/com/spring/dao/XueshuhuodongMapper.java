package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XueshuhuodongMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Xueshuhuodong> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xueshuhuodong> selectPage(SelectExample example);
    // 删除数据
    int delete(Xueshuhuodong pojo);
    // 查询一行数据
    Xueshuhuodong find(Xueshuhuodong pojo);
    // 插入数据
    int insert(Xueshuhuodong pojo);
    // 更新数据
    int update(Xueshuhuodong pojo);
}
