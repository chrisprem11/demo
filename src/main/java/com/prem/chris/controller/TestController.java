package com.prem.chris.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prem.chris.DTO.UserDTO;
import com.prem.chris.model.User;
import com.prem.chris.service.UserService;

@RestController
public class TestController {

	@Autowired
	private UserService userService;

	@GetMapping("/test")
	public ResponseEntity<String> testAPI() {
		User user = userService.createUser();
		return new ResponseEntity<String>("Spring REST API !", HttpStatus.OK);
	}

	@GetMapping(path = "/users", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<UserDTO>> doGetUsers() {
		List<UserDTO> userDTOs = userService.findAllUser();
		return new ResponseEntity<List<UserDTO>>(userDTOs, HttpStatus.OK);
	}

}
