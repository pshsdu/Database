package loginManager;

public class LogonDataBeanManager {
	private String ManagerId;
	private String deptno;
	private String ManagerName;
	
	public String getManagerId() {
		return ManagerId;
	}
	public void setManagerId(String manager_id) {
		this.ManagerId = manager_id;
	}
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	public String getManagerName() {
		return ManagerName;
	}
	public void setManagerName(String manager_name) {
		this.ManagerName = manager_name;
	}
}
