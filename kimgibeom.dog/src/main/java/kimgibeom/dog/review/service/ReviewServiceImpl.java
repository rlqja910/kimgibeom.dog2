package kimgibeom.dog.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimgibeom.dog.review.dao.ReviewDao;
import kimgibeom.dog.review.domain.Pagination;
import kimgibeom.dog.review.domain.Review;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired private ReviewDao reviewDao;
	
	@Override
	public List<Review> readAdminReviews(){
		return reviewDao.getAdminReviews();
	}
	
	@Override
	public List<Review> readUserReviews(Pagination pagination){
		return reviewDao.getUserReviews(pagination);
	}
	
	@Override
	public Review readReview(int reviewNum) {
		return reviewDao.getReview(reviewNum);
	}
	
	@Override
	public int writeReview(Review review) {
		return reviewDao.addReview(review);
	}
	
	@Override
	public int updateReview(Review review) {
		return reviewDao.modifyReview(review);
	}
	
	@Override
	public int removeReview(int reviewNum) {
		return reviewDao.delReview(reviewNum);
	}
	
	@Override
	public int readUserReviewCnt() {
		return reviewDao.getUserReviewCnt();
	}
}
