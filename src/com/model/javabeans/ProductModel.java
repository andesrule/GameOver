package com.model.javabeans;

import java.sql.SQLException;
import java.util.Collection;

public interface ProductModel {

	public  void doSave(ProductBean product) throws SQLException;
	public void doDelete(int id) throws SQLException;
	public  Collection<ProductBean> doRetrieveByPlatform(String tipoPiattaforma) throws SQLException;
	public  Collection<ProductBean> doRetrieveAll() throws SQLException;
	public 	ProductBean doRetrieveByKey(int id) throws SQLException;
	
	
}
