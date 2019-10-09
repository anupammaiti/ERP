package com.svs.finance.dao;

import com.svs.finance.bean.GroupMappingBean;

public interface IN_GroupMappingDAO {
	
	public boolean createGroupMapping(GroupMappingBean groupmapping);
	public boolean isAvailable(String groupname);
	

}
