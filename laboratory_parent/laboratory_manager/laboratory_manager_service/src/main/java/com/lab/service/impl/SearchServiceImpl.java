package com.lab.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.IDUtils;
import com.lab.common.util.TaotaoResult;
import com.lab.mapper.SearchMapper;
import com.lab.pojo.Search;
import com.lab.pojo.SearchExample;
import com.lab.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * create by inu
 * 创建研究项目的分页信息
 */

@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    private SearchMapper searchMapper;


    @Override
    public EasyUIDataGridResult getSearchList(int page, int rows) {
        //设置分页信息
        PageHelper.startPage(page,rows);
        //执行查询
        SearchExample searchExample = new SearchExample();
        List<Search> list =  searchMapper.selectByExample(searchExample);
        //得到查询结果
        PageInfo<Search> pageInfo = new PageInfo<>(list);
        EasyUIDataGridResult result = new EasyUIDataGridResult();
        result.setRows(list);
        result.setTotal(pageInfo.getTotal());
        return result;
    }

    @Override
    public TaotaoResult addSearch(Search search, String content) {
        //生成设备id
        long id = IDUtils.genItemId();
        //补全item属性
        search.setId(id);
        search.setContent(content);
        search.setCreatetime(new Date());

        //向项目表插入数据
        searchMapper.insert(search);
        //返回结果
        return TaotaoResult.ok();
    }

    @Override
    public List<Search> getSearchAllList() {
        //执行查询
        SearchExample searchExample = new SearchExample();
        List<Search> list =  searchMapper.selectByExample(searchExample);

        return list;
    }

    @Override
    public Search getSearchById(long id) {
        Search search = searchMapper.selectByPrimaryKey(id);
        return search;
    }
}
