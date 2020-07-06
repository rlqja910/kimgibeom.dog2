package kimgibeom.dog.adopt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.adopt.domain.Adopt;
import kimgibeom.dog.adopt.service.AdoptService;
import kimgibeom.dog.dog.domain.Dog;
import kimgibeom.dog.user.domain.User;

@Controller
@RequestMapping("/adopt")
public class AdoptController {
	@Autowired
	private AdoptService adoptService;

	@RequestMapping("/userPwConfirm")
	@ResponseBody
	public boolean userPwConfirmProc(String userPw, HttpServletRequest request) {
		boolean isCorrect = false;
		String userId = (String) request.getSession().getAttribute("userId");
		String originalUserPw = adoptService.readUserPw(userId);

		if (userPw.equals(originalUserPw)) {
			isCorrect = true;
		}

		return isCorrect;
	}

	@RequestMapping("/reservation")
	@ResponseBody
	public boolean reservationProc(int dogNum, HttpServletRequest request, Model model) {
		String userId = (String) request.getSession().getAttribute("userId");

		List<Adopt> reservationUsersForDogNum = adoptService.readReservationUsersForDogNum(dogNum);

		for (Adopt adopt : reservationUsersForDogNum) {
			if (adopt.getUserId().equals(userId)) {
				model.addAttribute("alreadyReservation", true); // 예약이 이미 되어있다면 모델에 기록하고 바로 false 리턴
				return false;
			}
		}

		if (adoptService.writeReservation(new Adopt(1, "1111-11-11", new Dog(dogNum), new User(userId)))) {
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping("/adoptReservationView")
	public void adoptReservationView() {

	}
}