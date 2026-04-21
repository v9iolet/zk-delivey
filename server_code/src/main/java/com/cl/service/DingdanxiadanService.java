package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DingdanxiadanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanxiadanView;


/**
 * 订单下单
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanxiadanService extends IService<DingdanxiadanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DingdanxiadanView> selectListView(Wrapper<DingdanxiadanEntity> wrapper);
   	
   	DingdanxiadanView selectView(@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DingdanxiadanEntity> wrapper);
   	
   
    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<DingdanxiadanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<DingdanxiadanEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<DingdanxiadanEntity> wrapper);



}

