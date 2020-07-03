package kimgibeom.dog.review.dao;

import java.util.List;

import kimgibeom.dog.review.domain.Pagination;
import kimgibeom.dog.review.domain.Review;

public interface ReviewDao {
	List<Review> getAdminReviews();
	
	List<Review> getUserReviews(Pagination pagination);
	
	Review getReview(int reviewNum);
	
	int addReview(Review review);
	
	int modifyReview(Review review);
	
	int delReview(int reviewNum);
	
	int getUserReviewCnt();
}
