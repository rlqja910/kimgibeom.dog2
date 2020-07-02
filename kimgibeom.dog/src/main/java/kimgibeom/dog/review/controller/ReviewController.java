package kimgibeom.dog.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.review.domain.ReviewReply;
import kimgibeom.dog.review.service.ReviewReplyService;
import kimgibeom.dog.review.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	@Autowired private ReviewService reviewService;
	@Autowired private ReviewReplyService reviewReplyService;
	
	@RequestMapping("/reviewListView")
	public String reviewList(Model model) {
		model.addAttribute("reviewList", reviewService.readReviews());
		return "review/reviewListView";
	}
	
	@RequestMapping("/reviewView")
	public String reviewView(Model model, @RequestParam("reviewNum") int reviewNum) {
		model.addAttribute("reviewView", reviewService.readReview(reviewNum));
		model.addAttribute("replyList", reviewReplyService.readReviewReplies(reviewNum));
		
		return "review/reviewView";
	}
	
	@ResponseBody
	@RequestMapping("/addReply")
	public int addReply(@RequestParam("content") String content, @RequestParam("userId") String userId,
					@RequestParam("reviewNumStr") String reviewNumStr, @ModelAttribute("reviewReply") ReviewReply reviewReply) {
		int reviewNum = Integer.parseInt(reviewNumStr);
		reviewReply = new ReviewReply(reviewNum, userId, content);
		
		return reviewReplyService.writeReviewReply(reviewReply);
	}
	
	@ResponseBody
	@RequestMapping("/delReply")
	public int delReply(@RequestParam("replyNumStr") String replyNumStr) {
		int replyNum = Integer.parseInt(replyNumStr);
		return reviewReplyService.removeReviewReply(replyNum);
	}
}
