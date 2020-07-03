package kimgibeom.dog.review.service;

import java.util.List;

import kimgibeom.dog.review.domain.Pagination;
import kimgibeom.dog.review.domain.Review;

public interface ReviewService {
	List<Review> readAdminReviews();
	
	List<Review> readUserReviews(Pagination pagination);
	
	Review readReview(int reviewNum);
	
	int writeReview(Review review);
	
	int updateReview(Review review);
	
	int removeReview(int reviewNum);
	
	int readUserReviewCnt();
}
