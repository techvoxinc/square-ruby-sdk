
# Catalog Custom Attribute Value

An instance of a custom attribute. Custom attributes can be defined and
added to `ITEM` and `ITEM_VARIATION` type catalog objects.
[Read more about custom attributes](https://developer.squareup.com/docs/catalog-api/add-custom-attributes).

## Structure

`Catalog Custom Attribute Value`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | The name of the custom attribute. |
| `string_value` | `String` | Optional | The string value of the custom attribute.  Populated if `type` = `STRING`. |
| `custom_attribute_definition_id` | `String` | Optional | The id of the [CatalogCustomAttributeDefinition](../../doc/models/catalog-custom-attribute-definition.md) this value belongs to. |
| `type` | [`String (Catalog Custom Attribute Definition Type)`](../../doc/models/catalog-custom-attribute-definition-type.md) | Optional | Defines the possible types for a custom attribute. |
| `number_value` | `String` | Optional | Populated if `type` = `NUMBER`. Contains a string<br>representation of a decimal number, using a `.` as the decimal separator. |
| `boolean_value` | `TrueClass\|FalseClass` | Optional | A `true` or `false` value. Populated if `type` = `BOOLEAN`. |
| `selection_uid_values` | `Array<String>` | Optional | One or more choices from `allowed_selections`. Populated if `type` = `SELECTION`. |
| `key` | `String` | Optional | A copy of key from the associated `CatalogCustomAttributeDefinition`. |

## Example (as JSON)

```json
{
  "name": null,
  "string_value": null,
  "custom_attribute_definition_id": null,
  "type": null,
  "number_value": null,
  "boolean_value": null,
  "selection_uid_values": null,
  "key": null
}
```

