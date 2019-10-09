package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_cashreceiptsjournal")
public class CashreceiptsjournalBean {
	
		@Id
		@GeneratedValue
		@Column(name="sno")
		private long sno;
		@Column(name="month")
		private String month;
		@Column(name="ledgerno")
		private String ledgerno;
		@Column(name="date1")
		private String date1;
		@Column(name="accountcredited1")
		private String accountcredited1;
		@Column(name="account1")
		private String account1;
		@Column(name="sales1")
		private String sales1;
		@Column(name="amountreceivables1")
		private String amountreceivables1;
		@Column(name="cash1")
		private String cash1;
		@Column(name="discount1")
		private String discount1;
		@Column(name="other1")
		private String other1;
		@Column(name="accountd1")
		private String accountd1;
		@Column(name="accounts1")
		private String accounts1;
		@Column(name="othera1")
		private String othera1;

		
		@Column(name="date2")
		private String date2;
		@Column(name="accountcredited2")
		private String accountcredited2;
		@Column(name="account2")
		private String account2;
		@Column(name="sales2")
		private String sales2;
		@Column(name="amountreceivables2")
		private String amountreceivables2;
		@Column(name="cash2")
		private String cash2;
		@Column(name="discount2")
		private String discount2;
		@Column(name="other2")
		private String other2;
		@Column(name="accountd2")
		private String accountd2;
		@Column(name="accounts2")
		private String accounts2;
		@Column(name="othera2")
		private String othera2;

		
		@Column(name="date3")
		private String date3;
		@Column(name="accountcredited3")
		private String accountcredited3;
		@Column(name="account3")
		private String account3;
		@Column(name="sales3")
		private String sales3;
		@Column(name="amountreceivables3")
		private String amountreceivables3;
		@Column(name="cash3")
		private String cash3;
		@Column(name="discount3")
		private String discount3;
		@Column(name="other3")
		private String other3;
		@Column(name="accountd3")
		private String accountd3;
		@Column(name="accounts3")
		private String accounts3;
		@Column(name="othera3")
		private String othera3;

		
		@Column(name="date4")
		private String date4;
		@Column(name="accountcredited4")
		private String accountcredited4;
		@Column(name="account4")
		private String account4;
		@Column(name="sales4")
		private String sales4;
		@Column(name="amountreceivables4")
		private String amountreceivables4;
		@Column(name="cash4")
		private String cash4;
		@Column(name="discount4")
		private String discount4;
		@Column(name="other4")
		private String other4;
		@Column(name="accountd4")
		private String accountd4;
		@Column(name="accounts4")
		private String accounts4;
		@Column(name="othera4")
		private String othera4;

		
		@Column(name="date5")
		private String date5;
		@Column(name="accountcredited5")
		private String accountcredited5;
		@Column(name="account5")
		private String account5;
		@Column(name="sales5")
		private String sales5;
		@Column(name="amountreceivables5")
		private String amountreceivables5;
		@Column(name="cash5")
		private String cash5;
		@Column(name="discount5")
		private String discount5;
		@Column(name="other5")
		private String other5;
		@Column(name="accountd5")
		private String accountd5;
		@Column(name="accounts5")
		private String accounts5;
		@Column(name="othera5")
		private String othera5;
		@Column(name="login_comp")
		private String login_comp;
		@Column(name="deltby")
		private String deltby;
		
		public long getSno() {
			return sno;
		}
		public void setSno(long sno) {
			this.sno = sno;
		}
		public String getMonth() {
			return month;
		}
		public void setMonth(String month) {
			this.month = month;
		}
		public String getLedgerno() {
			return ledgerno;
		}
		public void setLedgerno(String ledgerno) {
			this.ledgerno = ledgerno;
		}
		public String getDate1() {
			return date1;
		}
		public void setDate1(String date1) {
			this.date1 = date1;
		}
		public String getAccountcredited1() {
			return accountcredited1;
		}
		public void setAccountcredited1(String accountcredited1) {
			this.accountcredited1 = accountcredited1;
		}
		public String getAccount1() {
			return account1;
		}
		public void setAccount1(String account1) {
			this.account1 = account1;
		}
		public String getSales1() {
			return sales1;
		}
		public void setSales1(String sales1) {
			this.sales1 = sales1;
		}
		public String getAmountreceivables1() {
			return amountreceivables1;
		}
		public void setAmountreceivables1(String amountreceivables1) {
			this.amountreceivables1 = amountreceivables1;
		}
		public String getCash1() {
			return cash1;
		}
		public void setCash1(String cash1) {
			this.cash1 = cash1;
		}
		public String getDiscount1() {
			return discount1;
		}
		public void setDiscount1(String discount1) {
			this.discount1 = discount1;
		}
		public String getOther1() {
			return other1;
		}
		public void setOther1(String other1) {
			this.other1 = other1;
		}
		public String getAccountd1() {
			return accountd1;
		}
		public void setAccountd1(String accountd1) {
			this.accountd1 = accountd1;
		}
		public String getAccounts1() {
			return accounts1;
		}
		public void setAccounts1(String accounts1) {
			this.accounts1 = accounts1;
		}
		public String getOthera1() {
			return othera1;
		}
		public void setOthera1(String othera1) {
			this.othera1 = othera1;
		}
		public String getDate2() {
			return date2;
		}
		public void setDate2(String date2) {
			this.date2 = date2;
		}
		public String getAccountcredited2() {
			return accountcredited2;
		}
		public void setAccountcredited2(String accountcredited2) {
			this.accountcredited2 = accountcredited2;
		}
		public String getAccount2() {
			return account2;
		}
		public void setAccount2(String account2) {
			this.account2 = account2;
		}
		public String getSales2() {
			return sales2;
		}
		public void setSales2(String sales2) {
			this.sales2 = sales2;
		}
		public String getAmountreceivables2() {
			return amountreceivables2;
		}
		public void setAmountreceivables2(String amountreceivables2) {
			this.amountreceivables2 = amountreceivables2;
		}
		public String getCash2() {
			return cash2;
		}
		public void setCash2(String cash2) {
			this.cash2 = cash2;
		}
		public String getDiscount2() {
			return discount2;
		}
		public void setDiscount2(String discount2) {
			this.discount2 = discount2;
		}
		public String getOther2() {
			return other2;
		}
		public void setOther2(String other2) {
			this.other2 = other2;
		}
		public String getAccountd2() {
			return accountd2;
		}
		public void setAccountd2(String accountd2) {
			this.accountd2 = accountd2;
		}
		public String getAccounts2() {
			return accounts2;
		}
		public void setAccounts2(String accounts2) {
			this.accounts2 = accounts2;
		}
		public String getOthera2() {
			return othera2;
		}
		public void setOthera2(String othera2) {
			this.othera2 = othera2;
		}
		public String getDate3() {
			return date3;
		}
		public void setDate3(String date3) {
			this.date3 = date3;
		}
		public String getAccountcredited3() {
			return accountcredited3;
		}
		public void setAccountcredited3(String accountcredited3) {
			this.accountcredited3 = accountcredited3;
		}
		public String getAccount3() {
			return account3;
		}
		public void setAccount3(String account3) {
			this.account3 = account3;
		}
		public String getSales3() {
			return sales3;
		}
		public void setSales3(String sales3) {
			this.sales3 = sales3;
		}
		public String getAmountreceivables3() {
			return amountreceivables3;
		}
		public void setAmountreceivables3(String amountreceivables3) {
			this.amountreceivables3 = amountreceivables3;
		}
		public String getCash3() {
			return cash3;
		}
		public void setCash3(String cash3) {
			this.cash3 = cash3;
		}
		public String getDiscount3() {
			return discount3;
		}
		public void setDiscount3(String discount3) {
			this.discount3 = discount3;
		}
		public String getOther3() {
			return other3;
		}
		public void setOther3(String other3) {
			this.other3 = other3;
		}
		public String getAccountd3() {
			return accountd3;
		}
		public void setAccountd3(String accountd3) {
			this.accountd3 = accountd3;
		}
		public String getAccounts3() {
			return accounts3;
		}
		public void setAccounts3(String accounts3) {
			this.accounts3 = accounts3;
		}
		public String getOthera3() {
			return othera3;
		}
		public void setOthera3(String othera3) {
			this.othera3 = othera3;
		}
		public String getDate4() {
			return date4;
		}
		public void setDate4(String date4) {
			this.date4 = date4;
		}
		public String getAccountcredited4() {
			return accountcredited4;
		}
		public void setAccountcredited4(String accountcredited4) {
			this.accountcredited4 = accountcredited4;
		}
		public String getAccount4() {
			return account4;
		}
		public void setAccount4(String account4) {
			this.account4 = account4;
		}
		public String getSales4() {
			return sales4;
		}
		public void setSales4(String sales4) {
			this.sales4 = sales4;
		}
		public String getAmountreceivables4() {
			return amountreceivables4;
		}
		public void setAmountreceivables4(String amountreceivables4) {
			this.amountreceivables4 = amountreceivables4;
		}
		public String getCash4() {
			return cash4;
		}
		public void setCash4(String cash4) {
			this.cash4 = cash4;
		}
		public String getDiscount4() {
			return discount4;
		}
		public void setDiscount4(String discount4) {
			this.discount4 = discount4;
		}
		public String getOther4() {
			return other4;
		}
		public void setOther4(String other4) {
			this.other4 = other4;
		}
		public String getAccountd4() {
			return accountd4;
		}
		public void setAccountd4(String accountd4) {
			this.accountd4 = accountd4;
		}
		public String getAccounts4() {
			return accounts4;
		}
		public void setAccounts4(String accounts4) {
			this.accounts4 = accounts4;
		}
		public String getOthera4() {
			return othera4;
		}
		public void setOthera4(String othera4) {
			this.othera4 = othera4;
		}
		public String getDate5() {
			return date5;
		}
		public void setDate5(String date5) {
			this.date5 = date5;
		}
		public String getAccountcredited5() {
			return accountcredited5;
		}
		public void setAccountcredited5(String accountcredited5) {
			this.accountcredited5 = accountcredited5;
		}
		public String getAccount5() {
			return account5;
		}
		public void setAccount5(String account5) {
			this.account5 = account5;
		}
		public String getSales5() {
			return sales5;
		}
		public void setSales5(String sales5) {
			this.sales5 = sales5;
		}
		public String getAmountreceivables5() {
			return amountreceivables5;
		}
		public void setAmountreceivables5(String amountreceivables5) {
			this.amountreceivables5 = amountreceivables5;
		}
		public String getCash5() {
			return cash5;
		}
		public void setCash5(String cash5) {
			this.cash5 = cash5;
		}
		public String getDiscount5() {
			return discount5;
		}
		public void setDiscount5(String discount5) {
			this.discount5 = discount5;
		}
		public String getOther5() {
			return other5;
		}
		public void setOther5(String other5) {
			this.other5 = other5;
		}
		public String getAccountd5() {
			return accountd5;
		}
		public void setAccountd5(String accountd5) {
			this.accountd5 = accountd5;
		}
		public String getAccounts5() {
			return accounts5;
		}
		public void setAccounts5(String accounts5) {
			this.accounts5 = accounts5;
		}
		public String getOthera5() {
			return othera5;
		}
		public void setOthera5(String othera5) {
			this.othera5 = othera5;
		}
		
		@Column(name="gendate")
		private String gendate;
		public String getGendate() {
			return gendate;
		}
		public void setGendate(String gendate) {
			this.gendate = gendate;
		}
		public String getLogin_comp() {
			return login_comp;
		}
		public void setLogin_comp(String login_comp) {
			this.login_comp = login_comp;
		}
		public String getDeltby() {
			return deltby;
		}
		public void setDeltby(String deltby) {
			this.deltby = deltby;
		}
		
		


}
