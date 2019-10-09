package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.Groups;

public interface IN_GroupsDAO {
	
	public boolean generateGroups(Groups groups);
	public boolean isAvailable(String groups);

}
