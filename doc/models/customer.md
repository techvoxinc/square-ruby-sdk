
# Customer

Represents a Square customer profile in the Customer Directory of a Square seller.

## Structure

`Customer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | A unique Square-assigned ID for the customer profile.<br><br>If you need this ID for an API request, use the ID returned when you created the customer profile or call the [SearchCustomers](../../doc/api/customers.md#search-customers)<br>or [ListCustomers](../../doc/api/customers.md#list-customers) endpoint. |
| `created_at` | `String` | Optional | The timestamp when the customer profile was created, in RFC 3339 format. |
| `updated_at` | `String` | Optional | The timestamp when the customer profile was last updated, in RFC 3339 format. |
| `cards` | [`Array<Card Hash>`](../../doc/models/card.md) | Optional | Payment details of the credit, debit, and gift cards stored on file for the customer profile.<br><br>DEPRECATED at version 2021-06-16. Replaced by calling [ListCards](../../doc/api/cards.md#list-cards) (for credit and debit cards on file)<br>or [ListGiftCards](../../doc/api/gift-cards.md#list-gift-cards) (for gift cards on file) and including the `customer_id` query parameter.<br>For more information, see [Migration notes](https://developer.squareup.com/docs/customers-api/what-it-does#migrate-customer-cards). |
| `given_name` | `String` | Optional | The given name (that is, the first name) associated with the customer profile. |
| `family_name` | `String` | Optional | The family name (that is, the last name) associated with the customer profile. |
| `nickname` | `String` | Optional | A nickname for the customer profile. |
| `company_name` | `String` | Optional | A business name associated with the customer profile. |
| `email_address` | `String` | Optional | The email address associated with the customer profile. |
| `address` | [`Address Hash`](../../doc/models/address.md) | Optional | Represents a postal address in a country.<br>For more information, see [Working with Addresses](https://developer.squareup.com/docs/build-basics/working-with-addresses). |
| `phone_number` | `String` | Optional | The phone number associated with the customer profile. A phone number can contain 9–16 digits, with an optional `+` prefix. |
| `birthday` | `String` | Optional | The birthday associated with the customer profile, in RFC 3339 format. The year is optional. The timezone and time are not allowed.<br>For example, `0000-09-21T00:00:00-00:00` represents a birthday on September 21 and `1998-09-21T00:00:00-00:00` represents a birthday on September 21, 1998. |
| `reference_id` | `String` | Optional | An optional second ID used to associate the customer profile with an<br>entity in another system. |
| `note` | `String` | Optional | A custom note associated with the customer profile. |
| `preferences` | [`Customer Preferences Hash`](../../doc/models/customer-preferences.md) | Optional | Represents communication preferences for the customer profile. |
| `creation_source` | [`String (Customer Creation Source)`](../../doc/models/customer-creation-source.md) | Optional | Indicates the method used to create the customer profile. |
| `group_ids` | `Array<String>` | Optional | The IDs of customer groups the customer belongs to. |
| `segment_ids` | `Array<String>` | Optional | The IDs of segments the customer belongs to. |
| `version` | `Integer` | Optional | The Square-assigned version number of the customer profile. The version number is incremented each time an update is committed to the customer profile, except for changes to customer segment membership and cards on file. |
| `tax_ids` | [`Customer Tax Ids Hash`](../../doc/models/customer-tax-ids.md) | Optional | Represents the tax ID associated with a [customer profile](../../doc/models/customer.md). The corresponding `tax_ids` field is available only for customers of sellers in EU countries or the United Kingdom.<br>For more information, see [Customer tax IDs](https://developer.squareup.com/docs/customers-api/what-it-does#customer-tax-ids). |

## Example (as JSON)

```json
{
  "id": null,
  "created_at": null,
  "updated_at": null,
  "cards": null,
  "given_name": null,
  "family_name": null,
  "nickname": null,
  "company_name": null,
  "email_address": null,
  "address": null,
  "phone_number": null,
  "birthday": null,
  "reference_id": null,
  "note": null,
  "preferences": null,
  "creation_source": null,
  "group_ids": null,
  "segment_ids": null,
  "version": null,
  "tax_ids": null
}
```

