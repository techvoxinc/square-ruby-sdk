
# Invoice

Stores information about an invoice. You use the Invoices API to create and manage
invoices. For more information, see [Manage Invoices Using the Invoices API](https://developer.squareup.com/docs/invoices-api/overview).

## Structure

`Invoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The Square-assigned ID of the invoice. |
| `version` | `Integer` | Optional | The Square-assigned version number, which is incremented each time an update is committed to the invoice. |
| `location_id` | `String` | Optional | The ID of the location that this invoice is associated with.<br><br>If specified in a `CreateInvoice` request, the value must match the `location_id` of the associated order.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255` |
| `order_id` | `String` | Optional | The ID of the [order](../../doc/models/order.md) for which the invoice is created.<br>This field is required when creating an invoice, and the order must be in the `OPEN` state.<br><br>To view the line items and other information for the associated order, call the<br>[RetrieveOrder](../../doc/api/orders.md#retrieve-order) endpoint using the order ID.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255` |
| `primary_recipient` | [`Invoice Recipient Hash`](../../doc/models/invoice-recipient.md) | Optional | Represents a snapshot of customer data. This object stores customer data that is displayed on the invoice<br>and that Square uses to deliver the invoice.<br><br>When you provide a customer ID for a draft invoice, Square retrieves the associated customer profile and populates<br>the remaining `InvoiceRecipient` fields. You cannot update these fields after the invoice is published.<br>Square updates the customer ID in response to a merge operation, but does not update other fields. |
| `payment_requests` | [`Array<Invoice Payment Request Hash>`](../../doc/models/invoice-payment-request.md) | Optional | The payment schedule for the invoice, represented by one or more payment requests that<br>define payment settings, such as amount due and due date. An invoice supports the following payment request combinations:<br><br>- One balance<br>- One deposit with one balance<br>- 2–12 installments<br>- One deposit with 2–12 installments<br><br>This field is required when creating an invoice. It must contain at least one payment request.<br>All payment requests for the invoice must equal the total order amount. For more information, see<br>[Payment requests](https://developer.squareup.com/docs/invoices-api/overview#payment-requests).<br><br>Adding `INSTALLMENT` payment requests to an invoice requires an<br>[Invoices Plus subscription](https://developer.squareup.com/docs/invoices-api/overview#invoices-plus-subscription). |
| `delivery_method` | [`String (Invoice Delivery Method)`](../../doc/models/invoice-delivery-method.md) | Optional | Indicates how Square delivers the [invoice](../../doc/models/invoice.md) to the customer. |
| `invoice_number` | `String` | Optional | A user-friendly invoice number that is displayed on the invoice. The value is unique within a location.<br>If not provided when creating an invoice, Square assigns a value.<br>It increments from 1 and is padded with zeros making it 7 characters long<br>(for example, 0000001 and 0000002).<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `191` |
| `title` | `String` | Optional | The title of the invoice, which is displayed on the invoice.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255` |
| `description` | `String` | Optional | The description of the invoice, which is displayed on the invoice.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `65536` |
| `scheduled_at` | `String` | Optional | The timestamp when the invoice is scheduled for processing, in RFC 3339 format.<br>After the invoice is published, Square processes the invoice on the specified date,<br>according to the delivery method and payment request settings.<br><br>If the field is not set, Square processes the invoice immediately after it is published. |
| `public_url` | `String` | Optional | The URL of the Square-hosted invoice page.<br>After you publish the invoice using the `PublishInvoice` endpoint, Square hosts the invoice<br>page and returns the page URL in the response. |
| `next_payment_amount_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `status` | [`String (Invoice Status)`](../../doc/models/invoice-status.md) | Optional | Indicates the status of an invoice. |
| `timezone` | `String` | Optional | The time zone used to interpret calendar dates on the invoice, such as `due_date`.<br>When an invoice is created, this field is set to the `timezone` specified for the seller<br>location. The value cannot be changed.<br><br>For example, a payment `due_date` of 2021-03-09 with a `timezone` of America/Los\_Angeles<br>becomes overdue at midnight on March 9 in America/Los\_Angeles (which equals a UTC timestamp<br>of 2021-03-10T08:00:00Z). |
| `created_at` | `String` | Optional | The timestamp when the invoice was created, in RFC 3339 format. |
| `updated_at` | `String` | Optional | The timestamp when the invoice was last updated, in RFC 3339 format. |
| `accepted_payment_methods` | [`Invoice Accepted Payment Methods Hash`](../../doc/models/invoice-accepted-payment-methods.md) | Optional | The payment methods that customers can use to pay an invoice on the Square-hosted invoice page. |
| `custom_fields` | [`Array<Invoice Custom Field Hash>`](../../doc/models/invoice-custom-field.md) | Optional | Additional seller-defined fields that are displayed on the invoice. For more information, see<br>[Custom fields](https://developer.squareup.com/docs/invoices-api/overview#custom-fields).<br><br>Adding custom fields to an invoice requires an<br>[Invoices Plus subscription](https://developer.squareup.com/docs/invoices-api/overview#invoices-plus-subscription).<br><br>Max: 2 custom fields |
| `subscription_id` | `String` | Optional | The ID of the [subscription](../../doc/models/subscription.md) associated with the invoice.<br>This field is present only on subscription billing invoices. |
| `sale_or_service_date` | `String` | Optional | The date of the sale or the date that the service is rendered, in `YYYY-MM-DD` format.<br>This field can be used to specify a past or future date which is displayed on the invoice. |
| `payment_conditions` | `String` | Optional | **France only.** The payment terms and conditions that are displayed on the invoice. For more information,<br>see [Payment conditions](https://developer.squareup.com/docs/invoices-api/overview#payment-conditions).<br><br>For countries other than France, Square returns an `INVALID_REQUEST_ERROR` with a `BAD_REQUEST` code and<br>"Payment conditions are not supported for this location's country" detail if this field is included in `CreateInvoice` or `UpdateInvoice` requests.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `2000` |

## Example (as JSON)

```json
{
  "id": null,
  "version": null,
  "location_id": null,
  "order_id": null,
  "primary_recipient": null,
  "payment_requests": null,
  "delivery_method": null,
  "invoice_number": null,
  "title": null,
  "description": null,
  "scheduled_at": null,
  "public_url": null,
  "next_payment_amount_money": null,
  "status": null,
  "timezone": null,
  "created_at": null,
  "updated_at": null,
  "accepted_payment_methods": null,
  "custom_fields": null,
  "subscription_id": null,
  "sale_or_service_date": null,
  "payment_conditions": null
}
```

