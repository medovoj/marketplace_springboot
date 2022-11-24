package com.medovoy.spring.marketplace.repositories;

import com.medovoy.spring.marketplace.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    public List<Product> findByTitle(String titel);
}
