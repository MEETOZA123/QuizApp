package com.example.demo.repository;

import com.example.demo.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

    // Method to find questions based on category and difficulty
    List<Question> findByCategoryIdAndDifficulty(int categoryId, String difficulty);
}
