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

import com.cl.entity.WuliugongsiEntity;
import com.cl.entity.view.WuliugongsiView;

import com.cl.service.WuliugongsiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 物流公司
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/wuliugongsi")
public class WuliugongsiController {
    @Autowired
    private WuliugongsiService wuliugongsiService;



	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		WuliugongsiEntity u = wuliugongsiService.selectOne(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", username));
        if(u==null || !u.getMima().equals(password)) {
            return R.error("账号或密码不正确");
        }
		String token = tokenService.generateToken(u.getId(), username,"wuliugongsi",  "物流公司" );
		return R.ok().put("token", token);
	}


	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody WuliugongsiEntity wuliugongsi){
    	//ValidatorUtils.validateEntity(wuliugongsi);
                                        WuliugongsiEntity u = wuliugongsiService.selectOne(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", wuliugongsi.getGongsizhanghao()));
                                                                        		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		wuliugongsi.setId(uId);
        wuliugongsiService.insert(wuliugongsi);
        return R.ok();
    }

	
	/**
	 * 退出
	 */
	@RequestMapping("/logout")
	public R logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return R.ok("退出成功");
	}
	
	/**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
    	Long id = (Long)request.getSession().getAttribute("userId");
        return R.ok().put("data", wuliugongsiService.selectView(new EntityWrapper<WuliugongsiEntity>().eq("id", id)));
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	WuliugongsiEntity u = wuliugongsiService.selectOne(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima("123456");
        wuliugongsiService.updateById(u);
        return R.ok("密码已重置为：123456");
    }






    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,WuliugongsiEntity wuliugongsi,
                                                                                                                    HttpServletRequest request){
                                    EntityWrapper<WuliugongsiEntity> ew = new EntityWrapper<WuliugongsiEntity>();
                                                                                                                                                                                
        
        
        PageUtils page = wuliugongsiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wuliugongsi), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,WuliugongsiEntity wuliugongsi,
		HttpServletRequest request){
        EntityWrapper<WuliugongsiEntity> ew = new EntityWrapper<WuliugongsiEntity>();

		PageUtils page = wuliugongsiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wuliugongsi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( WuliugongsiEntity wuliugongsi){
       	EntityWrapper<WuliugongsiEntity> ew = new EntityWrapper<WuliugongsiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( wuliugongsi, "wuliugongsi")); 
        return R.ok().put("data", wuliugongsiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(WuliugongsiEntity wuliugongsi){
        EntityWrapper< WuliugongsiEntity> ew = new EntityWrapper< WuliugongsiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( wuliugongsi, "wuliugongsi")); 
		WuliugongsiView wuliugongsiView =  wuliugongsiService.selectView(ew);
		return R.ok("查询物流公司成功").put("data", wuliugongsiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        WuliugongsiEntity wuliugongsi = wuliugongsiService.selectById(id);
		wuliugongsi = wuliugongsiService.selectView(new EntityWrapper<WuliugongsiEntity>().eq("id", id));
        return R.ok().put("data", wuliugongsi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        WuliugongsiEntity wuliugongsi = wuliugongsiService.selectById(id);
		wuliugongsi = wuliugongsiService.selectView(new EntityWrapper<WuliugongsiEntity>().eq("id", id));
        return R.ok().put("data", wuliugongsi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增物流公司")
    public R save(@RequestBody WuliugongsiEntity wuliugongsi, HttpServletRequest request){
        if(wuliugongsiService.selectCount(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", wuliugongsi.getGongsizhanghao()))>0) {
            return R.error("公司账号已存在");
        }
    	wuliugongsi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wuliugongsi);
        WuliugongsiEntity u = wuliugongsiService.selectOne(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", wuliugongsi.getGongsizhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		wuliugongsi.setId(new Date().getTime());
        wuliugongsiService.insert(wuliugongsi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增物流公司")
    @RequestMapping("/add")
    public R add(@RequestBody WuliugongsiEntity wuliugongsi, HttpServletRequest request){
        if(wuliugongsiService.selectCount(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", wuliugongsi.getGongsizhanghao()))>0) {
            return R.error("公司账号已存在");
        }
    	wuliugongsi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wuliugongsi);
        WuliugongsiEntity u = wuliugongsiService.selectOne(new EntityWrapper<WuliugongsiEntity>().eq("gongsizhanghao", wuliugongsi.getGongsizhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		wuliugongsi.setId(new Date().getTime());
        wuliugongsiService.insert(wuliugongsi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改物流公司")
    public R update(@RequestBody WuliugongsiEntity wuliugongsi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(wuliugongsi);
        wuliugongsiService.updateById(wuliugongsi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除物流公司")
    public R delete(@RequestBody Long[] ids){
        wuliugongsiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
