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


import com.cl.dao.WuliugongsiDao;
import com.cl.entity.WuliugongsiEntity;
import com.cl.service.WuliugongsiService;
import com.cl.entity.view.WuliugongsiView;

@Service("wuliugongsiService")
public class WuliugongsiServiceImpl extends ServiceImpl<WuliugongsiDao, WuliugongsiEntity> implements WuliugongsiService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WuliugongsiEntity> page = this.selectPage(
                new Query<WuliugongsiEntity>(params).getPage(),
                new EntityWrapper<WuliugongsiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WuliugongsiEntity> wrapper) {
		  Page<WuliugongsiView> page =new Query<WuliugongsiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<WuliugongsiView> selectListView(Wrapper<WuliugongsiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WuliugongsiView selectView(Wrapper<WuliugongsiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
