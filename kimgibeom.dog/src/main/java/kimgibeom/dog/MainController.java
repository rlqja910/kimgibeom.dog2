package kimgibeom.dog;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kimgibeom.dog.dog.service.DogService;

@Controller
@RequestMapping
public class MainController {
	@Autowired
	private DogService dogService;

	@RequestMapping("/admin") // admin 페이지 메인
	public String adminMain() {
		return "admin/main";
	}

	@RequestMapping("/") // 사용자 페이지 메인
	public String userMain(Model model) {
		Date today = new Date();

		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");

		int totalDogCnt = dogService.readTotalAbandonDogsCnt();
		int todayDogCnt = dogService.readTodayFindDogsCnt(date.format(today));
		int afterAdoptDogCnt = dogService.readAfterAdoptDogCnt();

		model.addAttribute("totalDogCnt", totalDogCnt);
		model.addAttribute("todayDogCnt", todayDogCnt);
		model.addAttribute("afterAdoptDogCnt", afterAdoptDogCnt);

		return "main";
	}
}