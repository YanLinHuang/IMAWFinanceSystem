package whut.imaw.fs.entity;

public class User {
	private int  id;   //  数据库中自动生成的id
	
	public static final int normalUser = 1;   // 1表示普通用户
	public static final int financialUser =2;  // 2 表示财务人员
	public static final int adminUser = 3;    // 3 表示管理员
	
	private String accountNumber;   // 账号
	private String password;		// 密码
	private String chineseName;  //  中文名
	
	public static final int notLogin=0;  //  0表示从未登录过
	public static final int logedin=1;   // 1 表示登录过

	private String phoneNumber;   //电话号码
	private String payAccount;       //支付宝账户
	private String payAccountId;   //支付宝ID
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getChineseName() {
		return chineseName;
	}
	public void setChineseName(String chineseName) {
		this.chineseName = chineseName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
	
}
