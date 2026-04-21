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


import com.cl.dao.ShensuxinxiDao;
import com.cl.entity.ShensuxinxiEntity;
import com.cl.service.ShensuxinxiService;
import com.cl.entity.view.ShensuxinxiView;

@Service("shensuxinxiService")
public class ShensuxinxiServiceImpl extends ServiceImpl<ShensuxinxiDao, ShensuxinxiEntity> implements ShensuxinxiService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShensuxinxiEntity> page = this.selectPage(
                new Query<ShensuxinxiEntity>(params).getPage(),
                new EntityWrapper<ShensuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShensuxinxiEntity> wrapper) {
		  Page<ShensuxinxiView> page =new Query<ShensuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShensuxinxiView> selectListView(Wrapper<ShensuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShensuxinxiView selectView(Wrapper<ShensuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
