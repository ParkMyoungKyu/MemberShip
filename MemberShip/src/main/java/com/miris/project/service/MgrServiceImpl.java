package com.miris.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.MgrDao;

@Service
public class MgrServiceImpl implements MgrService {
	
	@Autowired
	private MgrDao mgrDao;
	
}
