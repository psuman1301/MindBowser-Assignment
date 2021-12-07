package com.suman.springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suman.springboot.model.EmployeeModel;
import com.suman.springboot.model.LoginModel;
import com.suman.springboot.model.ManagerModel;

@Controller
public class ManagerController {

	Map<String,ManagerModel> managerMap=new HashMap();
	Map<String,EmployeeModel> employeeMap=new HashMap();

	
	@GetMapping("/login")
	public String getLoginPage() {
		return "Manager_Login";
	}
	
	@GetMapping("/signup")
	public String getSignupPage() {
		return "Manager_Signup";
	}
	
	@GetMapping("/register")
	public String registerEmployee(@RequestParam String mngrId,Model model) {
		model.addAttribute("mngrId",mngrId);
		return "Employee_Registration";
	}
	
	@PostMapping("/addManager")
	public String addManagerDtls(ManagerModel manager) {
		
		managerMap.put(manager.getUserName(), manager);
		return "Manager_Login";
	}
	
	@PostMapping("/loginManager")
	public String loginManager(LoginModel login, Model model) {
		
		ManagerModel manager = managerMap.get(login.getUserName());
		if(login.getUserName().equals(manager.getUserName())){
			if(login.getPassword().equals(manager.getPassword())) {
				System.out.println("Login Successfully");
			}
			else
				System.out.println("Invalid credentials");
		}
		else
			System.out.println("Invalid credentials");
		model.addAttribute("mngrId",login.getUserName());
		return "Home_Screen";
	}
	
	@PostMapping("/addEmployee")
	public String registerEmployee(EmployeeModel employee,Model model) {
	
		employeeMap.put(employee.getEmpId(), employee);
		
		List<EmployeeModel> list=new ArrayList();
		EmployeeModel employeeModel = employeeMap.get(employee.getEmpId());
		if(employee.getMngrId().equals(employeeModel.getMngrId())) {
			list.add(employeeMap.get(employee.getEmpId()));
		}
		model.addAttribute("empList",list);
		return "Home_Screen";
	}
}
