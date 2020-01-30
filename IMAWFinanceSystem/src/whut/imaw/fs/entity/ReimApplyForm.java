package whut.imaw.fs.entity;

public class ReimApplyForm {
	private int id;   // 数据库中自动生成，自增
	private String projectId;   // 项目ID
	private String projectName;  //  项目名称
	private String applicant;     //申请人
	private double applySum;   // 申请金额
	private String abstracts;     // 摘要
	private String applyTime;    //申请时间
	private String payAccount;  // 支付宝账户
	private String payAccountId;   // 支付宝id
	private String projectEvidence;   // 报销凭证
	private String expectPayedTime;   //  预期报销日期
	private String applicantRemarks;   //  申请人备注
	
	private String settleRemarks;  // 结算人备注
	private String payedTime;    // 结算日期
	
	public static final int   AUDITING=0;  //审核中
	public static final int  PASS=1;        //通过
	public static final int  UNPASS= -1;  // 未通过
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public double getApplySum() {
		return applySum;
	}
	public void setApplySum(double applySum) {
		this.applySum = applySum;
	}
	public String getAbstracts() {
		return abstracts;
	}
	public void setAbstracts(String abstracts) {
		this.abstracts = abstracts;
	}
	public String getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}
	public String getPayAccount() {
		return payAccount;
	}
	public void setPayAccount(String payAccount) {
		this.payAccount = payAccount;
	}
	public String getPayAccountId() {
		return payAccountId;
	}
	public void setPayAccountId(String payAccountId) {
		this.payAccountId = payAccountId;
	}
	public String getProjectEvidence() {
		return projectEvidence;
	}
	public void setProjectEvidence(String projectEvidence) {
		this.projectEvidence = projectEvidence;
	}
	public String getExpectPayedTime() {
		return expectPayedTime;
	}
	public void setExpectPayedTime(String expectPayedTime) {
		this.expectPayedTime = expectPayedTime;
	}
	public String getApplicantRemarks() {
		return applicantRemarks;
	}
	public void setApplicantRemarks(String applicantRemarks) {
		this.applicantRemarks = applicantRemarks;
	}
	public String getSettleRemarks() {
		return settleRemarks;
	}
	public void setSettleRemarks(String settleRemarks) {
		this.settleRemarks = settleRemarks;
	}
	public String getPayedTime() {
		return payedTime;
	}
	public void setPayedTime(String payedTime) {
		this.payedTime = payedTime;
	}
	

	
}
