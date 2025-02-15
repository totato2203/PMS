package pms.a01_Jongdae.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Jongdae.a02_Service.CostNScopeService;
import pms.a01_Jongdae.a04_VO.CostPrj;
import pms.a01_Jongdae.a04_VO.Risk;

@Controller
public class CostNScopeController {
	@Autowired(required = false)
	private CostNScopeService service;
	
	// http://localhost:7080/pms/cosPrjList.do
	// http://106.10.18.69:5050/pms/cosPrjList.do
	@RequestMapping("cosPrjList.do")
	public String cosPrjList(CostPrj sch, Model d) {
		d.addAttribute("costPrjList", service.getPrjList(sch));
		return "WEB-INF\\views\\a01_Jongdae\\costProjectList_backup.jsp";
	}
	// http://localhost:7080/pms/cosPrjUpdateForm.do?prjno=P1000	
	@RequestMapping("cosPrjUpdateForm.do")
	public String cosPrjUpdateForm(String prjno, Model d) {
		d.addAttribute("prjcost", service.getPrj(prjno));
		return "WEB-INF\\views\\a01_Jongdae\\costPrjUpdate.jsp";
	}
	@RequestMapping("costPrjUpdate.do")
	public String costPrjUpdate(CostPrj upt, Model d) {
		service.updateCostPrj(upt);
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\a01_Jongdae\\costPrjUpdate.jsp";
	}
	
	
	
	
	/*
	// http://localhost:7080/pms/cosPrjList.do
	@RequestMapping("cosPrjList.do")
	public String cosPrjList() {
		return "WEB-INF\\views\\a01_Jongdae\\costProjectList.jsp";
		// return "WEB-INF\\views\\a01_Jongdae\\test.jsp";
	}
	
	// http://localhost:7080/pms/ajaxCostPrj.do
	@RequestMapping("ajaxCostPrj.do")
	public String ajaxCostPrj(CostPrj sch, Model d) {
		d.addAttribute("costPrjList", service.getPrjList(sch));
		return "pageJsonReport";
	}
	
	// http://localhost:7080/pms/ajaxHcost.do
	@RequestMapping("ajaxHcost.do")
	public String ajaxHcost(HCost hc, Model d) {
		d.addAttribute("hcList", service.getHCostList(hc));
		return "pageJsonReport";
	}
	*/
	
	
	// http://localhost:7080/pms/rmList.do
	// http://localhost:7080/pms/rmList.do?prjno=P1000
	@RequestMapping("rmList.do")
	public String cost(String prjno, Model d) {
		d.addAttribute("rmList", service.getRoadMapList(prjno));
		d.addAttribute("prjhcostlist", service.getPrjHCostList(prjno));
		d.addAttribute("prjcost", service.getPrj(prjno));
		return "WEB-INF\\views\\a01_Jongdae\\costRoadMapList.jsp";
	}
	// http://localhost:7080/pms/scope.do?prjno=P1000
	@RequestMapping("scope.do")
	public String scopeInvoice(String prjno, Model d) {
		d.addAttribute("PMInfo", service.getPMInfo(prjno));
		d.addAttribute("scInfo", service.getScInfo(prjno));
		d.addAttribute("rmList", service.getScRMList(prjno));
		d.addAttribute("prjInfo", service.getScPrj(prjno));
		d.addAttribute("hcostsum", service.getHCostSum(prjno));
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	// 범위 기술서 승인, 반려
	@RequestMapping("yesScopeStmt.do")
	public String yesScopeStmt(String scpStmtNo, Model d) {
		service.yesScopeStmt(scpStmtNo);
		d.addAttribute("proc", "upt"); 
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	@RequestMapping("noScopeStmt.do")
	public String noScopeStmt(String scpStmtNo, Model d) {
		service.noScopeStmt(scpStmtNo);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	
	// 위험 관리 페이지
	// http://localhost:7080/pms/risk.do
	// http://localhost:7080/pms/risk.do?rplanno=RP1000
	// http://106.10.18.69:5050/pms/risk.do?rplanno=RP1000
	@RequestMapping("risk.do")
	public String risk(String rplanno, Model d) {
		d.addAttribute("risk", service.getRiskList(rplanno));
		return "WEB-INF\\views\\a01_Jongdae\\risk.jsp";
	}
	/*
	// http://localhost:7080/pms/ajaxRisk.do?rplanno=RP1000
	@RequestMapping("ajaxRisk.do")
	public String ajaxRisk(String rplanno, Model d) {
		d.addAttribute("risk", service.getRiskList(rplanno));
		return "pageJsonReport";
	}
	*/
	// http://localhost:7080/pms/riskInsertForm.do?rplanno=RP1000
	@RequestMapping("riskInsertForm.do")
	public String riskInsertForm(String rplanno, Model d) {
		d.addAttribute("rplanno", rplanno);
		return "WEB-INF\\views\\a01_Jongdae\\riskInsert.jsp";
	}
	@RequestMapping("riskInsert.do")
	public String riskInsert(Risk ins, Model d) {
		service.insertRisk(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Jongdae\\riskInsert.jsp";
	}
	@RequestMapping("riskUpdate.do")
	public String updateRisk(Risk upt, Model d) {
		service.updateRisk(upt);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Jongdae\\riskUpdate.jsp";
	}
	@RequestMapping("deleteRisk.do")
	public String deleteRisk(@RequestParam("riskNo") String riskNo, Model d) {
		service.deleteRisk(riskNo);
		return "WEB-INF\\views\\a01_Jongdae\\risk.jsp";
	}
	// http://localhost:7080/pms/riskInsertForm.do?riskNo=R1000
	@RequestMapping("riskUpdateForm.do")
	public String riskUpdateForm(String riskNo, Model d) {
		d.addAttribute("risk", service.getRiskDetail(riskNo));
		return "WEB-INF\\views\\a01_Jongdae\\riskUpdate.jsp";
	}
	// http://localhost:7080/pms/prjempManage.do
	@RequestMapping("prjempManage.do")
	public String empManage() {
		return "WEB-INF\\views\\a01_Jongdae\\dailySchedule.jsp";
	}
	
	
}
