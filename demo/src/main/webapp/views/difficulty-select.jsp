<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Difficulty</title>
    <style>
        /* Add your existing styles here */
		/* Global styles */
		body {
		    font-family: 'Arial', sans-serif;
		    margin: 0;
		    padding: 0;
		    background-color: #f4f4f9;
		    color: #333;
		}

		/* Container styles */
		.container {
		    max-width: 800px;
		    margin: 40px auto;
		    padding: 20px;
		    background-color: #fff;
		    border-radius: 8px;
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
		    text-align: center;
		}

		/* Title styles */
		h1 {
		    font-size: 32px;
		    font-weight: bold;
		    color: #4A90E2;
		    margin-bottom: 30px;
		}

		/* Difficulty options container */
		.difficulty-options {
		    display: flex;
		    justify-content: center;
		    gap: 20px;
		}

		/* Button styles */
		button {
		    font-size: 18px;
		    font-weight: 600;
		    padding: 15px 30px;
		    border: none;
		    border-radius: 5px;
		    cursor: pointer;
		    transition: all 0.3s ease;
		    width: 150px;
		}

		button:hover {
		    transform: scale(1.05);
		}

		/* Individual button styles */
		button:focus {
		    outline: none;
		}

		button:nth-child(1) {
		    background-color: #4CAF50;
		    color: #fff;
		}

		button:nth-child(1):hover {
		    background-color: #45a049;
		}

		button:nth-child(2) {
		    background-color: #FF9800;
		    color: #fff;
		}

		button:nth-child(2):hover {
		    background-color: #f57c00;
		}

		button:nth-child(3) {
		    background-color: #F44336;
		    color: #fff;
		}

		button:nth-child(3):hover {
		    background-color: #e53935;
		}

		/* Responsive styles */
		@media (max-width: 768px) {
		    .container {
		        margin: 20px;
		        padding: 15px;
		    }

		    h1 {
		        font-size: 28px;
		    }

		    .difficulty-options {
		        flex-direction: column;
		        gap: 15px;
		    }

		    button {
		        width: 100%;
		        padding: 15px;
		        font-size: 16px;
		    }
		}

    </style>
</head>
<body>
    <div class="container">
        <h1>Select Difficulty</h1>

        <div class="difficulty-options">
			<button onclick="window.location.href='/quiz_page?categoryId=${categoryId}&difficulty=easy'">Easy</button>
			<button onclick="window.location.href='/quiz_page?categoryId=${categoryId}&difficulty=medium'">Medium</button>
			<button onclick="window.location.href='/quiz_page?categoryId=${categoryId}&difficulty=hard'">Hard</button>

        </div>
    </div>
</body>
</html>
