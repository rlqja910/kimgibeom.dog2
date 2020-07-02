package kimgibeom.dog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class MainController {
	@RequestMapping("/admin") // admin 페이지 메인
	public String adminMain() {
		return "admin/main";
	}

	@RequestMapping("/") // 사용자 페이지 메인
	public String userMain() {
		return "main";
	}
}