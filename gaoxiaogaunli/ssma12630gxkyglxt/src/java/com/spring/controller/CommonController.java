package com.spring.controller;

import com.alibaba.fastjson.*;
import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 公共路由
 */
@Controller
public class CommonController extends BaseController {

    /**
     * 使用ajax 检测某表中某个字段是否已存在，已存在则无法提交
     * @return
     */
    @RequestMapping(value = "/checkno")
    @ResponseBody
    public String checkon() {
        String table = request.getParameter("table");
        String col = request.getParameter("col");
        String checktype = request.getParameter("checktype");
        String value = request.getParameter(col);

        // 检测新添加的
        if (checktype.equals("insert")) {
            if (Query.make(table).where(col, value).count() > 0) {
                return "false";
            } else {
                return "true";
            }
            // 检测更新的
        } else if (checktype.equals("update")) {
            String id = request.getParameter("id") == null ? "" : request.getParameter("id");
            if (Query.make(table).where(col, value).where("id", "neq", id).count() > 0) {
                return "false";
            } else {
                return "true";
            }
        }
        return "false";
    }

    /**
     * 审核数据，将是否审核改为已审核状态，点击一下 是 则变否， 点击一下 否 变为是
     * @return
     */
    @RequestMapping("/sh")
    @ResponseBody
    public String sh() {
        String yuan = request.getParameter("yuan");
        String id = request.getParameter("id");
        String tablename = request.getParameter("tablename");
        String sql = "";
        if (yuan.equals("是")) {
            sql = "update " + tablename + " set issh='否' where id=" + id;
        } else {
            sql = "update " + tablename + " set issh='是' where id=" + id;
        }
        DB.execute(sql);
        return "<script>location.href='" + request.getHeader("Referer") + "';</script>";
    }

    /**
     * 通过ajax获取表的某行数据
     * @return
     */
    @RequestMapping("/tableAjax")
    @ResponseBody
    public String tableFind() {
        String table = request.getParameter("table");
        String id = request.getParameter("id");
        Map map = Query.make(table).where("id", id).find();
        //JSONObject json = JSONObject.parse(map);
        return JSON.toJSONString(map); //.toString();
    }

    /**
     * 搜索下拉某表的数据
     * @return
     */
    @RequestMapping("/selectUpdateSearch")
    @ResponseBody
    public String selectUpdateSearch() {
        String table = Request.get("table");
        Query query = Query.make(table);
        String limit = "50";
        JSONObject where = JSON.parseObject(Request.get("where"));
        for (Map.Entry entry : where.entrySet()) {
            String key = (String) entry.getKey();
            Object value = entry.getValue();
            if ("limit".equals(key)) {
                limit = String.valueOf(value);
            } else {
                if (value instanceof JSONObject) {
                    JSONObject w = (JSONObject) value;
                    query.where(key, w.getString("exp"), w.getString("value"));
                } else if (value instanceof JSONArray) {
                    JSONArray w = (JSONArray) value;
                    query.where(key, (String) w.get(0), w.get(1));
                } else {
                    query.where(key, value);
                }
            }
        }
        List list = query.order("id desc").limit(limit).select();
        return JSON.toJSONString(list);
    }
}
