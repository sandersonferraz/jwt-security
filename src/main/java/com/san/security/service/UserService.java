package com.san.security.service;

import com.san.security.model.user.User;
import com.san.security.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository repository;

    @Transactional()
    public User save(User user) {
        return repository.save(user);
    }


    public List<User> findAll() {
        return repository.findAll();
    }

    public User findByEmail(String email) {
        User user = repository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found."));
        return user;
    }

}
