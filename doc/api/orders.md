# Orders

```ruby
orders_api = client.orders
```

## Class Name

`OrdersApi`

## Methods

* [Create Order](../../doc/api/orders.md#create-order)
* [Batch Retrieve Orders](../../doc/api/orders.md#batch-retrieve-orders)
* [Calculate Order](../../doc/api/orders.md#calculate-order)
* [Clone Order](../../doc/api/orders.md#clone-order)
* [Search Orders](../../doc/api/orders.md#search-orders)
* [Retrieve Order](../../doc/api/orders.md#retrieve-order)
* [Update Order](../../doc/api/orders.md#update-order)
* [Pay Order](../../doc/api/orders.md#pay-order)


# Create Order

Creates a new [order](../../doc/models/order.md) that can include information about products for
purchase and settings to apply to the purchase.

To pay for a created order, see
[Pay for Orders](https://developer.squareup.com/docs/orders-api/pay-for-orders).

You can modify open orders using the [UpdateOrder](../../doc/api/orders.md#update-order) endpoint.

```ruby
def create_order(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Order Request Hash`](../../doc/models/create-order-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Order Response Hash`](../../doc/models/create-order-response.md)

## Example Usage

```ruby
body = {}
body[:order] = {}
body[:order][:location_id] = '057P5VYJ4A5X1'
body[:order][:reference_id] = 'my-order-001'
body[:order][:line_items] = []


body[:order][:line_items][0] = {}
body[:order][:line_items][0][:name] = 'New York Strip Steak'
body[:order][:line_items][0][:quantity] = '1'
body[:order][:line_items][0][:base_price_money] = {}
body[:order][:line_items][0][:base_price_money][:amount] = 1599
body[:order][:line_items][0][:base_price_money][:currency] = 'USD'

body[:order][:line_items][1] = {}
body[:order][:line_items][1][:quantity] = '2'
body[:order][:line_items][1][:catalog_object_id] = 'BEMYCSMIJL46OCDV4KYIKXIB'
body[:order][:line_items][1][:modifiers] = []


body[:order][:line_items][1][:modifiers][0] = {}
body[:order][:line_items][1][:modifiers][0][:catalog_object_id] = 'CHQX7Y4KY6N5KINJKZCFURPZ'

body[:order][:line_items][1][:applied_discounts] = []


body[:order][:line_items][1][:applied_discounts][0] = {}
body[:order][:line_items][1][:applied_discounts][0][:discount_uid] = 'one-dollar-off'


body[:order][:taxes] = []


body[:order][:taxes][0] = {}
body[:order][:taxes][0][:uid] = 'state-sales-tax'
body[:order][:taxes][0][:name] = 'State Sales Tax'
body[:order][:taxes][0][:percentage] = '9'
body[:order][:taxes][0][:scope] = 'ORDER'

body[:order][:discounts] = []


body[:order][:discounts][0] = {}
body[:order][:discounts][0][:uid] = 'labor-day-sale'
body[:order][:discounts][0][:name] = 'Labor Day Sale'
body[:order][:discounts][0][:percentage] = '5'
body[:order][:discounts][0][:scope] = 'ORDER'

body[:order][:discounts][1] = {}
body[:order][:discounts][1][:uid] = 'membership-discount'
body[:order][:discounts][1][:catalog_object_id] = 'DB7L55ZH2BGWI4H23ULIWOQ7'
body[:order][:discounts][1][:scope] = 'ORDER'

body[:order][:discounts][2] = {}
body[:order][:discounts][2][:uid] = 'one-dollar-off'
body[:order][:discounts][2][:name] = 'Sale - $1.00 off'
body[:order][:discounts][2][:amount_money] = {}
body[:order][:discounts][2][:amount_money][:amount] = 100
body[:order][:discounts][2][:amount_money][:currency] = 'USD'
body[:order][:discounts][2][:scope] = 'LINE_ITEM'

body[:idempotency_key] = '8193148c-9586-11e6-99f9-28cfe92138cf'

result = orders_api.create_order(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Batch Retrieve Orders

Retrieves a set of [orders](../../doc/models/order.md) by their IDs.

If a given order ID does not exist, the ID is ignored instead of generating an error.

```ruby
def batch_retrieve_orders(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Batch Retrieve Orders Request Hash`](../../doc/models/batch-retrieve-orders-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Batch Retrieve Orders Response Hash`](../../doc/models/batch-retrieve-orders-response.md)

## Example Usage

```ruby
body = {}
body[:location_id] = '057P5VYJ4A5X1'
body[:order_ids] = ['CAISEM82RcpmcFBM0TfOyiHV3es', 'CAISENgvlJ6jLWAzERDzjyHVybY']

result = orders_api.batch_retrieve_orders(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Calculate Order

Enables applications to preview order pricing without creating an order.

```ruby
def calculate_order(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Calculate Order Request Hash`](../../doc/models/calculate-order-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Calculate Order Response Hash`](../../doc/models/calculate-order-response.md)

## Example Usage

```ruby
body = {}
body[:order] = {}
body[:order][:location_id] = 'D7AVYMEAPJ3A3'
body[:order][:line_items] = []


body[:order][:line_items][0] = {}
body[:order][:line_items][0][:name] = 'Item 1'
body[:order][:line_items][0][:quantity] = '1'
body[:order][:line_items][0][:base_price_money] = {}
body[:order][:line_items][0][:base_price_money][:amount] = 500
body[:order][:line_items][0][:base_price_money][:currency] = 'USD'

body[:order][:line_items][1] = {}
body[:order][:line_items][1][:name] = 'Item 2'
body[:order][:line_items][1][:quantity] = '2'
body[:order][:line_items][1][:base_price_money] = {}
body[:order][:line_items][1][:base_price_money][:amount] = 300
body[:order][:line_items][1][:base_price_money][:currency] = 'USD'

body[:order][:discounts] = []


body[:order][:discounts][0] = {}
body[:order][:discounts][0][:name] = '50% Off'
body[:order][:discounts][0][:percentage] = '50'
body[:order][:discounts][0][:scope] = 'ORDER'


result = orders_api.calculate_order(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Clone Order

Creates a new order, in the `DRAFT` state, by duplicating an existing order. The newly created order has
only the core fields (such as line items, taxes, and discounts) copied from the original order.

```ruby
def clone_order(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Clone Order Request Hash`](../../doc/models/clone-order-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Clone Order Response Hash`](../../doc/models/clone-order-response.md)

## Example Usage

```ruby
body = {}
body[:order_id] = 'ZAISEM52YcpmcWAzERDOyiWS123'
body[:version] = 3
body[:idempotency_key] = 'UNIQUE_STRING'

result = orders_api.clone_order(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Search Orders

Search all orders for one or more locations. Orders include all sales,
returns, and exchanges regardless of how or when they entered the Square
ecosystem (such as Point of Sale, Invoices, and Connect APIs).

`SearchOrders` requests need to specify which locations to search and define a
[SearchOrdersQuery](../../doc/models/search-orders-query.md) object that controls
how to sort or filter the results. Your `SearchOrdersQuery` can:

Set filter criteria.
Set the sort order.
Determine whether to return results as complete `Order` objects or as
[OrderEntry](../../doc/models/order-entry.md) objects.

Note that details for orders processed with Square Point of Sale while in
offline mode might not be transmitted to Square for up to 72 hours. Offline
orders have a `created_at` value that reflects the time the order was created,
not the time it was subsequently transmitted to Square.

```ruby
def search_orders(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Search Orders Request Hash`](../../doc/models/search-orders-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Search Orders Response Hash`](../../doc/models/search-orders-response.md)

## Example Usage

```ruby
body = {}
body[:location_ids] = ['057P5VYJ4A5X1', '18YC4JDH91E1H']
body[:query] = {}
body[:query][:filter] = {}
body[:query][:filter][:state_filter] = {}
body[:query][:filter][:state_filter][:states] = ['COMPLETED']
body[:query][:filter][:date_time_filter] = {}
body[:query][:filter][:date_time_filter][:closed_at] = {}
body[:query][:filter][:date_time_filter][:closed_at][:start_at] = '2018-03-03T20:00:00+00:00'
body[:query][:filter][:date_time_filter][:closed_at][:end_at] = '2019-03-04T21:54:45+00:00'
body[:query][:sort] = {}
body[:query][:sort][:sort_field] = 'CLOSED_AT'
body[:query][:sort][:sort_order] = 'DESC'
body[:limit] = 3
body[:return_entries] = true

result = orders_api.search_orders(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Order

Retrieves an [Order](../../doc/models/order.md) by ID.

```ruby
def retrieve_order(order_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | The ID of the order to retrieve. |

## Response Type

[`Retrieve Order Response Hash`](../../doc/models/retrieve-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'

result = orders_api.retrieve_order(order_id: order_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Order

Updates an open [order](../../doc/models/order.md) by adding, replacing, or deleting
fields. Orders with a `COMPLETED` or `CANCELED` state cannot be updated.

An `UpdateOrder` request requires the following:

- The `order_id` in the endpoint path, identifying the order to update.
- The latest `version` of the order to update.
- The [sparse order](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#sparse-order-objects)
  containing only the fields to update and the version to which the update is
  being applied.
- If deleting fields, the [dot notation paths](https://developer.squareup.com/docs/orders-api/manage-orders#on-dot-notation)
  identifying the fields to clear.

To pay for an order, see
[Pay for Orders](https://developer.squareup.com/docs/orders-api/pay-for-orders).

```ruby
def update_order(order_id:,
                 body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | The ID of the order to update. |
| `body` | [`Update Order Request Hash`](../../doc/models/update-order-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Order Response Hash`](../../doc/models/update-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'
body = {}

result = orders_api.update_order(order_id: order_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Pay Order

Pay for an [order](../../doc/models/order.md) using one or more approved [payments](../../doc/models/payment.md)
or settle an order with a total of `0`.

The total of the `payment_ids` listed in the request must be equal to the order
total. Orders with a total amount of `0` can be marked as paid by specifying an empty
array of `payment_ids` in the request.

To be used with `PayOrder`, a payment must:

- Reference the order by specifying the `order_id` when [creating the payment](../../doc/api/payments.md#create-payment).
  Any approved payments that reference the same `order_id` not specified in the
  `payment_ids` is canceled.
- Be approved with [delayed capture](https://developer.squareup.com/docs/payments-api/take-payments/card-payments/delayed-capture).
  Using a delayed capture payment with `PayOrder` completes the approved payment.

```ruby
def pay_order(order_id:,
              body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | The ID of the order being paid. |
| `body` | [`Pay Order Request Hash`](../../doc/models/pay-order-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Pay Order Response Hash`](../../doc/models/pay-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'
body = {}
body[:idempotency_key] = 'c043a359-7ad9-4136-82a9-c3f1d66dcbff'
body[:payment_ids] = ['EnZdNAlWCmfh6Mt5FMNST1o7taB', '0LRiVlbXVwe8ozu4KbZxd12mvaB']

result = orders_api.pay_order(order_id: order_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

