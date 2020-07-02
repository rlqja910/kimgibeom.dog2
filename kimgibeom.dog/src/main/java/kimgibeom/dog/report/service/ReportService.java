package kimgibeom.dog.report.service;

import java.util.List;

import kimgibeom.dog.report.domain.Criteria;
import kimgibeom.dog.report.domain.Report;

public interface ReportService {
	List<Report> readReports(Criteria cri);

	int readListCnt();

	Report readReport(int reportNum);

	int writeReport(Report report);

	int updateReport(Report report);
	
	int updateViewCnt(int reportNum);

	int removeReport(int reportNum);
}
