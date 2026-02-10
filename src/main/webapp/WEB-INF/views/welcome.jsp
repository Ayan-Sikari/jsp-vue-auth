<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .user-info {
            position: absolute;
            top: 15px;
            right: 25px;
            text-align: right;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 16px;
            margin-top: 80px;
        }

        .card {
            border: 1px solid #ddd;
            padding: 14px;
            border-radius: 8px;
        }

        .original-price {
            text-decoration: line-through;
            color: #777;
            margin-right: 6px;
        }

        .discounted-price {
            font-size: 22px;
            font-weight: bold;
            color: #2e7d32;
        }

        .discount {
            color: #d32f2f;
            font-size: 13px;
            margin-left: 6px;
        }

        .out-of-stock {
            color: red;
            font-weight: bold;
        }

        .in-stock {
            color: green;
            font-weight: bold;
        }

        button {
            padding: 6px 10px;
            border: none;
            cursor: pointer;
            margin-top: 6px;
        }

        .notify-btn {
            background-color: #ff9800;
        }

        .buy-btn {
            background-color: #2e7d32;
            color: white;
        }
    </style>
</head>

<body>

<div class="user-info">
    <b>${username}</b><br>
    <i>Role: ${role}</i><br>
    <a href="/">Logout</a>
</div>

<h2>Welcome to Store</h2>

<div class="grid">
    <c:forEach var="item" items="${items}">

        <c:set var="finalPrice"
               value="${item.itemPrice - (item.itemPrice * item.itemDiscount / 100.0)}"/>

        <div class="card">
            <h4>${item.itemName}</h4>
            <p>${item.itemDescription}</p>

            <div>
                <span class="original-price">${item.itemPrice}Rs.</span>

                <span class="discounted-price">
                    <fmt:formatNumber value="${finalPrice}" maxFractionDigits="2"/>Rs.
                </span>

                <span class="discount">(
                    <c:out value="${item.itemDiscount}"></c:out>
                     % OFF)
                </span>
            </div>

            <c:choose>
                <c:when test="${item.itemQuantity == null or item.itemQuantity eq 0}">
                    <p class="out-of-stock">Out of Stock</p>
                    <button class="notify-btn">Notify Me</button>
                </c:when>
                <c:otherwise>
                    <p class="in-stock">In Stock</p>
                    <button class="buy-btn">Buy Now</button>
                </c:otherwise>
            </c:choose>

            <p>⭐ ${item.itemRating}</p>
        </div>

    </c:forEach>
</div>

</body>
</html>

