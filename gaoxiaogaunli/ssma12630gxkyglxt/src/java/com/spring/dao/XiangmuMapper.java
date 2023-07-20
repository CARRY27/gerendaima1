package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XiangmuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Xiangmu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xiangmu> selectPage(SelectExample example);
    // 删除数据
    int delete(Xiangmu pojo);
    // 查询一行数据
    Xiangmu find(Xiangmu pojo);
    // 插入数据
    int insert(Xiangmu pojo);
    // 更新数据
    int update(Xiangmu pojo);
}
