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

import com.cl.entity.DingdanwanchengEntity;
import com.cl.entity.view.DingdanwanchengView;

import com.cl.service.DingdanwanchengService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 订单完成
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/dingdanwancheng")
public class DingdanwanchengController {
    @Autowired
    private DingdanwanchengService dingdanwanchengService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DingdanwanchengEntity dingdanwancheng,
                                                                                                                                                                                                                                                                                                        HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                            if(tableName.equals("wuliugongsi")) {
                    dingdanwancheng.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                    if(tableName.equals("yonghu")) {
                    dingdanwancheng.setXiadanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                                                                                                                                                                            if(tableName.equals("kuaidiyuan")) {
                    dingdanwancheng.setKuaidiyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                    EntityWrapper<DingdanwanchengEntity> ew = new EntityWrapper<DingdanwanchengEntity>();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        
        
        PageUtils page = dingdanwanchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanwancheng), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DingdanwanchengEntity dingdanwancheng,
		HttpServletRequest request){
        EntityWrapper<DingdanwanchengEntity> ew = new EntityWrapper<DingdanwanchengEntity>();

		PageUtils page = dingdanwanchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanwancheng), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DingdanwanchengEntity dingdanwancheng){
       	EntityWrapper<DingdanwanchengEntity> ew = new EntityWrapper<DingdanwanchengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dingdanwancheng, "dingdanwancheng")); 
        return R.ok().put("data", dingdanwanchengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DingdanwanchengEntity dingdanwancheng){
        EntityWrapper< DingdanwanchengEntity> ew = new EntityWrapper< DingdanwanchengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dingdanwancheng, "dingdanwancheng")); 
		DingdanwanchengView dingdanwanchengView =  dingdanwanchengService.selectView(ew);
		return R.ok("查询订单完成成功").put("data", dingdanwanchengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DingdanwanchengEntity dingdanwancheng = dingdanwanchengService.selectById(id);
		dingdanwancheng = dingdanwanchengService.selectView(new EntityWrapper<DingdanwanchengEntity>().eq("id", id));
        return R.ok().put("data", dingdanwancheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DingdanwanchengEntity dingdanwancheng = dingdanwanchengService.selectById(id);
		dingdanwancheng = dingdanwanchengService.selectView(new EntityWrapper<DingdanwanchengEntity>().eq("id", id));
        return R.ok().put("data", dingdanwancheng);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增订单完成")
    public R save(@RequestBody DingdanwanchengEntity dingdanwancheng, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanwancheng);
        dingdanwanchengService.insert(dingdanwancheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增订单完成")
    @RequestMapping("/add")
    public R add(@RequestBody DingdanwanchengEntity dingdanwancheng, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanwancheng);
        dingdanwanchengService.insert(dingdanwancheng);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改订单完成")
    public R update(@RequestBody DingdanwanchengEntity dingdanwancheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dingdanwancheng);
        dingdanwanchengService.updateById(dingdanwancheng);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除订单完成")
    public R delete(@RequestBody Long[] ids){
        dingdanwanchengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
