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
import com.cl.utils.UserBasedCollaborativeFiltering;

import com.cl.entity.FuwuxiangmuEntity;
import com.cl.entity.view.FuwuxiangmuView;

import com.cl.service.FuwuxiangmuService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;
import com.cl.service.StoreupService;
import com.cl.entity.StoreupEntity;

/**
 * 服务项目
 * 后端接口
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@RestController
@RequestMapping("/fuwuxiangmu")
public class FuwuxiangmuController {
    @Autowired
    private FuwuxiangmuService fuwuxiangmuService;

    @Autowired
    private StoreupService storeupService;








    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FuwuxiangmuEntity fuwuxiangmu,
                                                                                                                                                                    HttpServletRequest request){
                    String tableName = request.getSession().getAttribute("tableName").toString();
                                                                                                                                                                                        if(tableName.equals("wuliugongsi")) {
                    fuwuxiangmu.setGongsizhanghao((String)request.getSession().getAttribute("username"));
                                    }
                                                                                                                                                                                                            EntityWrapper<FuwuxiangmuEntity> ew = new EntityWrapper<FuwuxiangmuEntity>();
                                                                                                                                                                                                                                                                
        
        
        PageUtils page = fuwuxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuxiangmu), params), params));
        return R.ok().put("data", page);
    }







    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FuwuxiangmuEntity fuwuxiangmu,
		HttpServletRequest request){
        EntityWrapper<FuwuxiangmuEntity> ew = new EntityWrapper<FuwuxiangmuEntity>();

		PageUtils page = fuwuxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuxiangmu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FuwuxiangmuEntity fuwuxiangmu){
       	EntityWrapper<FuwuxiangmuEntity> ew = new EntityWrapper<FuwuxiangmuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( fuwuxiangmu, "fuwuxiangmu")); 
        return R.ok().put("data", fuwuxiangmuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FuwuxiangmuEntity fuwuxiangmu){
        EntityWrapper< FuwuxiangmuEntity> ew = new EntityWrapper< FuwuxiangmuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( fuwuxiangmu, "fuwuxiangmu")); 
		FuwuxiangmuView fuwuxiangmuView =  fuwuxiangmuService.selectView(ew);
		return R.ok("查询服务项目成功").put("data", fuwuxiangmuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        FuwuxiangmuEntity fuwuxiangmu = fuwuxiangmuService.selectById(id);
		fuwuxiangmu = fuwuxiangmuService.selectView(new EntityWrapper<FuwuxiangmuEntity>().eq("id", id));
        return R.ok().put("data", fuwuxiangmu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        FuwuxiangmuEntity fuwuxiangmu = fuwuxiangmuService.selectById(id);
		fuwuxiangmu = fuwuxiangmuService.selectView(new EntityWrapper<FuwuxiangmuEntity>().eq("id", id));
        return R.ok().put("data", fuwuxiangmu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增服务项目")
    public R save(@RequestBody FuwuxiangmuEntity fuwuxiangmu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fuwuxiangmu);
        fuwuxiangmuService.insert(fuwuxiangmu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @SysLog("新增服务项目")
    @RequestMapping("/add")
    public R add(@RequestBody FuwuxiangmuEntity fuwuxiangmu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fuwuxiangmu);
        fuwuxiangmuService.insert(fuwuxiangmu);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改服务项目")
    public R update(@RequestBody FuwuxiangmuEntity fuwuxiangmu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(fuwuxiangmu);
        fuwuxiangmuService.updateById(fuwuxiangmu);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除服务项目")
    public R delete(@RequestBody Long[] ids){
        fuwuxiangmuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,FuwuxiangmuEntity fuwuxiangmu, HttpServletRequest request,String pre){
        EntityWrapper<FuwuxiangmuEntity> ew = new EntityWrapper<FuwuxiangmuEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicktime");
        params.put("order", "desc");
		PageUtils page = fuwuxiangmuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuxiangmu), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 协同算法（基于用户收藏的协同算法）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,FuwuxiangmuEntity fuwuxiangmu, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<StoreupEntity> storeups = storeupService.selectList(new EntityWrapper<StoreupEntity>().eq("type", 1).eq("tablename", "fuwuxiangmu"));

        // 创建协同过滤对象
        UserBasedCollaborativeFiltering filter = new UserBasedCollaborativeFiltering();

        // 为指定用户推荐物品
        String targetUser = userId;
        int numRecommendations = limit;
        List<String> recommendations = filter.recommendItems(storeups,"userid","refid",userId,numRecommendations);

        // 输出推荐结果
        System.out.println("Recommendations for " + targetUser + ":");
        for (String item : recommendations) {
            System.out.println(item);
        }

        EntityWrapper<FuwuxiangmuEntity> ew = new EntityWrapper<FuwuxiangmuEntity>();
        ew.in("id", String.join(",", recommendations));
        if(recommendations!=null && recommendations.size()>0) {
            ew.last("order by FIELD(id, "+"'"+String.join("','", recommendations)+"'"+")");
        }

        PageUtils page = fuwuxiangmuService.queryPage(params, ew);
        List<FuwuxiangmuEntity> pageList = (List<FuwuxiangmuEntity>)page.getList();
        if(pageList.size()<limit) {
            int toAddNum = limit-pageList.size();
            ew = new EntityWrapper<FuwuxiangmuEntity>();
            if(recommendations.size()>0){
                ew.notIn("id", recommendations);
            }
            ew.orderBy("id", false);
            ew.last("limit "+toAddNum);
            pageList.addAll(fuwuxiangmuService.selectList(ew));
        } else if(pageList.size()>limit) {
            pageList = pageList.subList(0, limit);
        }
        page.setList(pageList);

        return R.ok().put("data", page);
    }








}
