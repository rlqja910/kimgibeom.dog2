package kimgibeom.dog.user.controller;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.user.domain.User;
import kimgibeom.dog.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/mypage")
	public String userMypage() {
		return "user/userInfoPwConfirm";
	}

	@RequestMapping("/userWithdraw")
	public String userWithdraw() { 
		return "user/userWithdraw";
	}

	@RequestMapping("/login")
	public void userLogin() {
	}

	@RequestMapping("/join") // 회원가입 버튼 누를시
	public void userJoin() {
	}

	@RequestMapping("/idFindIn") // 아이디찾기 입력 화면 이동
	public void idFindIn() {
	}

	@RequestMapping("/idFindOut") // 아이디 찾은 화면 이동
	public void idFindOut() {
	}

	@RequestMapping("/pwFindIn") // 비밀번호찾기 입력 화면 이동
	public void pwFindIn() {
	}

	@RequestMapping("/pwFindOut") // 비밀번호 새롭게 설정하는 화면 이동
	public void pwFindOut() {
	}

	@RequestMapping("/joinProc") // 회원가입ㄱ
	@ResponseBody
	public void userJoinProc(User user) {
		userService.writeUser(user);
	}

	@RequestMapping("/idCheck") // 회원가입시 중복확인
	@ResponseBody
	public boolean userIdCheck(String userId) {
		if (userService.idCheck(userId)) { // 중복이 아니면 true로 출력
			return true;
		} else { // 이미 사용중인 ID인 경우 false 값 return
			return false;
		}
	}

	@RequestMapping("/loginProc") // 로그인 정보확인
	@ResponseBody
	public int userLoginProc(HttpServletRequest request, String userId, String userPw) {
		String pw = userService.readuserPw(userId); // 입력한 ID의 PW를 추출// null일경우 아이디가 없다는 의미

		if (userPw.equals(pw)) { // 로그인 성공
			request.getSession().setAttribute("userId", userId);

			return 1;// 로그인 성공
		} else if (pw == null) { // 아이디가 없음
			return 0;// 아이디가 아예 없음
		} else {
			return -1; // 암호가 틀림
		}
	}

	@RequestMapping("/logout")
	public String userLogout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/user/login";
	}

	// 아이디 찾기
	@RequestMapping(value = "/idFindProc", method = RequestMethod.POST)
	@ResponseBody
	public User idFindIn(String name, String phone) {
		User user = userService.findUserId(name, phone);
		return user;
	}

	// 비밀번호 찾기위한 이에일 전송
	@RequestMapping(value = "/pwFindProc", method = RequestMethod.POST)
	@ResponseBody
	public String pwFindIn(String userId, String inEmail) {
		User user = userService.findUserMail(userId);
		String userEmail = user.getUserEmail();

		MimeMessage message = mailSender.createMimeMessage();
		int num = (int) (Math.random() * 1000000);
		String code = Integer.toString(num);

		try {
			message.addRecipient(RecipientType.TO, new InternetAddress(userEmail));
			message.setSubject("BEFF - 유기견 보호소 인증번호 발송");
			message.setText("<h2>안녕하세요. BEFF 입니다</h2>" + 
					"<p>BEFF 비밀번호 찾기 인증번호는 다음과 같습니다</p><br>" + 
					"<p style='color:red;'>인증번호 6자리를 진행 중인 화면에 입력해 주세요</p>" + 
					"<div style='border: 1px solid black; width:400px; margin: 20px 0px 100px 0px; padding:30px; border-raius:3px; box-shadow: 3px 3px 3px 3px #999;'>" + 
					"	<ul>" + 
					"		<li><p style='font-size:large;font-weight:bold;'>인증번호: <span style=\"color:blue; font-weight:bold;\">"+ code +"</span></p></li>" + 
					"	</ul>" + 
					"</div>" + 
					"<h4><strong>감사합니다</strong></h4>","utf-8", "html");
		} catch (Exception e) {
		}

		// 사용자email과 입력email이 같으면 메일 전송
		if (userEmail.equals(inEmail)) {
			mailSender.send(message);
		} else {
			return "0";
		}
		return code;
	}

	// 유저의 새 비밀번호 설정
	@RequestMapping(value = "/pwFindOutProc", method = RequestMethod.POST)
	@ResponseBody
	public boolean pwFindOut(String userId, String userPw) {
		return userService.modPw(userId, userPw);
	}

	// 회원 탈퇴
	@RequestMapping(value = "/pwCheck", method = RequestMethod.POST)
	@ResponseBody
	public boolean pwCheck(String userId, String userPw, HttpServletRequest request) {
		String pw = userService.readuserPw(userId);

		if (pw.equals(userPw)) {
			userService.withdrawUser(userId);
			request.getSession().invalidate();

			return true;
		} else {
			return false;
		}
	}
}