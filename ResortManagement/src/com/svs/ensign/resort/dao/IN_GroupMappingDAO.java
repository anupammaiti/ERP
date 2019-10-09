package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.GroupMappingBean;

public interface IN_GroupMappingDAO {
	
	public boolean createGroupMapping(GroupMappingBean groupmapping);
	public boolean isAvailable(String groupname);
	

}
