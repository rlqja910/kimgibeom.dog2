package kimgibeom.dog.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kimgibeom.dog.user.domain.UserPagination;
import kimgibeom.dog.user.domain.UserSearch;
import kimgibeom.dog.user.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
	@Autowired private UserService userService;
	
	@RequestMapping("/userListView")
	public String moveUserListView(Model model, @RequestParam(required=false, defaultValue="1") int page,
								   @RequestParam(required=false, defaultValue="1") int range,
								   @RequestParam(required=false) String keyword,
								   @RequestParam(required=false, defaultValue="userId") String searchType){
		UserSearch userSearch = new UserSearch();
		
		if(keyword == null) keyword = "";
		userSearch.setSearchType(searchType);
		userSearch.setKeyword(keyword);
		
		System.out.println(page);
		System.out.println(range);
		System.out.println(keyword);
		System.out.println(searchType);
				
		int listCnt = userService.readUserListCnt(userSearch);
		userSearch.pageInfo(page, range, listCnt);

		model.addAttribute("pagination", userSearch);
		model.addAttribute("userList", userService.readUserList(userSearch));
		
		return "admin/user/userListView";
	}
}
