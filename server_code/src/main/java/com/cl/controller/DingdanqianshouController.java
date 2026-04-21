package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;
import com.cl.annotation.SysLog;

import com.cl.entity.DingdanqianshouEntity;
import com.cl.entity.view.DingdanqianshouView;

import com.cl.service.DingdanqianshouService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 订单签收
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/dingdanqianshou")
public class DingdanqianshouController {
    @Autowired
    private DingdanqianshouService dingdanqianshouService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DingdanqianshouEntity dingdanqianshou,
                                                                                                                                                                                                                                                                                HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                            if(tableName.equals("wuliugongsi")) {
                    dingdanqianshou.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                    if(tableName.equals("yonghu")) {
                    dingdanqianshou.setXiadanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                                                                                                                                                if(tableName.equals("kuaidiyuan")) {
                    dingdanqianshou.setKuaidiyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                        EntityWrapper<DingdanqianshouEntity> ew = new EntityWrapper<DingdanqianshouEntity>();
                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        
        
        PageUtils page = dingdanqianshouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanqianshou), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DingdanqianshouEntity dingdanqianshou,
		HttpServletRequest request){
        EntityWrapper<DingdanqianshouEntity> ew = new EntityWrapper<DingdanqianshouEntity>();

		PageUtils page = dingdanqianshouService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanqianshou), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DingdanqianshouEntity dingdanqianshou){
       	EntityWrapper<DingdanqianshouEntity> ew = new EntityWrapper<DingdanqianshouEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dingdanqianshou, "dingdanqianshou")); 
        return R.ok().put("data", dingdanqianshouService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DingdanqianshouEntity dingdanqianshou){
        EntityWrapper< DingdanqianshouEntity> ew = new EntityWrapper< DingdanqianshouEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dingdanqianshou, "dingdanqianshou")); 
		DingdanqianshouView dingdanqianshouView =  dingdanqianshouService.selectView(ew);
		return R.ok("查询订单签收成功").put("data", dingdanqianshouView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DingdanqianshouEntity dingdanqianshou = dingdanqianshouService.selectById(id);
		dingdanqianshou = dingdanqianshouService.selectView(new EntityWrapper<DingdanqianshouEntity>().eq("id", id));
        return R.ok().put("data", dingdanqianshou);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DingdanqianshouEntity dingdanqianshou = dingdanqianshouService.selectById(id);
		dingdanqianshou = dingdanqianshouService.selectView(new EntityWrapper<DingdanqianshouEntity>().eq("id", id));
        return R.ok().put("data", dingdanqianshou);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增订单签收")
    public R save(@RequestBody DingdanqianshouEntity dingdanqianshou, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanqianshou);
        dingdanqianshouService.insert(dingdanqianshou);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增订单签收")
    @RequestMapping("/add")
    public R add(@RequestBody DingdanqianshouEntity dingdanqianshou, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanqianshou);
        dingdanqianshouService.insert(dingdanqianshou);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改订单签收")
    public R update(@RequestBody DingdanqianshouEntity dingdanqianshou, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dingdanqianshou);
        dingdanqianshouService.updateById(dingdanqianshou);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除订单签收")
    public R delete(@RequestBody Long[] ids){
        dingdanqianshouService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
