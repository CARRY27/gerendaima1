package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface KeyankaoheMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Keyankaohe> selectAll(SelectExample example);

    // 按分页查询数据
    List<Keyankaohe> selectPage(SelectExample example);
    // 删除数据
    int delete(Keyankaohe pojo);
    // 查询一行数据
    Keyankaohe find(Keyankaohe pojo);
    // 插入数据
    int insert(Keyankaohe pojo);
    // 更新数据
    int update(Keyankaohe pojo);
}
