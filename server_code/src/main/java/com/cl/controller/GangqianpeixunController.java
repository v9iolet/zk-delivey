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

import com.cl.entity.GangqianpeixunEntity;
import com.cl.entity.view.GangqianpeixunView;

import com.cl.service.GangqianpeixunService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 岗前培训
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:38
 */
@RestController
@RequestMapping("/gangqianpeixun")
public class GangqianpeixunController {
    @Autowired
    private GangqianpeixunService gangqianpeixunService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,GangqianpeixunEntity gangqianpeixun,
                                                                                            HttpServletRequest request){
                                    EntityWrapper<GangqianpeixunEntity> ew = new EntityWrapper<GangqianpeixunEntity>();
                                                                                                                                        
        
        
        PageUtils page = gangqianpeixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gangqianpeixun), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,GangqianpeixunEntity gangqianpeixun,
		HttpServletRequest request){
        EntityWrapper<GangqianpeixunEntity> ew = new EntityWrapper<GangqianpeixunEntity>();

		PageUtils page = gangqianpeixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, gangqianpeixun), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( GangqianpeixunEntity gangqianpeixun){
       	EntityWrapper<GangqianpeixunEntity> ew = new EntityWrapper<GangqianpeixunEntity>();
      	ew.allEq(MPUtil.allEQMapPre( gangqianpeixun, "gangqianpeixun")); 
        return R.ok().put("data", gangqianpeixunService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(GangqianpeixunEntity gangqianpeixun){
        EntityWrapper< GangqianpeixunEntity> ew = new EntityWrapper< GangqianpeixunEntity>();
 		ew.allEq(MPUtil.allEQMapPre( gangqianpeixun, "gangqianpeixun")); 
		GangqianpeixunView gangqianpeixunView =  gangqianpeixunService.selectView(ew);
		return R.ok("查询岗前培训成功").put("data", gangqianpeixunView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        GangqianpeixunEntity gangqianpeixun = gangqianpeixunService.selectById(id);
		gangqianpeixun = gangqianpeixunService.selectView(new EntityWrapper<GangqianpeixunEntity>().eq("id", id));
        return R.ok().put("data", gangqianpeixun);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        GangqianpeixunEntity gangqianpeixun = gangqianpeixunService.selectById(id);
		gangqianpeixun = gangqianpeixunService.selectView(new EntityWrapper<GangqianpeixunEntity>().eq("id", id));
        return R.ok().put("data", gangqianpeixun);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增岗前培训")
    public R save(@RequestBody GangqianpeixunEntity gangqianpeixun, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(gangqianpeixun);
        gangqianpeixunService.insert(gangqianpeixun);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增岗前培训")
    @RequestMapping("/add")
    public R add(@RequestBody GangqianpeixunEntity gangqianpeixun, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(gangqianpeixun);
        gangqianpeixunService.insert(gangqianpeixun);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改岗前培训")
    public R update(@RequestBody GangqianpeixunEntity gangqianpeixun, HttpServletRequest request){
        //ValidatorUtils.validateEntity(gangqianpeixun);
        gangqianpeixunService.updateById(gangqianpeixun);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除岗前培训")
    public R delete(@RequestBody Long[] ids){
        gangqianpeixunService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
