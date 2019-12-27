package com.miris.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miris.project.dao.MonthlyDao;

@Service
public class MonthlyServiceImpl implements MonthlyService {
	
	@Autowired
	private MonthlyDao monthlyDao;
}
