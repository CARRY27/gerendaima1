package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ChuangzuochengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Chuangzuochengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Chuangzuochengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Chuangzuochengguo pojo);
    // 查询一行数据
    Chuangzuochengguo find(Chuangzuochengguo pojo);
    // 插入数据
    int insert(Chuangzuochengguo pojo);
    // 更新数据
    int update(Chuangzuochengguo pojo);
}
