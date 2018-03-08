package com.fustack.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fustack.dao.T2Dao;
import com.fustack.po.T2PO;

@Service
public class T2ServiceImpl implements T2Service {

	@Autowired
	private T2Dao dao;
	
	public long addT2(T2PO bean) {
		// TODO Auto-generated method stub
		return dao.addT2(bean);
	}
	
	public T2PO getT2PO(T2PO bean) {
		return dao.getT2(bean);
	}

}
