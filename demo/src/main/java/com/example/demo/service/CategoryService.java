package com.example.demo.service;

import com.example.demo.entity.Category;
import com.example.demo.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }
    
    // Get category by ID
    public Category getCategoryById(int categoryId) {
        // Use findById to get an Optional<Category> and then retrieve the Category
        Optional<Category> categoryOptional = categoryRepository.findById(categoryId);
        
        // If category exists, return it, otherwise throw an exception (or handle accordingly)
        return categoryOptional.orElseThrow(() -> new IllegalArgumentException("Category not found with id: " + categoryId));
    }
}
