package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DingdanqianshouEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanqianshouView;


/**
 * 订单签收
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanqianshouService extends IService<DingdanqianshouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DingdanqianshouView> selectListView(Wrapper<DingdanqianshouEntity> wrapper);
   	
   	DingdanqianshouView selectView(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DingdanqianshouEntity> wrapper);
   	
   
}

