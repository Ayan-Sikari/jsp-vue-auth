<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="item" required="true" type="com.procoder.authentication1.models.Item" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style>
.details-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px;
}

.details-card {
    width: 500px;
    background: #ffffff;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
    padding: 30px;
    transition: 0.3s ease;
}

.details-card:hover {
    transform: translateY(-5px);
}

.details-title {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 10px;
    color: #333;
}

.details-description {
    color: #666;
    margin-bottom: 20px;
    line-height: 1.6;
}

.price-section {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-size: 18px;
}

.price {
    color: #2e7d32;
    font-weight: bold;
}

.discount {
    color: #d32f2f;
    font-weight: bold;
}

.meta {
    margin-bottom: 10px;
    color: #444;
}

.rating {
    margin: 15px 0;
    font-size: 18px;
    color: #ff9800;
}

.back-btn {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    text-decoration: none;
    background: #1976d2;
    color: white;
    border-radius: 8px;
    transition: 0.3s ease;
}

.back-btn:hover {
    background: #0d47a1;
}
</style>

<div class="details-wrapper">
    <div class="details-card">

        <div class="details-title">
            ${item.itemName}
        </div>

        <div class="details-description">
            ${item.itemDescription}
        </div>

        <div class="price-section">
            <span class="price">₹ <fmt:formatNumber value="${item.itemPrice}" maxFractionDigits="2" minFractionDigits="2"/></span>
            <span class="discount"><fmt:formatNumber value="${item.itemDiscount}" maxFractionDigits="0" minFractionDigits="0"/>% OFF</span>
        </div>

        <div class="meta">
            <b>Available Quantity:</b> ${item.itemQuantity}
        </div>

        <div class="rating">
            ⭐ ${item.itemRating} / 5
        </div>

        <a class="back-btn"
           href="${pageContext.request.contextPath}/welcome">
            ← Back to Products
        </a>
        <div style="display:flex; gap:10px; flex-wrap:wrap;">

            <button type="submit" name="action" value="add"
                    style="padding:10px 15px; background:#2e7d32; color:white; border:none; border-radius:8px;">
                🛒 Add to Cart
            </button>

            <button type="submit" name="action" value="buy"
                    style="padding:10px 15px; background:#ff9800; color:white; border:none; border-radius:8px;">
                ⚡ Buy Now
            </button>

            <button type="submit" name="action" value="wishlist"
                    style="padding:10px 15px; background:#e91e63; color:white; border:none; border-radius:8px;">
                ❤️ Wishlist
            </button>

        </div>

    </div>
</div>