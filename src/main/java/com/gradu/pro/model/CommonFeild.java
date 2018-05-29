package com.gradu.pro.model;

import java.util.UUID;

public class CommonFeild {

    public int pageSize ;
    public int pageNum ;
    private String id ;
    private long createTime ;
    private long updateTime ;

    public String getId() {
        if(id == null || id.trim().equals("")) {
            id = UUID.randomUUID().toString() ;
        }
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public long getCreateTime() {

        return createTime;
    }

    public void setCreateTime(long createTime) {

        this.createTime = createTime;
    }

    public long getUpdateTime() {
        if(updateTime == 0) {
            updateTime = System.currentTimeMillis() ;
        }
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }
}
