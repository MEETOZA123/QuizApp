<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #56CCF2, #2F80ED);
        }
        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            text-align: center;
            max-width: 600px;
            width: 100%;
            box-sizing: border-box;
        }
        h1 {
            font-size: 32px;
            font-weight: 600;
            color: #4A90E2;
            margin-bottom: 30px;
        }
        p {
            font-size: 20px;
            color: #333;
            margin-bottom: 20px;
        }
        .score {
            font-size: 36px;
            font-weight: 600;
            color: #4CAF50;
        }
        button {
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Quiz Results</h1>
        <p>You scored <span class="score">${score}</span> out of <span class="score">${totalQuestions}</span>.</p>
		<button onclick="window.location.href='/category-select'">Play Again</button>
    </div>
</body>
</html>
