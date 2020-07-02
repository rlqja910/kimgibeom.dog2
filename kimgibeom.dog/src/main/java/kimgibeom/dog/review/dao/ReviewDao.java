package kimgibeom.dog.review.dao;

import java.util.List;

import kimgibeom.dog.review.domain.Review;

public interface ReviewDao {
	List<Review> getReviews();
	
	Review getReview(int reviewNum);
	
	int addReview(Review review);
	
	int modifyReview(Review review);
	
	int delReview(int reviewNum);
}
