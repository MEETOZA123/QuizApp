<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    
    <style>
        /* General reset and setup */
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
        }

        /* Main container */
        .container {
            text-align: center;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 70%;
            max-width: 600px;
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.05);
        }

        /* Title styling */
        h1 {
            font-size: 3em;
            color: #333;
            margin-bottom: 1em;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Message styling */
        p {
            font-size: 1.25em;
            color: #555;
            margin: 20px 0;
        }

        /* Button styling */
        .cta-button {
            padding: 15px 40px;
            font-size: 1.2em;
            color: white;
            background-color: #62CED2;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .cta-button:hover {
            background-color: #FFC96F;
            transform: scale(1.1);
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            h1 {
                font-size: 2.5em;
            }

            p {
                font-size: 1em;
            }

            .cta-button {
                font-size: 1em;
                padding: 12px 30px;
            }

            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to the Quiz Application!</h1>
        <p>You have successfully logged in.</p>
        <!-- Optionally add a button or link to go to the quiz -->
        <button class="cta-button" onclick="window.location.href='/category-select'">Start Quiz</button>
    </div>

</body>
</html>
