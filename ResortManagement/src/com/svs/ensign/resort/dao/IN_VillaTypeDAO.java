package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.VillaTypeBean;
import net.sf.json.JSONObject;

public interface IN_VillaTypeDAO {

	public boolean generateVillaType(VillaTypeBean villatype);
	public JSONObject viewVilla();
}
