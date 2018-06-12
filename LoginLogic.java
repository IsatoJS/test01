package model;

public class LoginLogic {
	public boolean execute (User user) {
		//ユーザー名を取得するロジックは後で実装
		if (user.getUser_id().equals("test") &&
			user.getPassword().equals("1234")) {
			user.setUser_name("佐藤");

			return true;
		}
		return false;
	}
}
