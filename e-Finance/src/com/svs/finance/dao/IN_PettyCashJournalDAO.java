package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.PettyCashBean;
import com.svs.finance.bean.PettycashjornalBean;

public interface IN_PettyCashJournalDAO {
	public boolean createPettyCashJournal(PettycashjornalBean pettycashjournal);
	public boolean generatepettycashjournal(PettycashjornalBean pettycashjornalBean);

	public List viewPettyCashJournalByExecutive(String username);
	public List viewPettyCashJournalByManager(String username);
	public List viewPettyCashJournalByDirector();

}
