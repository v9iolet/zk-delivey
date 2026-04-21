package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.KuaidiyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.KuaidiyuanView;


/**
 * 快递员
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface KuaidiyuanService extends IService<KuaidiyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KuaidiyuanView> selectListView(Wrapper<KuaidiyuanEntity> wrapper);
   	
   	KuaidiyuanView selectView(@Param("ew") Wrapper<KuaidiyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KuaidiyuanEntity> wrapper);
   	
   
}

