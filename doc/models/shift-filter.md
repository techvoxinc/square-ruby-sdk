
# Shift Filter

Defines a filter used in a search for `Shift` records. `AND` logic is
used by Square's servers to apply each filter property specified.

## Structure

`Shift Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_ids` | `Array<String>` | Optional | Fetch shifts for the specified location. |
| `employee_ids` | `Array<String>` | Optional | Fetch shifts for the specified employees. DEPRECATED at version 2020-08-26. Use `team_member_ids` instead. |
| `status` | [`String (Shift Filter Status)`](../../doc/models/shift-filter-status.md) | Optional | Specifies the `status` of `Shift` records to be returned. |
| `start` | [`Time Range Hash`](../../doc/models/time-range.md) | Optional | Represents a generic time range. The start and end values are<br>represented in RFC 3339 format. Time ranges are customized to be<br>inclusive or exclusive based on the needs of a particular endpoint.<br>Refer to the relevant endpoint-specific documentation to determine<br>how time ranges are handled. |
| `end` | [`Time Range Hash`](../../doc/models/time-range.md) | Optional | Represents a generic time range. The start and end values are<br>represented in RFC 3339 format. Time ranges are customized to be<br>inclusive or exclusive based on the needs of a particular endpoint.<br>Refer to the relevant endpoint-specific documentation to determine<br>how time ranges are handled. |
| `workday` | [`Shift Workday Hash`](../../doc/models/shift-workday.md) | Optional | A `Shift` search query filter parameter that sets a range of days that<br>a `Shift` must start or end in before passing the filter condition. |
| `team_member_ids` | `Array<String>` | Optional | Fetch shifts for the specified team members. Replaced `employee_ids` at version "2020-08-26". |

## Example (as JSON)

```json
{
  "location_ids": null,
  "employee_ids": null,
  "status": null,
  "start": null,
  "end": null,
  "workday": null,
  "team_member_ids": null
}
```

