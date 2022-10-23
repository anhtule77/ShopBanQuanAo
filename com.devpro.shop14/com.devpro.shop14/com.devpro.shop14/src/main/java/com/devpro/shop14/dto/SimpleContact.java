package com.devpro.shop14.dto;

public class SimpleContact {

	private String txtEmail;
	private String txtContent;
	private boolean chkcheckbox;
	
	public String getTxtEmail() {
		return txtEmail;
	}
	public void setTxtEmail(String txtEmail) {
		this.txtEmail = txtEmail;
	}
	public String getTxtContent() {
		return txtContent;
	}
	public void setTxtContent(String txtContent) {
		this.txtContent = txtContent;
	}
	public boolean isChkcheckbox() {
		return chkcheckbox;
	}
	public void setChkcheckbox(boolean chkcheckbox) {
		this.chkcheckbox = chkcheckbox;
	}
}
