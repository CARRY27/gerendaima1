package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface KeyanrenyuanMapper {
    Keyanrenyuan login(Keyanrenyuan keyanrenyuan);

    Integer count(SelectExample map);
    // 查询全部数据
    List<Keyanrenyuan> selectAll(SelectExample example);

    // 按分页查询数据
    List<Keyanrenyuan> selectPage(SelectExample example);
    // 删除数据
    int delete(Keyanrenyuan pojo);
    // 查询一行数据
    Keyanrenyuan find(Keyanrenyuan pojo);
    // 插入数据
    int insert(Keyanrenyuan pojo);
    // 更新数据
    int update(Keyanrenyuan pojo);
}
