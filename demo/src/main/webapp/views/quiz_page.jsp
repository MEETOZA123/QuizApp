<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz - Category: ${categoryId} | Difficulty: ${difficulty}</title>
	<style>
		/* Global styles */
		body {
		    font-family: 'Arial', sans-serif;
		    margin: 0;
		    padding: 0;
		    background-color: #f4f4f9;
		    color: #333;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    min-height: 100vh;
		    background: linear-gradient(135deg, #56CCF2, #2F80ED); /* Gradient background for modern feel */
		}

		/* Container styles */
		.container {
		    background-color: #ffffff;
		    padding: 40px 40px 60px 40px;
		    border-radius: 12px;
		    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
		    text-align: center;
		    max-width: 800px;
		    width: 100%;
		    box-sizing: border-box;
		    margin: 20px;
		}

		/* Title styles */
		h1 {
		    font-size: 32px;
		    font-weight: 600;
		    color: #4A90E2;
		    margin-bottom: 30px;
		    text-transform: uppercase;
		}

		/* Question styles */
		.question {
		    margin-bottom: 25px;
		    padding: 15px;
		    background-color: #f9f9f9;
		    border-radius: 8px;
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
		}

		.question p {
		    font-size: 18px;
		    font-weight: 500;
		    margin-bottom: 10px;
		    color: #333;
		}

		/* Radio button styles */
		input[type="radio"] {
		    margin-right: 10px;
		    accent-color: #4CAF50; /* Modern radio button color */
		}

		label {
		    font-size: 16px;
		    font-weight: 400;
		    color: #555;
		    display: block;
		    margin-bottom: 10px;
		}

		/* Button styles */
		button {
		    font-size: 18px;
		    font-weight: 600;
		    padding: 15px 30px;
		    border: none;
		    border-radius: 8px;
		    cursor: pointer;
		    transition: all 0.3s ease;
		    background-color: #4CAF50;
		    color: #fff;
		    width: 200px;
		    margin-top: 30px;
		}

		button:hover {
		    background-color: #45a049;
		    transform: translateY(-3px);
		}

		/* Responsive design for smaller screens */
		@media (max-width: 768px) {
		    .container {
		        padding: 20px;
		        margin: 10px;
		    }

		    h1 {
		        font-size: 28px;
		    }

		    .question {
		        padding: 10px;
		    }

		    button {
		        width: 100%;
		        font-size: 16px;
		        padding: 12px;
		    }
		}

	</style>
</head>
<body>
    <div class="container">
        <h1>Quiz - Category: ${categoryId} | Difficulty: ${difficulty}</h1>

        <form action="/submit-quiz" method="post">
            <input type="hidden" name="categoryId" value="${categoryId}" />
            <input type="hidden" name="difficulty" value="${difficulty}" />

            <!-- Loop through the questions -->
            <c:forEach var="question" items="${questions}">
                <div class="question">
                    <p>${question.questionText}</p>
                    <input type="radio" name="answer_${question.id}" value="A" /> ${question.optionA} <br/>
                    <input type="radio" name="answer_${question.id}" value="B" /> ${question.optionB} <br/>
                    <input type="radio" name="answer_${question.id}" value="C" /> ${question.optionC} <br/>
                    <input type="radio" name="answer_${question.id}" value="D" /> ${question.optionD} <br/>
                </div>
            </c:forEach>

            <button type="submit">Submit Quiz</button>
        </form>
    </div>
</body>
</html>
