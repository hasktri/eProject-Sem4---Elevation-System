package managerbean;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

import dao.ComplaintDAO;
import dao.UserDAO;
import dto.ComplaintDTO;
import dto.UserDTO;

@ManagedBean(name = "complaintBean")
public class ComplaintBean {

	public static final long serialVersionUID = 1L;
	private ComplaintDTO cpl = new ComplaintDTO();
	private List<ComplaintDTO> listComplaint;
	public List<ComplaintDTO> lcpl;
	public ComplaintDTO getCpl() {
		return cpl;
	}

	public void setCpl(ComplaintDTO cpl) {
		this.cpl = cpl;
	}

	public List<ComplaintDTO> getListComplaint() {
		return listComplaint;
	}

	public void setListComplaint(List<ComplaintDTO> listComplaint) {
		this.listComplaint = listComplaint;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ComplaintBean(ComplaintDTO cpl, List<ComplaintDTO> listComplaint) {
		super();
		this.cpl = cpl;
		this.listComplaint = listComplaint;
	}

	public ComplaintBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String insertCPL() {
		if (ComplaintDAO.InsertComplaint(cpl)) {
			return "register-success?faces-redirect=true";
		} else {
			System.out.println("err");
			return null;
		}

	}

	public List<ComplaintDTO> getListComplaintDTOs() {
		lcpl = new ComplaintDAO().findallComplaint();
System.out.println("size" +lcpl.size());
		
		return lcpl;
	}
	
	public List<UserDTO> getlu(){
		List<UserDTO> us = new UserDAO().findid(lcpl);
		for (UserDTO userDTO : us) {
			//System.out.println(userDTO.getFullName() + " " + userDTO.getEmail());
		}
		
		return us;
	}

}
