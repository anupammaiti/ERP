package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.VocherPaymentBean;

public interface IN_VoucherPaymentDAO {
	
	
	public boolean generateVoucherPayment(VocherPaymentBean voucherpayment);
	
	public String viewVoucherPaymentSno();
}
