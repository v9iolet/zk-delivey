package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.HetongxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HetongxinxiView;


/**
 * 合同信息
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface HetongxinxiService extends IService<HetongxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HetongxinxiView> selectListView(Wrapper<HetongxinxiEntity> wrapper);
   	
   	HetongxinxiView selectView(@Param("ew") Wrapper<HetongxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HetongxinxiEntity> wrapper);
   	
   
}

