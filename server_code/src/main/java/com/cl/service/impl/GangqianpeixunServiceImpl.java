package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.GangqianpeixunDao;
import com.cl.entity.GangqianpeixunEntity;
import com.cl.service.GangqianpeixunService;
import com.cl.entity.view.GangqianpeixunView;

@Service("gangqianpeixunService")
public class GangqianpeixunServiceImpl extends ServiceImpl<GangqianpeixunDao, GangqianpeixunEntity> implements GangqianpeixunService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GangqianpeixunEntity> page = this.selectPage(
                new Query<GangqianpeixunEntity>(params).getPage(),
                new EntityWrapper<GangqianpeixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GangqianpeixunEntity> wrapper) {
		  Page<GangqianpeixunView> page =new Query<GangqianpeixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<GangqianpeixunView> selectListView(Wrapper<GangqianpeixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GangqianpeixunView selectView(Wrapper<GangqianpeixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
