
# V1 Payment

A payment represents a paid transaction between a Square merchant and a
customer. Payment details are usually available from Connect API endpoints
within a few minutes after the transaction completes.

Each Payment object includes several fields that end in `_money`. These fields
describe the various amounts of money that contribute to the payment total:

<ul>
<li>
Monetary values are <b>positive</b> if they represent an
<em>increase</em> in the amount of money the merchant receives (e.g.,
<code>tax_money</code>, <code>tip_money</code>).
</li>
<li>
Monetary values are <b>negative</b> if they represent an
<em>decrease</em> in the amount of money the merchant receives (e.g.,
<code>discount_money</code>, <code>refunded_money</code>).
</li>
</ul>


## Structure

`V1 Payment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The payment's unique identifier. |
| `merchant_id` | `String` | Optional | The unique identifier of the merchant that took the payment. |
| `created_at` | `String` | Optional | The time when the payment was created, in ISO 8601 format. Reflects the time of the first payment if the object represents an incomplete partial payment, and the time of the last or complete payment otherwise. |
| `creator_id` | `String` | Optional | The unique identifier of the Square account that took the payment. |
| `device` | [`Device Hash`](../../doc/models/device.md) | Optional | - |
| `payment_url` | `String` | Optional | The URL of the payment's detail page in the merchant dashboard. The merchant must be signed in to the merchant dashboard to view this page. |
| `receipt_url` | `String` | Optional | The URL of the receipt for the payment. Note that for split tender<br>payments, this URL corresponds to the receipt for the first tender<br>listed in the payment's tender field. Each Tender object has its own<br>receipt_url field you can use to get the other receipts associated with<br>a split tender payment. |
| `inclusive_tax_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `additive_tax_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `tax_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `tip_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `discount_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `total_collected_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `processing_fee_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `net_total_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `refunded_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `swedish_rounding_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `gross_sales_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `net_sales_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `inclusive_tax` | [`Array<V1 Payment Tax Hash>`](../../doc/models/v1-payment-tax.md) | Optional | All of the inclusive taxes associated with the payment. |
| `additive_tax` | [`Array<V1 Payment Tax Hash>`](../../doc/models/v1-payment-tax.md) | Optional | All of the additive taxes associated with the payment. |
| `tender` | [`Array<V1 Tender Hash>`](../../doc/models/v1-tender.md) | Optional | All of the tenders associated with the payment. |
| `refunds` | [`Array<V1 Refund Hash>`](../../doc/models/v1-refund.md) | Optional | All of the refunds applied to the payment. Note that the value of all refunds on a payment can exceed the value of all tenders if a merchant chooses to refund money to a tender after previously accepting returned goods as part of an exchange. |
| `itemizations` | [`Array<V1 Payment Itemization Hash>`](../../doc/models/v1-payment-itemization.md) | Optional | The items purchased in the payment. |
| `surcharge_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `surcharges` | [`Array<V1 Payment Surcharge Hash>`](../../doc/models/v1-payment-surcharge.md) | Optional | A list of all surcharges associated with the payment. |
| `is_partial` | `TrueClass\|FalseClass` | Optional | Indicates whether or not the payment is only partially paid for.<br>If true, this payment will have the tenders collected so far, but the<br>itemizations will be empty until the payment is completed. |

## Example (as JSON)

```json
{
  "id": null,
  "merchant_id": null,
  "created_at": null,
  "creator_id": null,
  "device": null,
  "payment_url": null,
  "receipt_url": null,
  "inclusive_tax_money": null,
  "additive_tax_money": null,
  "tax_money": null,
  "tip_money": null,
  "discount_money": null,
  "total_collected_money": null,
  "processing_fee_money": null,
  "net_total_money": null,
  "refunded_money": null,
  "swedish_rounding_money": null,
  "gross_sales_money": null,
  "net_sales_money": null,
  "inclusive_tax": null,
  "additive_tax": null,
  "tender": null,
  "refunds": null,
  "itemizations": null,
  "surcharge_money": null,
  "surcharges": null,
  "is_partial": null
}
```

