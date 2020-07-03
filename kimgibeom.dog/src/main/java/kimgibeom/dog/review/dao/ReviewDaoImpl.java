package kimgibeom.dog.review.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dog.review.dao.map.ReviewMap;
import kimgibeom.dog.review.domain.Pagination;
import kimgibeom.dog.review.domain.Review;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMap reviewMap;
	
	@Override
	public List<Review> getAdminReviews(){
		return reviewMap.getAdminReviews();
	}
	
	@Override
	public List<Review> getUserReviews(Pagination pagination){
		return reviewMap.getUserReviews(pagination);
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
	public int modifyReviewWithOutImg(Review review) {
		return reviewMap.modifyReviewWithOutImg(review);
	}
	
	@Override
	public int delReview(int reviewNum) {
		return reviewMap.delReview(reviewNum);
	}
	
	@Override
	public int getUserReviewCnt() {
		return reviewMap.getUserReviewCnt();
	}
}
