package kimgibeom.dog.user.service;

import java.util.List;

import kimgibeom.dog.user.domain.User;

public interface UserService {
	int writeUser(User user);

	boolean idCheck(String userId);

	List<User> readUsers();

	String readuserPw(String userId);

	User findUserId(String userName, String userPhone);

	User findUserMail(String userId);

	boolean modPw(String userId, String userPw);

	boolean withdrawUser(String userId);
}