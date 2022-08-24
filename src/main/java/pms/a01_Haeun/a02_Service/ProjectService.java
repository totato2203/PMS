package pms.a01_Haeun.a02_Service;
//private ProjectDao daoProject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import pms.a01_Haeun.a03_DAO.ProjectDao;
import pms.a01_Haeun.a04_VO.Calendar;
import pms.a01_Haeun.a04_VO.Emp;
import pms.a01_Haeun.a04_VO.PrjEmp;
import pms.a01_Haeun.a04_VO.Project;

@Service
public class ProjectService {
	@Autowired(required=false)
	private ProjectDao daoPRJ;
	
	// 프로젝트 조회
	public List<Project> getProjectList(Project sch){
		return daoPRJ.getProjectList(sch);
	}	
	public Project getUptFormPrj(String prjNo) {
		return daoPRJ.getUptFormPrj(prjNo);
	}
	public void updatePrj(Project upt) {
		daoPRJ.updatePrj(upt);
	}
	
	// 프로젝트 등록
	public void insertPrj(Project ins) {
		daoPRJ.insertProject(ins);
	}	
	// 프로젝트 캘린더
	public List<Calendar> getPrjCalendar(String prjNo) {
		return daoPRJ.getPrjCalendar(prjNo);
	}

	// 프로젝트 인적자원 리스트
	public List<PrjEmp> getPrjEmpList(String prjNo) {
		return daoPRJ.getPrjEmpList(prjNo);
	}
	// 프로젝트 인적자원 삭제 와 등록
	public void deletePrjEmp(String prjNo) {
		daoPRJ.deletePrjEmp(prjNo);
	}
	public void insertPrjEmp(PrjEmp ins) {
		daoPRJ.insertPrjEmp(ins);
	}
	public void delEmp(PrjEmp del) {
		daoPRJ.delEmp(del);
	}
	public List<Emp> getEmpN(String prjNo){
		return daoPRJ.getEmpN(prjNo);
	}
		




	
}
