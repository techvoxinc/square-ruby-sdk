
# Order Service Charge

Represents a service charge applied to an order.

## Structure

`Order Service Charge`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | A unique ID that identifies the service charge only within this order.<br>**Constraints**: *Maximum Length*: `60` |
| `name` | `String` | Optional | The name of the service charge.<br>**Constraints**: *Maximum Length*: `512` |
| `catalog_object_id` | `String` | Optional | The catalog object ID referencing the service charge [CatalogObject](../../doc/models/catalog-object.md).<br>**Constraints**: *Maximum Length*: `192` |
| `catalog_version` | `Integer` | Optional | The version of the catalog object that this service charge references. |
| `percentage` | `String` | Optional | The service charge percentage as a string representation of a<br>decimal number. For example, `"7.25"` indicates a service charge of 7.25%.<br><br>Exactly 1 of `percentage` or `amount_money` should be set.<br>**Constraints**: *Maximum Length*: `10` |
| `amount_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `applied_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `total_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `total_tax_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `calculation_phase` | [`String (Order Service Charge Calculation Phase)`](../../doc/models/order-service-charge-calculation-phase.md) | Optional | Represents a phase in the process of calculating order totals.<br>Service charges are applied after the indicated phase.<br><br>[Read more about how order totals are calculated.](https://developer.squareup.com/docs/orders-api/how-it-works#how-totals-are-calculated) |
| `taxable` | `TrueClass\|FalseClass` | Optional | Indicates whether the service charge can be taxed. If set to `true`,<br>order-level taxes automatically apply to the service charge. Note that<br>service charges calculated in the `TOTAL_PHASE` cannot be marked as taxable. |
| `applied_taxes` | [`Array<Order Line Item Applied Tax Hash>`](../../doc/models/order-line-item-applied-tax.md) | Optional | The list of references to the taxes applied to this service charge. Each<br>`OrderLineItemAppliedTax` has a `tax_uid` that references the `uid` of a top-level<br>`OrderLineItemTax` that is being applied to this service charge. On reads, the amount applied<br>is populated.<br><br>An `OrderLineItemAppliedTax` is automatically created on every taxable service charge<br>for all `ORDER` scoped taxes that are added to the order. `OrderLineItemAppliedTax` records<br>for `LINE_ITEM` scoped taxes must be added in requests for the tax to apply to any taxable<br>service charge. Taxable service charges have the `taxable` field set to `true` and calculated<br>in the `SUBTOTAL_PHASE`.<br><br>To change the amount of a tax, modify the referenced top-level tax. |
| `metadata` | `Hash of String` | Optional | Application-defined data attached to this service charge. Metadata fields are intended<br>to store descriptive references or associations with an entity in another system or store brief<br>information about the object. Square does not process this field; it only stores and returns it<br>in relevant API calls. Do not use metadata to store any sensitive information (such as personally<br>identifiable information or card details).<br><br>Keys written by applications must be 60 characters or less and must be in the character set<br>`[a-zA-Z0-9_-]`. Entries can also include metadata generated by Square. These keys are prefixed<br>with a namespace, separated from the key with a ':' character.<br><br>Values have a maximum length of 255 characters.<br><br>An application can have up to 10 entries per metadata field.<br><br>Entries written by applications are private and can only be read or modified by the same<br>application.<br><br>For more information, see [Metadata](https://developer.squareup.com/docs/build-basics/metadata). |
| `type` | [`String (Order Service Charge Type)`](../../doc/models/order-service-charge-type.md) | Optional | - |

## Example (as JSON)

```json
{
  "uid": null,
  "name": null,
  "catalog_object_id": null,
  "catalog_version": null,
  "percentage": null,
  "amount_money": null,
  "applied_money": null,
  "total_money": null,
  "total_tax_money": null,
  "calculation_phase": null,
  "taxable": null,
  "applied_taxes": null,
  "metadata": null,
  "type": null
}
```

