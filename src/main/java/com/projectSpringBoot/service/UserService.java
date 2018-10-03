package com.projectSpringBoot.service;

import com.projectSpringBoot.entity.Role;
import com.projectSpringBoot.entity.User;
import com.projectSpringBoot.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Collections;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private MailSender mailSender;

    //корректный вариант @Autowired
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username);
    }

    public boolean addUser(User user) {
        User userfromDataBase = userRepository.findByUsername(user.getUsername());
        if (userfromDataBase != null) {
            return false;
        }
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        user.setActivationCode(UUID.randomUUID().toString());
        userRepository.save(user);
        //TODO при деплои изменить localhost на адрес
        if (!StringUtils.isEmpty(user.getEmail())){
            String message = String.format(
                    "Hello, %s! \n" +
                            "Welcome to webCrudApp. Please, visit next link: http://localhost:8080/activate/%s",
                    user.getEmail(),
                    user.getActivationCode()
            );

            mailSender.send(user.getEmail(),"Activation code", message);
        }
            return true;
    }

    public boolean activateUser(String code) {
        User user = userRepository.findByActivationCode(code);
        if(user==null){
            return false;
        }
        user.setActivationCode(null);

        userRepository.save(user);
        return true;
    }
}
