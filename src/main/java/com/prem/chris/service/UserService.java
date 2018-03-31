package com.prem.chris.service;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prem.chris.DTO.UserDTO;
import com.prem.chris.model.User;
import com.prem.chris.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ModelMapper modelMapper;

	public List<UserDTO> findAllUser() {
		List<User> users = userRepository.findAll();
		List<UserDTO> usersDTO = new ArrayList<>();
		users.forEach((user) -> {
			usersDTO.add(modelMapper.map(user, UserDTO.class));
		});
		return usersDTO;
	}

	public User createUser() {
		User user = new User();
		user.setFirstname("Raju");
		user.setLastname("Bhai");
		user.setUsername("raju123");
		user.setPasswod("12345");
		userRepository.save(user);
		return user;
	}
}
