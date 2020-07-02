package kimgibeom.dog.report.dao.map;

import java.util.List;

import kimgibeom.dog.report.domain.Criteria;
import kimgibeom.dog.report.domain.Report;

public interface ReportMap {
	List<Report> getReports(Criteria cri);
	
	int getListCnt();

	Report getReport(int reportNum);

	int addReport(Report report);

	int modifyReport(Report report);
	
	int modifyViewCnt(int reportNum);

	int delReport(int reportNum);
}
