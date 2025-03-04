# Invoices

```ruby
invoices_api = client.invoices
```

## Class Name

`InvoicesApi`

## Methods

* [List Invoices](../../doc/api/invoices.md#list-invoices)
* [Create Invoice](../../doc/api/invoices.md#create-invoice)
* [Search Invoices](../../doc/api/invoices.md#search-invoices)
* [Delete Invoice](../../doc/api/invoices.md#delete-invoice)
* [Get Invoice](../../doc/api/invoices.md#get-invoice)
* [Update Invoice](../../doc/api/invoices.md#update-invoice)
* [Cancel Invoice](../../doc/api/invoices.md#cancel-invoice)
* [Publish Invoice](../../doc/api/invoices.md#publish-invoice)


# List Invoices

Returns a list of invoices for a given location. The response
is paginated. If truncated, the response includes a `cursor` that you  
use in a subsequent request to retrieve the next set of invoices.

```ruby
def list_invoices(location_id:,
                  cursor: nil,
                  limit: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Query, Required | The ID of the location for which to list invoices. |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for your original query.<br><br>For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). |
| `limit` | `Integer` | Query, Optional | The maximum number of invoices to return (200 is the maximum `limit`).<br>If not provided, the server uses a default limit of 100 invoices. |

## Response Type

[`List Invoices Response Hash`](../../doc/models/list-invoices-response.md)

## Example Usage

```ruby
location_id = 'location_id4'

result = invoices_api.list_invoices(location_id: location_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Invoice

Creates a draft [invoice](../../doc/models/invoice.md)
for an order created using the Orders API.

A draft invoice remains in your account and no action is taken.
You must publish the invoice before Square can process it (send it to the customer's email address or charge the customer’s card on file).

```ruby
def create_invoice(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Invoice Request Hash`](../../doc/models/create-invoice-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Invoice Response Hash`](../../doc/models/create-invoice-response.md)

## Example Usage

```ruby
body = {}
body[:invoice] = {}
body[:invoice][:location_id] = 'ES0RJRZYEC39A'
body[:invoice][:order_id] = 'CAISENgvlJ6jLWAzERDzjyHVybY'
body[:invoice][:primary_recipient] = {}
body[:invoice][:primary_recipient][:customer_id] = 'JDKYHBWT1D4F8MFH63DBMEN8Y4'
body[:invoice][:payment_requests] = []


body[:invoice][:payment_requests][0] = {}
body[:invoice][:payment_requests][0][:request_type] = 'BALANCE'
body[:invoice][:payment_requests][0][:due_date] = '2030-01-24'
body[:invoice][:payment_requests][0][:tipping_enabled] = true
body[:invoice][:payment_requests][0][:automatic_payment_source] = 'NONE'
body[:invoice][:payment_requests][0][:reminders] = []


body[:invoice][:payment_requests][0][:reminders][0] = {}
body[:invoice][:payment_requests][0][:reminders][0][:relative_scheduled_days] = -1
body[:invoice][:payment_requests][0][:reminders][0][:message] = 'Your invoice is due tomorrow'


body[:invoice][:delivery_method] = 'EMAIL'
body[:invoice][:invoice_number] = 'inv-100'
body[:invoice][:title] = 'Event Planning Services'
body[:invoice][:description] = 'We appreciate your business!'
body[:invoice][:scheduled_at] = '2030-01-13T10:00:00Z'
body[:invoice][:accepted_payment_methods] = {}
body[:invoice][:accepted_payment_methods][:card] = true
body[:invoice][:accepted_payment_methods][:square_gift_card] = false
body[:invoice][:accepted_payment_methods][:bank_account] = false
body[:invoice][:custom_fields] = []


body[:invoice][:custom_fields][0] = {}
body[:invoice][:custom_fields][0][:label] = 'Event Reference Number'
body[:invoice][:custom_fields][0][:value] = 'Ref. #1234'
body[:invoice][:custom_fields][0][:placement] = 'ABOVE_LINE_ITEMS'

body[:invoice][:custom_fields][1] = {}
body[:invoice][:custom_fields][1][:label] = 'Terms of Service'
body[:invoice][:custom_fields][1][:value] = 'The terms of service are...'
body[:invoice][:custom_fields][1][:placement] = 'BELOW_LINE_ITEMS'

body[:invoice][:sale_or_service_date] = '2030-01-24'
body[:idempotency_key] = 'ce3748f9-5fc1-4762-aa12-aae5e843f1f4'

result = invoices_api.create_invoice(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Search Invoices

Searches for invoices from a location specified in
the filter. You can optionally specify customers in the filter for whom to
retrieve invoices. In the current implementation, you can only specify one location and
optionally one customer.

The response is paginated. If truncated, the response includes a `cursor`
that you use in a subsequent request to retrieve the next set of invoices.

```ruby
def search_invoices(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Search Invoices Request Hash`](../../doc/models/search-invoices-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Search Invoices Response Hash`](../../doc/models/search-invoices-response.md)

## Example Usage

```ruby
body = {}
body[:query] = {}
body[:query][:filter] = {}
body[:query][:filter][:location_ids] = ['ES0RJRZYEC39A']
body[:query][:filter][:customer_ids] = ['JDKYHBWT1D4F8MFH63DBMEN8Y4']
body[:query][:sort] = {}
body[:query][:sort][:order] = 'DESC'

result = invoices_api.search_invoices(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Invoice

Deletes the specified invoice. When an invoice is deleted, the
associated order status changes to CANCELED. You can only delete a draft
invoice (you cannot delete a published invoice, including one that is scheduled for processing).

```ruby
def delete_invoice(invoice_id:,
                   version: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The ID of the invoice to delete. |
| `version` | `Integer` | Query, Optional | The version of the [invoice](../../doc/models/invoice.md) to delete.<br>If you do not know the version, you can call [GetInvoice](../../doc/api/invoices.md#get-invoice) or<br>[ListInvoices](../../doc/api/invoices.md#list-invoices). |

## Response Type

[`Delete Invoice Response Hash`](../../doc/models/delete-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_api.delete_invoice(invoice_id: invoice_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Get Invoice

Retrieves an invoice by invoice ID.

```ruby
def get_invoice(invoice_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The ID of the invoice to retrieve. |

## Response Type

[`Get Invoice Response Hash`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_api.get_invoice(invoice_id: invoice_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Invoice

Updates an invoice by modifying fields, clearing fields, or both. For most updates, you can use a sparse
`Invoice` object to add fields or change values and use the `fields_to_clear` field to specify fields to clear.
However, some restrictions apply. For example, you cannot change the `order_id` or `location_id` field and you
must provide the complete `custom_fields` list to update a custom field. Published invoices have additional restrictions.

```ruby
def update_invoice(invoice_id:,
                   body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The ID of the invoice to update. |
| `body` | [`Update Invoice Request Hash`](../../doc/models/update-invoice-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Invoice Response Hash`](../../doc/models/update-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'
body = {}
body[:invoice] = {}
body[:invoice][:payment_requests] = []


body[:invoice][:payment_requests][0] = {}
body[:invoice][:payment_requests][0][:uid] = '2da7964f-f3d2-4f43-81e8-5aa220bf3355'
body[:invoice][:payment_requests][0][:tipping_enabled] = false

body[:idempotency_key] = '4ee82288-0910-499e-ab4c-5d0071dad1be'
body[:fields_to_clear] = ['payments_requests[2da7964f-f3d2-4f43-81e8-5aa220bf3355].reminders']

result = invoices_api.update_invoice(invoice_id: invoice_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Cancel Invoice

Cancels an invoice. The seller cannot collect payments for
the canceled invoice.

You cannot cancel an invoice in the `DRAFT` state or in a terminal state: `PAID`, `REFUNDED`, `CANCELED`, or `FAILED`.

```ruby
def cancel_invoice(invoice_id:,
                   body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The ID of the [invoice](../../doc/models/invoice.md) to cancel. |
| `body` | [`Cancel Invoice Request Hash`](../../doc/models/cancel-invoice-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Cancel Invoice Response Hash`](../../doc/models/cancel-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'
body = {}
body[:version] = 0

result = invoices_api.cancel_invoice(invoice_id: invoice_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Publish Invoice

Publishes the specified draft invoice.

After an invoice is published, Square
follows up based on the invoice configuration. For example, Square
sends the invoice to the customer's email address, charges the customer's card on file, or does
nothing. Square also makes the invoice available on a Square-hosted invoice page.

The invoice `status` also changes from `DRAFT` to a status
based on the invoice configuration. For example, the status changes to `UNPAID` if
Square emails the invoice or `PARTIALLY_PAID` if Square charge a card on file for a portion of the
invoice amount.

```ruby
def publish_invoice(invoice_id:,
                    body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The ID of the invoice to publish. |
| `body` | [`Publish Invoice Request Hash`](../../doc/models/publish-invoice-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Publish Invoice Response Hash`](../../doc/models/publish-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'
body = {}
body[:version] = 1
body[:idempotency_key] = '32da42d0-1997-41b0-826b-f09464fc2c2e'

result = invoices_api.publish_invoice(invoice_id: invoice_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

