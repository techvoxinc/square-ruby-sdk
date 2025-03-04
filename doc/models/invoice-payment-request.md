
# Invoice Payment Request

Represents a payment request for an [invoice](../../doc/models/invoice.md). Invoices can specify a maximum
of 13 payment requests, with up to 12 `INSTALLMENT` request types. For more information,
see [Payment requests](https://developer.squareup.com/docs/invoices-api/overview#payment-requests).

Adding `INSTALLMENT` payment requests to an invoice requires an
[Invoices Plus subscription](https://developer.squareup.com/docs/invoices-api/overview#invoices-plus-subscription).

## Structure

`Invoice Payment Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | The Square-generated ID of the payment request in an [invoice](../../doc/models/invoice.md).<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255` |
| `request_method` | [`String (Invoice Request Method)`](../../doc/models/invoice-request-method.md) | Optional | Specifies the action for Square to take for processing the invoice. For example,<br>email the invoice, charge a customer's card on file, or do nothing. DEPRECATED at<br>version 2021-01-21. The corresponding `request_method` field is replaced by the<br>`Invoice.delivery_method` and `InvoicePaymentRequest.automatic_payment_source` fields. |
| `request_type` | [`String (Invoice Request Type)`](../../doc/models/invoice-request-type.md) | Optional | Indicates the type of the payment request. For more information, see<br>[Payment requests](https://developer.squareup.com/docs/invoices-api/overview#payment-requests). |
| `due_date` | `String` | Optional | The due date (in the invoice's time zone) for the payment request, in `YYYY-MM-DD` format. This field<br>is required to create a payment request.<br><br>After this date, the invoice becomes overdue. For example, a payment `due_date` of 2021-03-09 with a `timezone`<br>of America/Los\_Angeles becomes overdue at midnight on March 9 in America/Los\_Angeles (which equals a UTC<br>timestamp of 2021-03-10T08:00:00Z). |
| `fixed_amount_requested_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `percentage_requested` | `String` | Optional | Specifies the amount for the payment request in percentage:<br><br>- When the payment `request_type` is `DEPOSIT`, it is the percentage of the order's total amount.<br>- When the payment `request_type` is `INSTALLMENT`, it is the percentage of the order's total less<br>  the deposit, if requested. The sum of the `percentage_requested` in all installment<br>  payment requests must be equal to 100.<br><br>You cannot specify this when the payment `request_type` is `BALANCE` or when the<br>payment request specifies the `fixed_amount_requested_money` field. |
| `tipping_enabled` | `TrueClass\|FalseClass` | Optional | If set to true, the Square-hosted invoice page (the `public_url` field of the invoice)<br>provides a place for the customer to pay a tip.<br><br>This field is allowed only on the final payment request  <br>and the payment `request_type` must be `BALANCE` or `INSTALLMENT`. |
| `automatic_payment_source` | [`String (Invoice Automatic Payment Source)`](../../doc/models/invoice-automatic-payment-source.md) | Optional | Indicates the automatic payment method for an [invoice payment request](../../doc/models/invoice-payment-request.md). |
| `card_id` | `String` | Optional | The ID of the credit or debit card on file to charge for the payment request. To get the cards on file for a customer,<br>call [ListCards](../../doc/api/cards.md#list-cards) and include the `customer_id` of the invoice recipient.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255` |
| `reminders` | [`Array<Invoice Payment Reminder Hash>`](../../doc/models/invoice-payment-reminder.md) | Optional | A list of one or more reminders to send for the payment request. |
| `computed_amount_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `total_completed_amount_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `rounding_adjustment_included_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |

## Example (as JSON)

```json
{
  "uid": null,
  "request_method": null,
  "request_type": null,
  "due_date": null,
  "fixed_amount_requested_money": null,
  "percentage_requested": null,
  "tipping_enabled": null,
  "automatic_payment_source": null,
  "card_id": null,
  "reminders": null,
  "computed_amount_money": null,
  "total_completed_amount_money": null,
  "rounding_adjustment_included_money": null
}
```

