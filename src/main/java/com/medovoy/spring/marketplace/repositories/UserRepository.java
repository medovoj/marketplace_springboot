package com.medovoy.spring.marketplace.repositories;


import com.medovoy.spring.marketplace.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findUserByEmail(String email);
}
