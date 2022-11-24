package com.medovoy.spring.marketplace.repositories;

import com.medovoy.spring.marketplace.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
