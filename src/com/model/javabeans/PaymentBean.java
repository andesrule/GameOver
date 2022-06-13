package com.model.javabeans;

import java.io.Serializable;
import java.sql.Date;

public class PaymentBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idPagamento,cvv;
	private String ncarta;
	private Date dataScad;
	private int idUtenteRef;
	
	public int getIdUtenteRef() {
		return idUtenteRef;
	}
	public void setIdUtenteRef(int idUtenteRef) {
		this.idUtenteRef = idUtenteRef;
	}
	public PaymentBean() {
		super();
	}
	public PaymentBean(int idPagamento, int cvv, String ncarta, Date dataScad) {
		super();
		this.idPagamento = idPagamento;
		this.cvv = cvv;
		this.ncarta = ncarta;
		this.dataScad = dataScad;
	}
	public int getIdPagamento() {
		return idPagamento;
	}
	public void setIdPagamento(int idPagamento) {
		this.idPagamento = idPagamento;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public String getNcarta() {
		return ncarta;
	}
	public void setNcarta(String ncarta) {
		this.ncarta = ncarta;
	}
	public Date getDataScad() {
		return dataScad;
	}
	public void setDataScad(Date dataScad) {
		this.dataScad = dataScad;
	}
	
	
	
}
