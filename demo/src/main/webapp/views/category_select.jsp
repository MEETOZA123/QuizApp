<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Category</title>
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7fc;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            position: relative;
        }

        .container {
            text-align: center;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 70%;
            max-width: 600px;
        }

        h1 {
            font-size: 3em;
            color: #333;
            margin-bottom: 1em;
        }

        .category-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
        }

        .category-item {
            padding: 15px;
            font-size: 1.5em;
            background-color: #62CED2;
            color: white;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .category-item:hover {
            background-color: #FFC96F;
            transform: scale(1.1);
        }

        /* Button on top right corner */
        .view-results-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #FF6F61;
            color: white;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .view-results-btn:hover {
            background-color: #FF3D29;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .category-list {
                grid-template-columns: 1fr 1fr;
            }

            .category-item {
                font-size: 1.2em;
                padding: 12px;
            }
        }
    </style>
</head>
<body>

    <!-- View Results Button -->
    <button class="view-results-btn" onclick="window.location.href='/results'">View Results</button>

    <div class="container">
        <h1>Select a Category</h1>
        
        <!-- Category List -->
        <div class="category-list">
            <c:forEach var="category" items="${categories}">
                <div class="category-item" onclick="window.location.href='/difficulty-select/${category.id}'">
                    ${category.name}
                </div>
            </c:forEach>
        </div>
    </div>

</body>
</html>
