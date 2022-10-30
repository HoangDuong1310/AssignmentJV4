package service;

import model.AccountModel;
import repository.AccountRepository;

public class AuthenticationService {
	
	private final AccountRepository accountRepo = new AccountRepository();
public AccountModel authenticate(String username , String password) {
	//kiểm tra tài khoản tồn tại
	AccountModel account = accountRepo.getByUserName(username);
	if (account == null) {
		return null; // không hợp lệ
	}
	
	//kiểm tra mật khẩu trùng khớp
	//nếu không khớp thì trả về hợp lệ
	if (!account.getPassword().equals(password)) {
		
		return null;
	}
	return account;//OKKK
}
}
