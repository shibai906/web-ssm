package com.zhao.service.imp;

import com.zhao.dao.ConBuildUnitMessDao;
import com.zhao.model.ConBuildUnitMess;
import com.zhao.service.ConBuildUnitMessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConBuildUnitMessServiceImp implements ConBuildUnitMessService {

    @Resource
    private ConBuildUnitMessDao conBuildUnitMessDao ;

    @Override
    public void insert(ConBuildUnitMess conBuildUnitMess) {
        conBuildUnitMessDao.insert(conBuildUnitMess);
    }

    @Override
    public ConBuildUnitMess query(String id) {
        return conBuildUnitMessDao.query(id);
    }

    @Override
    public List<ConBuildUnitMess> querySearch(ConBuildUnitMess conBuildUnitMess) {
        return conBuildUnitMessDao.querySearch(conBuildUnitMess);
    }

    @Override
    public void update(ConBuildUnitMess conBuildUnitMess) {
        conBuildUnitMessDao.update(conBuildUnitMess);
    }

    @Override
    public void delUpdate(int delSign) {
        conBuildUnitMessDao.delUpdate(delSign);
    }

    @Override
    public List<ConBuildUnitMess> queryAll() {
        return conBuildUnitMessDao.queryAll();
    }
}
