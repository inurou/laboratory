package com.lab.service;

import com.lab.common.pojo.EasyUIDataGridResult;
import com.lab.common.util.TaotaoResult;
import com.lab.pojo.Search;

import java.util.List;

public interface SearchService {

    EasyUIDataGridResult getSearchList(int page,int rows);

    TaotaoResult addSearch(Search search, String content);

    List<Search> getSearchAllList();

    Search getSearchById(long id);
}
