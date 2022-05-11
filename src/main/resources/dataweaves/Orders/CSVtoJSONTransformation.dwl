%dw 2.0
output application/json
---
if(not isEmpty(payload))
	(payload map() -> {
		order_id: $.order_id,
		customer_id: $.customer_id,
		order_status: $.order_status,
		order_purchase_timestamp: $.order_purchase_timestamp as LocalDateTime {format: "dd-MM-yyyy HH:mm"} as String {format: "MM-dd-yyyy hh:mm:ss"},
		order_approved_at: $.order_approved_at as LocalDateTime {format: "dd-MM-yyyy HH:mm"} as String {format: "MM-dd-yyyy hh:mm:ss"} default null,
		order_delivered_carrier_date: $.order_delivered_carrier_date[0 to 9] as Date {format: "dd-MM-yyyy"} as String {format: "MM-dd-yyyy"} default null,
		order_delivered_customer_date: $.order_delivered_customer_date[0 to 9] as Date {format: "dd-MM-yyyy"} as String {format: "MM-dd-yyyy"} default null,
		order_estimated_delivery_date: $.order_estimated_delivery_date[0 to 9] as Date {format: "dd-MM-yyyy"} as String {format: "MM-dd-yyyy"} default null,
		order_value: $.order_value,
		product_value: $.product_value,
		region: $.region,
		order_type: $.order_type
	}) orderBy ($.order_purchase_timestamp)
else []