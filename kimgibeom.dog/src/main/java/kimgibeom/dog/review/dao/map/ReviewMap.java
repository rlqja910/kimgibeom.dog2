package kimgibeom.dog.review.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kimgibeom.dog.review.domain.Pagination;
import kimgibeom.dog.review.domain.Review;

public interface ReviewMap {
	List<Review> getAdminReviews();
	
	List<Review> getUserReviews(@Param("pagination") Pagination pagination);
	
	Review getReview(int reviewNum);
	
	int addReview(Review review);
	
	int modifyReview(Review review);
	
	int modifyReviewWithOutImg(Review review);
	
	int delReview(int reviewNum);
	
	int getUserReviewCnt();
}
