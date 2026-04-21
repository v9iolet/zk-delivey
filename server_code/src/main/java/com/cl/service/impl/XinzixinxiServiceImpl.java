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


import com.cl.dao.XinzixinxiDao;
import com.cl.entity.XinzixinxiEntity;
import com.cl.service.XinzixinxiService;
import com.cl.entity.view.XinzixinxiView;

@Service("xinzixinxiService")
public class XinzixinxiServiceImpl extends ServiceImpl<XinzixinxiDao, XinzixinxiEntity> implements XinzixinxiService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XinzixinxiEntity> page = this.selectPage(
                new Query<XinzixinxiEntity>(params).getPage(),
                new EntityWrapper<XinzixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XinzixinxiEntity> wrapper) {
		  Page<XinzixinxiView> page =new Query<XinzixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XinzixinxiView> selectListView(Wrapper<XinzixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XinzixinxiView selectView(Wrapper<XinzixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
