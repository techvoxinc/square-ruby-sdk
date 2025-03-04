
# Retrieve Customer Custom Attribute Request

Represents a [RetrieveCustomerCustomAttribute](../../doc/api/customer-custom-attributes.md#retrieve-customer-custom-attribute) request.

## Structure

`Retrieve Customer Custom Attribute Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `with_definition` | `TrueClass\|FalseClass` | Optional | Indicates whether to return the [custom attribute definition](../../doc/models/custom-attribute-definition.md) in the `definition` field of<br>the custom attribute. Set this parameter to `true` to get the name and description of the custom<br>attribute, information about the data type, or other definition details. The default value is `false`. |
| `version` | `Integer` | Optional | The current version of the custom attribute, which is used for strongly consistent reads to<br>guarantee that you receive the most up-to-date data. When included in the request, Square<br>returns the specified version or a higher version if one exists. If the specified version is<br>higher than the current version, Square returns a `BAD_REQUEST` error. |

## Example (as JSON)

```json
{
  "with_definition": null,
  "version": null
}
```

