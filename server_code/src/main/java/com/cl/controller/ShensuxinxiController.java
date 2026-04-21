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

import com.cl.entity.ShensuxinxiEntity;
import com.cl.entity.view.ShensuxinxiView;

import com.cl.service.ShensuxinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 申诉信息
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/shensuxinxi")
public class ShensuxinxiController {
    @Autowired
    private ShensuxinxiService shensuxinxiService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShensuxinxiEntity shensuxinxi,
                                                                                                                                                                                                                                                                                HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                            if(tableName.equals("wuliugongsi")) {
                    shensuxinxi.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                    if(tableName.equals("yonghu")) {
                    shensuxinxi.setXiadanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                                                                                        if(tableName.equals("kuaidiyuan")) {
                    shensuxinxi.setKuaidiyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                EntityWrapper<ShensuxinxiEntity> ew = new EntityWrapper<ShensuxinxiEntity>();
                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        
        
        PageUtils page = shensuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shensuxinxi), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShensuxinxiEntity shensuxinxi,
		HttpServletRequest request){
        EntityWrapper<ShensuxinxiEntity> ew = new EntityWrapper<ShensuxinxiEntity>();

		PageUtils page = shensuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shensuxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShensuxinxiEntity shensuxinxi){
       	EntityWrapper<ShensuxinxiEntity> ew = new EntityWrapper<ShensuxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shensuxinxi, "shensuxinxi")); 
        return R.ok().put("data", shensuxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShensuxinxiEntity shensuxinxi){
        EntityWrapper< ShensuxinxiEntity> ew = new EntityWrapper< ShensuxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shensuxinxi, "shensuxinxi")); 
		ShensuxinxiView shensuxinxiView =  shensuxinxiService.selectView(ew);
		return R.ok("查询申诉信息成功").put("data", shensuxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShensuxinxiEntity shensuxinxi = shensuxinxiService.selectById(id);
		shensuxinxi = shensuxinxiService.selectView(new EntityWrapper<ShensuxinxiEntity>().eq("id", id));
        return R.ok().put("data", shensuxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShensuxinxiEntity shensuxinxi = shensuxinxiService.selectById(id);
		shensuxinxi = shensuxinxiService.selectView(new EntityWrapper<ShensuxinxiEntity>().eq("id", id));
        return R.ok().put("data", shensuxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增申诉信息")
    public R save(@RequestBody ShensuxinxiEntity shensuxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shensuxinxi);
        shensuxinxiService.insert(shensuxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增申诉信息")
    @RequestMapping("/add")
    public R add(@RequestBody ShensuxinxiEntity shensuxinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(shensuxinxi);
        shensuxinxiService.insert(shensuxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改申诉信息")
    public R update(@RequestBody ShensuxinxiEntity shensuxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shensuxinxi);
        shensuxinxiService.updateById(shensuxinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除申诉信息")
    public R delete(@RequestBody Long[] ids){
        shensuxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
