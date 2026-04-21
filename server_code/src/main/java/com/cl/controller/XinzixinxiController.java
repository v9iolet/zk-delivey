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

import com.cl.entity.XinzixinxiEntity;
import com.cl.entity.view.XinzixinxiView;

import com.cl.service.XinzixinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 薪资信息
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/xinzixinxi")
public class XinzixinxiController {
    @Autowired
    private XinzixinxiService xinzixinxiService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XinzixinxiEntity xinzixinxi,
                                                                                                                                                                                            HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                                                                                                                                        if(tableName.equals("kuaidiyuan")) {
                    xinzixinxi.setKuaidiyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                            if(tableName.equals("wuliugongsi")) {
                    xinzixinxi.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                            EntityWrapper<XinzixinxiEntity> ew = new EntityWrapper<XinzixinxiEntity>();
                                                                                                                                                                                                                                                                                                        
        
        
        PageUtils page = xinzixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xinzixinxi), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XinzixinxiEntity xinzixinxi,
		HttpServletRequest request){
        EntityWrapper<XinzixinxiEntity> ew = new EntityWrapper<XinzixinxiEntity>();

		PageUtils page = xinzixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xinzixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XinzixinxiEntity xinzixinxi){
       	EntityWrapper<XinzixinxiEntity> ew = new EntityWrapper<XinzixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xinzixinxi, "xinzixinxi")); 
        return R.ok().put("data", xinzixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XinzixinxiEntity xinzixinxi){
        EntityWrapper< XinzixinxiEntity> ew = new EntityWrapper< XinzixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xinzixinxi, "xinzixinxi")); 
		XinzixinxiView xinzixinxiView =  xinzixinxiService.selectView(ew);
		return R.ok("查询薪资信息成功").put("data", xinzixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XinzixinxiEntity xinzixinxi = xinzixinxiService.selectById(id);
		xinzixinxi = xinzixinxiService.selectView(new EntityWrapper<XinzixinxiEntity>().eq("id", id));
        return R.ok().put("data", xinzixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XinzixinxiEntity xinzixinxi = xinzixinxiService.selectById(id);
		xinzixinxi = xinzixinxiService.selectView(new EntityWrapper<XinzixinxiEntity>().eq("id", id));
        return R.ok().put("data", xinzixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增薪资信息")
    public R save(@RequestBody XinzixinxiEntity xinzixinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(xinzixinxi);
        xinzixinxiService.insert(xinzixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增薪资信息")
    @RequestMapping("/add")
    public R add(@RequestBody XinzixinxiEntity xinzixinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(xinzixinxi);
        xinzixinxiService.insert(xinzixinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改薪资信息")
    public R update(@RequestBody XinzixinxiEntity xinzixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xinzixinxi);
        xinzixinxiService.updateById(xinzixinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除薪资信息")
    public R delete(@RequestBody Long[] ids){
        xinzixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
