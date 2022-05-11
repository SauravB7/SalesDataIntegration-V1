%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    orderId: payload.order_id,
    items: [
        {
            productId: payload.product_id,
            itemQty: payload.quantity as Number,
            sellerId: payload.seller_id,
            shippingLimitDate: payload.shipping_limit_date,
            pricePerItem: replaceAll(payload.price, ",", "") as Number,
            freightValue: replaceAll(payload.freight_value, ",", "") as Number
        }
    ]
}