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


import com.cl.dao.KuaidiyuanDao;
import com.cl.entity.KuaidiyuanEntity;
import com.cl.service.KuaidiyuanService;
import com.cl.entity.view.KuaidiyuanView;

@Service("kuaidiyuanService")
public class KuaidiyuanServiceImpl extends ServiceImpl<KuaidiyuanDao, KuaidiyuanEntity> implements KuaidiyuanService {

    	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KuaidiyuanEntity> page = this.selectPage(
                new Query<KuaidiyuanEntity>(params).getPage(),
                new EntityWrapper<KuaidiyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KuaidiyuanEntity> wrapper) {
		  Page<KuaidiyuanView> page =new Query<KuaidiyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<KuaidiyuanView> selectListView(Wrapper<KuaidiyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KuaidiyuanView selectView(Wrapper<KuaidiyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}
	
	


}
