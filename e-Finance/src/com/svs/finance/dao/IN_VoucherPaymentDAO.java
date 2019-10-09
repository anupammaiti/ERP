package com.svs.finance.dao;

import com.svs.finance.bean.VocherPaymentBean;

public interface IN_VoucherPaymentDAO {
	
	
	public boolean generateVoucherPayment(VocherPaymentBean voucherpayment);
	
	public String viewVoucherPaymentSno();
}
