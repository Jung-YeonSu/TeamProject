package com.prj.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.prj.companys.vo.CompanyVo;
import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.PostVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;

@Mapper
public interface MainMapper {
	List<CityVo> 	getCityList();
	List<DutyVo> 	getDutyList();
	List<CareerVo> 	getCareerList();
	List<EmpVo>		getEmpList();
	List<SkillVo> 	getSkillList();
	
	
	PostVo 			getPost(String post_idx);
    List<PostVo> 	getPostList();
    List<PostVo> 	getFilteredPosts(@Param("city_id")   String cityId,
	                                 @Param("duty_id") 	 String dutyId,
	                                 @Param("career_id") String careerId,
	                                 @Param("emp_id") 	 String empId,
	                                 @Param("skill_id")  String skillId);
	
	List<ResumeListVo> getResumeList();
	
	CompanyVo getCompany(String post_idx);
	
}