
# Search Team Members Filter

Represents a filter used in a search for `TeamMember` objects. `AND` logic is applied
between the individual fields, and `OR` logic is applied within list-based fields.
For example, setting this filter value:

```
filter = (locations_ids = ["A", "B"], status = ACTIVE)
```

returns only active team members assigned to either location "A" or "B".

## Structure

`Search Team Members Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_ids` | `Array<String>` | Optional | When present, filters by team members assigned to the specified locations.<br>When empty, includes team members assigned to any location. |
| `status` | [`String (Team Member Status)`](../../doc/models/team-member-status.md) | Optional | Enumerates the possible statuses the team member can have within a business. |
| `is_owner` | `TrueClass\|FalseClass` | Optional | When present and set to true, returns the team member who is the owner of the Square account. |

## Example (as JSON)

```json
{
  "location_ids": null,
  "status": null,
  "is_owner": null
}
```

