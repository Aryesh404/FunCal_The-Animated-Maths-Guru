<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>History</title>
    <style>    
        body {
            font-size: 18px;
            text-align: center;
             background: linear-gradient(to right, rgb(128, 0, 0), rgb(64, 0, 0));
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1, h3 {
            margin: 15px;
            font-size: 1.5em;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #fff;
        }

        th {
            background-color: #1e293b;
            color: white;
        }

        tr:hover {
            background-color: #1e293b;
        }

        img {
            width: 35%;
            height: auto;
            margin-top: 20px;
            filter: drop-shadow(20px 10px 10px black);
            border-radius: 10px;
        }

        img:hover {
            transform: scale(1.1);
        }

        #button-container {
            margin-top: 20px;
        }

        button {
            background-color: #fff;
            border: 0 solid #e2e8f0;
            border-radius: 1.5rem;
            box-sizing: border-box;
            color: #0d172a;
            cursor: pointer;
            font-family: "Basier circle", -apple-system, system-ui, "Segoe UI", Roboto, "Helvetica Neue", Arial,
                "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
            font-size: 1.1rem;
            font-weight: 600;
            line-height: 1;
            padding: 1rem 2rem;
            text-align: center;
            text-decoration: none #0d172a solid;
            text-decoration-thickness: auto;
            transition: all .2s cubic-bezier(.4, 0, .2, 1);
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
        }

        button:hover {
            background-color: #1e293b;
            color: #fff;
        }

        @media (max-width: 768px) {
            body {
                font-size: 16px;
            }

            h1, h3 {
                font-size: 1.2em;
            }

            img {
                width: 50%;
            }
        }
    </style>
</head>
<body>
    <img alt="" src="images\history_book.png">
    <h1>Calculation History</h1>

    <table>
        <thead>
            <tr>
                <th>Calculation</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<String> history = (List<String>) session.getAttribute("history");
                if (history != null) {
                    for (String entry : history) {
            %>
                        <tr>
                            <td><%= entry %></td>
                        </tr>
            <%
                    }
                } else {
            %>
                    <tr>
                        <td>No history available.</td>
                    </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <div id="button-container">
        <button onclick="location.href='index.html'">Home</button>
        
    </div>
</body>
</html>
