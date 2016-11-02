package edu.uic.ids.model;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class UserBean implements Serializable, Cloneable{
	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private String dbms;
	private String dbmsHost;
	private String dBSchema;

	public UserBean() {
		this.userName = "f16g321";
		this.password = "";
		this.dbms = "MySQL";
		this.dbmsHost = "131.193.209.57";
		this.dBSchema = "f16g321";

	}
	@PostConstruct
	 public void init() {
	 }
	public UserBean clone() throws CloneNotSupportedException {
		UserBean cloned = (UserBean) super.clone();
		return cloned;
	}
	

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the dbms
	 */
	public String getDbms() {
		return dbms;
	}

	/**
	 * @param dbms
	 *            the dbms to set
	 */
	public void setDbms(String dbms) {
		this.dbms = dbms;
	}

	/**
	 * @return the dbmsHost
	 */
	public String getDbmsHost() {
		return dbmsHost;
	}

	/**
	 * @param dbmsHost
	 *            the dbmsHost to set
	 */
	public void setDbmsHost(String dbmsHost) {
		this.dbmsHost = dbmsHost;
	}

	/**
	 * @return the dBSchema
	 */
	public String getDBSchema() {
		return dBSchema;
	}

	/**
	 * @param dBSchema
	 *            the dBSchema to set
	 */
	public void setDBSchema(String dBSchema) {
		this.dBSchema = dBSchema;
	}

}
