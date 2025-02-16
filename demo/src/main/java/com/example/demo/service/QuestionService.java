package com.example.demo.service;

import com.example.demo.entity.Question;
import com.example.demo.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;
    
    public List<Question> getQuestionsByCategoryAndDifficulty(int categoryId, String difficulty) {
        return questionRepository.findByCategoryIdAndDifficulty(categoryId, difficulty);
    }
}
