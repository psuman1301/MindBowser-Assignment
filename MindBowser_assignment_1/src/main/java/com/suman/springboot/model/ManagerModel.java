package com.suman.springboot.model;

import java.util.Date;

import lombok.Data;


@Data
public class ManagerModel {

	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private String address;
	private String dob;
	private String company;
}
