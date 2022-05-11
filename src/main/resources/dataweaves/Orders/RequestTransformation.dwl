%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    orderId: payload.order_id,
    customerId: payload.customer_id,
    orderStatus: payload.order_status,
    purchaseTimestamp: payload.order_purchase_timestamp,
    approvedAt: payload.order_approved_at,
    deliveredCarrierDate: payload.order_delivered_carrier_date,
    deliveredCustomerDate: payload.order_delivered_customer_date,
	estimatedDelivery: payload.order_estimated_delivery,
    orderValue: replaceAll(payload.order_value, ",", "") as Number,
    productValue: replaceAll(payload.product_value, ",", "") as Number,
    regionCd: payload.region,
    orderType: lower(payload.order_type),
    orderItems: []
}