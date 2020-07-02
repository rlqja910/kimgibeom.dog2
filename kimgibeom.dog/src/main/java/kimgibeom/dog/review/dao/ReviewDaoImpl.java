package kimgibeom.dog.review.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dog.review.dao.map.ReviewMap;
import kimgibeom.dog.review.domain.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMap reviewMap;
	
	@Override
	public List<Review> getReviews(){
		return reviewMap.getReviews();
	}
	
	@Override
	public Review getReview(int reviewNum) {
		return reviewMap.getReview(reviewNum);
	}
	
	@Override
	public int addReview(Review review) {
		return reviewMap.addReview(review);
	}
	
	@Override
	public int modifyReview(Review review) {
		return reviewMap.modifyReview(review);
	}
	
	@Override
	public int delReview(int reviewNum) {
		return reviewMap.delReview(reviewNum);
	}
}
