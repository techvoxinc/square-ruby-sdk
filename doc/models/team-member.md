
# Team Member

A record representing an individual team member for a business.

## Structure

`Team Member`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The unique ID for the team member. |
| `reference_id` | `String` | Optional | A second ID used to associate the team member with an entity in another system. |
| `is_owner` | `TrueClass\|FalseClass` | Optional | Whether the team member is the owner of the Square account. |
| `status` | [`String (Team Member Status)`](../../doc/models/team-member-status.md) | Optional | Enumerates the possible statuses the team member can have within a business. |
| `given_name` | `String` | Optional | The given name (that is, the first name) associated with the team member. |
| `family_name` | `String` | Optional | The family name (that is, the last name) associated with the team member. |
| `email_address` | `String` | Optional | The email address associated with the team member. |
| `phone_number` | `String` | Optional | The team member's phone number, in E.164 format. For example:<br>+14155552671 - the country code is 1 for US<br>+551155256325 - the country code is 55 for BR |
| `created_at` | `String` | Optional | The timestamp, in RFC 3339 format, describing when the team member was created.<br>For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z". |
| `updated_at` | `String` | Optional | The timestamp, in RFC 3339 format, describing when the team member was last updated.<br>For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z". |
| `assigned_locations` | [`Team Member Assigned Locations Hash`](../../doc/models/team-member-assigned-locations.md) | Optional | An object that represents a team member's assignment to locations. |

## Example (as JSON)

```json
{
  "id": null,
  "reference_id": null,
  "is_owner": null,
  "status": null,
  "given_name": null,
  "family_name": null,
  "email_address": null,
  "phone_number": null,
  "created_at": null,
  "updated_at": null,
  "assigned_locations": null
}
```

