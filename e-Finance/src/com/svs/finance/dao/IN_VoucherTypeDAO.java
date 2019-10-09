package com.svs.finance.dao;

import com.svs.finance.bean.VocherTypeBean;

public interface IN_VoucherTypeDAO {
	
	public boolean generateVoucherType(VocherTypeBean vouchertype);
	public boolean isAvailable(String vouchername);

}
