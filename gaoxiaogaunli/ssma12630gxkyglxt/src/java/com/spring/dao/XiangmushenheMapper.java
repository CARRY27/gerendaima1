package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XiangmushenheMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Xiangmushenhe> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xiangmushenhe> selectPage(SelectExample example);
    // 删除数据
    int delete(Xiangmushenhe pojo);
    // 查询一行数据
    Xiangmushenhe find(Xiangmushenhe pojo);
    // 插入数据
    int insert(Xiangmushenhe pojo);
    // 更新数据
    int update(Xiangmushenhe pojo);
}
