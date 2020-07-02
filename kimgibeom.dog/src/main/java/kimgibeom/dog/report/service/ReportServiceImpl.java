package kimgibeom.dog.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimgibeom.dog.report.dao.ReportDao;
import kimgibeom.dog.report.domain.Criteria;
import kimgibeom.dog.report.domain.Report;

@Service
public class ReportServiceImpl implements ReportService {
	@Autowired
	private ReportDao reportDao;

	@Override
	public List<Report> readReports(Criteria cri) {
		return reportDao.getReports(cri);
	}
	
	@Override
	public int readListCnt() {
		return reportDao.getListCnt();
	}

	@Override
	public Report readReport(int reportNum) {
		return reportDao.getReport(reportNum);
	}

	@Override
	public int writeReport(Report report) {
		return reportDao.addReport(report);
	}

	@Override
	public int updateReport(Report report) {
		return reportDao.modifyReport(report);
	}
	
	@Override
	public int updateViewCnt(int reportNum) {
		return reportDao.modifyViewCnt(reportNum);
	}

	@Override
	public int removeReport(int reportNum) {
		return reportDao.delReport(reportNum);
	}
}
