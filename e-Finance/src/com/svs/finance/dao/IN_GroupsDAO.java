package com.svs.finance.dao;

import com.svs.finance.bean.Groups;

public interface IN_GroupsDAO {
	
	public boolean generateGroups(Groups groups);
	public boolean isAvailable(String groups);
	
}
