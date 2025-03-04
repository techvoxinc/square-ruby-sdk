
# Break Type

A defined break template that sets an expectation for possible `Break`
instances on a `Shift`.

## Structure

`Break Type`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The UUID for this object.<br>**Constraints**: *Maximum Length*: `255` |
| `location_id` | `String` | Required | The ID of the business location this type of break applies to.<br>**Constraints**: *Minimum Length*: `1` |
| `break_name` | `String` | Required | A human-readable name for this type of break. The name is displayed to<br>employees in Square products.<br>**Constraints**: *Minimum Length*: `1` |
| `expected_duration` | `String` | Required | Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of<br>this break. Precision less than minutes is truncated.<br>**Constraints**: *Minimum Length*: `1` |
| `is_paid` | `TrueClass\|FalseClass` | Required | Whether this break counts towards time worked for compensation<br>purposes. |
| `version` | `Integer` | Optional | Used for resolving concurrency issues. The request fails if the version<br>provided does not match the server version at the time of the request. If a value is not<br>provided, Square's servers execute a "blind" write; potentially<br>overwriting another writer's data. |
| `created_at` | `String` | Optional | A read-only timestamp in RFC 3339 format. |
| `updated_at` | `String` | Optional | A read-only timestamp in RFC 3339 format. |

## Example (as JSON)

```json
{
  "id": null,
  "location_id": "location_id4",
  "break_name": "break_name8",
  "expected_duration": "expected_duration4",
  "is_paid": false,
  "version": null,
  "created_at": null,
  "updated_at": null
}
```

