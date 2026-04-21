package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.GangqianpeixunEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.GangqianpeixunView;


/**
 * 岗前培训
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:38
 */
public interface GangqianpeixunService extends IService<GangqianpeixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GangqianpeixunView> selectListView(Wrapper<GangqianpeixunEntity> wrapper);
   	
   	GangqianpeixunView selectView(@Param("ew") Wrapper<GangqianpeixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GangqianpeixunEntity> wrapper);
   	
   
}

