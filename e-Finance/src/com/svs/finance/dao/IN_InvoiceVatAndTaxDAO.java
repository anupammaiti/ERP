package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.VatAndTaxBean;

public interface IN_InvoiceVatAndTaxDAO {
	
	public boolean geneateInvoiceVatAndTax(VatAndTaxBean vatandtax);
	public List viewVatByCompanyName(String companyname);
	public boolean updateVatByCompanyName(String companyname,String vat,String tax,String edutax);

}
