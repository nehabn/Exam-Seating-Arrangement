package in.lanif;


public class StuMember {

	private String uname, dob, usn, sem, branch;
	
	public StuMember() { //default constructor
		super();
	}

	public StuMember(String uname, String dob, String usn, String sem, String branch) {
		super();
		this.uname = uname;
		this.dob = dob;
		this.usn = usn;
		this.sem = sem;
		this.branch = branch;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getUsn() {
		return usn;
	}

	public void setUsn(String usn) {
		this.usn = usn;
	}

	public String getSem() {
		return sem;
	}

	public void setSem(String sem) {
		this.sem = sem;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
}
