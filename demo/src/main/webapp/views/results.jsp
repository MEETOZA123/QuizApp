<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Ensure JSTL is imported -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Results</title>

    <!-- Internal CSS for the results page -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #4CAF50;
            padding: 10px 0;
            text-align: center;
            color: white;
            font-size: 24px;
        }

        h1 {
            font-size: 2rem;
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            margin-top: 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }

        td {
            background-color: #ffffff;
            font-size: 14px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #4CAF50;
            text-decoration: none;
            padding: 10px;
            background-color: #ffffff;
            border: 1px solid #4CAF50;
            border-radius: 5px;
            width: 150px;
            margin: 20px auto;
        }

        a:hover {
            background-color: #4CAF50;
            color: white;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                margin-top: 20px;
            }

            th, td {
                padding: 10px;
                font-size: 12px;
            }

            h1 {
                font-size: 1.5rem;
            }

            a {
                font-size: 14px;
                width: 120px;
            }
        }
    </style>

</head>
<body>

    <header>
        Quiz Results
    </header>

    <h1>Results</h1>
    
    <table>
        <thead>
            <tr>
                <th>Category</th>
                <th>Difficulty</th>
                <th>Score</th>
                <th>Total Score</th>
                <th>User ID</th>
                <th>Created At</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop over the results -->
            <c:forEach var="result" items="${results}">
                <tr>
                    <!-- Access the category name -->
                    <td>${result.category.name}</td>
                    <td>${result.difficulty}</td>
                    <td>${result.score}</td>
                    <td>${result.totalScore}</td>
                    <td>${result.userId}</td>
                    <td>${result.createdAt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Link to go back to the category select page -->
    <a href="/category-select">Back to Category Select</a>

</body>
</html>
