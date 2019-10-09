package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.PettyCashBean;
import net.sf.json.JSONObject;

public interface IN_PettyCashJournalDAO {
	public boolean createPettyCashJournal(PettyCashBean pettycashjournal);
	public JSONObject viewPettyCashJournalByExecutive(String username);
	public JSONObject viewPettyCashJournalByManager(String username);
	public JSONObject viewPettyCashJournalByDirector();

}
