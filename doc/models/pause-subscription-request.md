
# Pause Subscription Request

Defines input parameters in a request to the
[PauseSubscription](../../doc/api/subscriptions.md#pause-subscription) endpoint.

## Structure

`Pause Subscription Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pause_effective_date` | `String` | Optional | The `YYYY-MM-DD`-formatted date when the scheduled `PAUSE` action takes place on the subscription.<br><br>When this date is unspecified or falls within the current billing cycle, the subscription is paused<br>on the starting date of the next billing cycle. |
| `pause_cycle_duration` | `Integer` | Optional | The number of billing cycles the subscription will be paused before it is reactivated.<br><br>When this is set, a `RESUME` action is also scheduled to take place on the subscription at<br>the end of the specified pause cycle duration. In this case, neither `resume_effective_date`<br>nor `resume_change_timing` may be specified. |
| `resume_effective_date` | `String` | Optional | The date when the subscription is reactivated by a scheduled `RESUME` action.<br>This date must be at least one billing cycle ahead of `pause_effective_date`. |
| `resume_change_timing` | [`String (Change Timing)`](../../doc/models/change-timing.md) | Optional | Supported timings when a pending change, as an action, takes place to a subscription. |
| `pause_reason` | `String` | Optional | The user-provided reason to pause the subscription.<br>**Constraints**: *Maximum Length*: `255` |

## Example (as JSON)

```json
{
  "pause_effective_date": null,
  "pause_cycle_duration": null,
  "resume_effective_date": null,
  "resume_change_timing": null,
  "pause_reason": null
}
```

