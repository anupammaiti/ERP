package com.svs.ensign.resort.cms.dao;


import com.svs.ensign.resort.cms.bean.GuestUserBean;
import net.sf.json.JSONObject;

public interface IN_GuestUserDAO {

	public boolean generatingGuestUser(GuestUserBean guestuser);
	public JSONObject viewGuestUsers(long guestUid);
	public JSONObject viewGuestUserDetails(String status);
	public boolean updateGuestUser(GuestUserBean guestuser);
	public JSONObject viewGuestUsersForTeleCaller(String status);
	public String getGuestUserId();
	public JSONObject viewGuestByDirector(String status);
	public JSONObject viewGuestById(long id);
	public JSONObject viewGuestByTeleManager(String status,String desination);
	public JSONObject viewGuestByTeleCaller(String username,String status);
	public JSONObject viewGuestRequestCalls(String username,String today);
	public JSONObject viewGuestRequestCallsById(String id);
	public void updateGuestRequestCall(long guestid,String requestforcall2,String requestforcall3);
	public JSONObject viewGuestByAgent(String username);
	public void deleteGuestById(long guest_id);
	public JSONObject viewAllotedGuestList(String status);
	public boolean updateGuestToCustomer(long id,String status);
	public JSONObject viewConvertedGuestList(String status);
	public JSONObject viewGuestUsers();
}
