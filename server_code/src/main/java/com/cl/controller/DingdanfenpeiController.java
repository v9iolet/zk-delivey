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

import com.cl.entity.DingdanfenpeiEntity;
import com.cl.entity.view.DingdanfenpeiView;

import com.cl.service.DingdanfenpeiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 订单分配
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/dingdanfenpei")
public class DingdanfenpeiController {
    @Autowired
    private DingdanfenpeiService dingdanfenpeiService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DingdanfenpeiEntity dingdanfenpei,
                                                                                                                                                                                                                                                                                            HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                            if(tableName.equals("wuliugongsi")) {
                    dingdanfenpei.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                    if(tableName.equals("yonghu")) {
                    dingdanfenpei.setXiadanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                                                                                                                                                                            if(tableName.equals("kuaidiyuan")) {
                    dingdanfenpei.setKuaidiyuanzhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                        EntityWrapper<DingdanfenpeiEntity> ew = new EntityWrapper<DingdanfenpeiEntity>();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        
        
        PageUtils page = dingdanfenpeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanfenpei), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DingdanfenpeiEntity dingdanfenpei,
		HttpServletRequest request){
        EntityWrapper<DingdanfenpeiEntity> ew = new EntityWrapper<DingdanfenpeiEntity>();

		PageUtils page = dingdanfenpeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanfenpei), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DingdanfenpeiEntity dingdanfenpei){
       	EntityWrapper<DingdanfenpeiEntity> ew = new EntityWrapper<DingdanfenpeiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dingdanfenpei, "dingdanfenpei")); 
        return R.ok().put("data", dingdanfenpeiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DingdanfenpeiEntity dingdanfenpei){
        EntityWrapper< DingdanfenpeiEntity> ew = new EntityWrapper< DingdanfenpeiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dingdanfenpei, "dingdanfenpei")); 
		DingdanfenpeiView dingdanfenpeiView =  dingdanfenpeiService.selectView(ew);
		return R.ok("查询订单分配成功").put("data", dingdanfenpeiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DingdanfenpeiEntity dingdanfenpei = dingdanfenpeiService.selectById(id);
		dingdanfenpei = dingdanfenpeiService.selectView(new EntityWrapper<DingdanfenpeiEntity>().eq("id", id));
        return R.ok().put("data", dingdanfenpei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DingdanfenpeiEntity dingdanfenpei = dingdanfenpeiService.selectById(id);
		dingdanfenpei = dingdanfenpeiService.selectView(new EntityWrapper<DingdanfenpeiEntity>().eq("id", id));
        return R.ok().put("data", dingdanfenpei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增订单分配")
    public R save(@RequestBody DingdanfenpeiEntity dingdanfenpei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanfenpei);
        dingdanfenpeiService.insert(dingdanfenpei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增订单分配")
    @RequestMapping("/add")
    public R add(@RequestBody DingdanfenpeiEntity dingdanfenpei, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(dingdanfenpei);
        dingdanfenpeiService.insert(dingdanfenpei);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改订单分配")
    public R update(@RequestBody DingdanfenpeiEntity dingdanfenpei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dingdanfenpei);
        dingdanfenpeiService.updateById(dingdanfenpei);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除订单分配")
    public R delete(@RequestBody Long[] ids){
        dingdanfenpeiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
