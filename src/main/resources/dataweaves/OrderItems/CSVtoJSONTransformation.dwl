%dw 2.0
output application/json
---

(payload default []) map() -> {
	order_id: $.order_id,
	product_id: $.product_id,
	seller_id: $.seller_id,
	quantity: $.order_qty,
	shipping_limit_date: $.shipping_limit_date[0 to 9] as Date {format: "dd-MM-yyyy"} as String {format: "MM-dd-yyyy"} default null,
	price: $.price,
	freight_value: $.freight_value
}