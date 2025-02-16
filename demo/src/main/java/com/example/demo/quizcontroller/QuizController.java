//package com.example.demo.quizcontroller;
//
//import com.example.demo.entity.Category;
//import com.example.demo.service.CategoryService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//
//import java.util.List;
//
//@Controller
//public class QuizController {
//
//    @Autowired
//    private CategoryService categoryService;
//
//    @GetMapping("/category-select")
//    public String categorySelectPage(Model model) {
//        // Fetch all categories from the database
//        List<Category> categories = categoryService.getAllCategories();
//        System.out.println(categories);
//
//        // Add categories to the model
//        model.addAttribute("categories", categories);
//
//        // Return the JSP page to display categories
//        return "category_select";
//    }
//}

package com.example.demo.quizcontroller;

import com.example.demo.entity.Category;
import com.example.demo.entity.Question;
import com.example.demo.entity.Result;
import com.example.demo.repository.ResultRepository;
import com.example.demo.service.CategoryService;
import com.example.demo.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Controller
public class QuizController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private QuestionService questionService;
    
    @Autowired
    private ResultRepository resultRepository;

    
    @GetMapping("/category-select")
    public String categorySelectPage(Model model) {
        // Fetch all categories from the database
        List<Category> categories = categoryService.getAllCategories();
        System.out.println(categories);

        // Add categories to the model
        model.addAttribute("categories", categories);

        // Return the JSP page to display categories
        return "category_select";
    }

    
    @GetMapping("/difficulty-select/{categoryId}")
    public String showDifficultySelection(@PathVariable("categoryId") int categoryId, Model model) {
        
        model.addAttribute("categoryId", categoryId);
        return "difficulty-select";
    }

   
    @GetMapping("/quiz_page")
    public String startQuiz(@RequestParam("categoryId") int categoryId, 
                            @RequestParam("difficulty") String difficulty, 
                            Model model) {
        
        
        List<Question> questions = questionService.getQuestionsByCategoryAndDifficulty(categoryId, difficulty);
        

        model.addAttribute("questions", questions);
        model.addAttribute("categoryId", categoryId);
        model.addAttribute("difficulty", difficulty);

      
        return "quiz_page"; 
    }
    
    @PostMapping("/submit-quiz")
    public String submitQuiz(@RequestParam Map<String, String> userAnswers,
                             @RequestParam("categoryId") int categoryId,
                             @RequestParam("difficulty") String difficulty,
                             Model model) {

        
        List<Question> questions = questionService.getQuestionsByCategoryAndDifficulty(categoryId, difficulty);

        int score = 0;

        
        for (Question question : questions) {
            
            String userAnswer = userAnswers.get("answer_" + question.getId());
            
            System.out.println("Question ID: " + question.getId());
            System.out.println("User Answer: " + userAnswer);
            System.out.println("Correct Answer: " + question.getAnswerText());

            
            if (userAnswer != null) {
                switch (userAnswer) {
                    case "A":
                        if (question.getOptionA().equalsIgnoreCase(question.getAnswerText())) {
                            score++;
                        }
                        break;
                    case "B":
                        if (question.getOptionB().equalsIgnoreCase(question.getAnswerText())) {
                            score++;
                        }
                        break;
                    case "C":
                        if (question.getOptionC().equalsIgnoreCase(question.getAnswerText())) {
                            score++;
                        }
                        break;
                    case "D":
                        if (question.getOptionD().equalsIgnoreCase(question.getAnswerText())) {
                            score++;
                        }
                        break;
                    default:
                        
                        break;
                }
            }
        }
     
        Result result = new Result();
        Category category = categoryService.getCategoryById(categoryId);
        result.setCategory(category);
        result.setDifficulty(difficulty);
        result.setScore(score);
        result.setTotalScore(questions.size());
        result.setUserId(1);
        result.setCreatedAt(LocalDateTime.now());

        
        resultRepository.save(result);

        
        model.addAttribute("score", score);
        model.addAttribute("totalQuestions", questions.size());
        model.addAttribute("categoryId", categoryId);
        model.addAttribute("difficulty", difficulty);

     
        return "quiz_result"; 
    }
    
    @GetMapping("/results")
    public String showResults(Model model) {
   
        List<Result> results = resultRepository.findAll();

      
        model.addAttribute("results", results);
        
        System.out.println("Fetched results: " + results);

      
        return "results"; 
    }



   

}
