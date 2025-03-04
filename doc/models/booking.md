
# Booking

Represents a booking as a time-bound service contract for a seller's staff member to provide a specified service
at a given location to a requesting customer in one or more appointment segments.

## Structure

`Booking`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | A unique ID of this object representing a booking.<br>**Constraints**: *Maximum Length*: `36` |
| `version` | `Integer` | Optional | The revision number for the booking used for optimistic concurrency. |
| `status` | [`String (Booking Status)`](../../doc/models/booking-status.md) | Optional | Supported booking statuses. |
| `created_at` | `String` | Optional | The RFC 3339 timestamp specifying the creation time of this booking. |
| `updated_at` | `String` | Optional | The RFC 3339 timestamp specifying the most recent update time of this booking. |
| `start_at` | `String` | Optional | The RFC 3339 timestamp specifying the starting time of this booking. |
| `location_id` | `String` | Optional | The ID of the [Location](../../doc/models/location.md) object representing the location where the booked service is provided. Once set when the booking is created, its value cannot be changed.<br>**Constraints**: *Maximum Length*: `32` |
| `customer_id` | `String` | Optional | The ID of the [Customer](../../doc/models/customer.md) object representing the customer receiving the booked service.<br>**Constraints**: *Maximum Length*: `192` |
| `customer_note` | `String` | Optional | The free-text field for the customer to supply notes about the booking. For example, the note can be preferences that cannot be expressed by supported attributes of a relevant [CatalogObject](../../doc/models/catalog-object.md) instance.<br>**Constraints**: *Maximum Length*: `4096` |
| `seller_note` | `String` | Optional | The free-text field for the seller to supply notes about the booking. For example, the note can be preferences that cannot be expressed by supported attributes of a specific [CatalogObject](../../doc/models/catalog-object.md) instance.<br>This field should not be visible to customers.<br>**Constraints**: *Maximum Length*: `4096` |
| `appointment_segments` | [`Array<Appointment Segment Hash>`](../../doc/models/appointment-segment.md) | Optional | A list of appointment segments for this booking. |
| `transition_time_minutes` | `Integer` | Optional | Additional time at the end of a booking.<br>Applications should not make this field visible to customers of a seller. |
| `all_day` | `TrueClass\|FalseClass` | Optional | Whether the booking is of a full business day. |
| `location_type` | [`String (Business Appointment Settings Booking Location Type)`](../../doc/models/business-appointment-settings-booking-location-type.md) | Optional | Supported types of location where service is provided. |
| `creator_details` | [`Booking Creator Details Hash`](../../doc/models/booking-creator-details.md) | Optional | Information about a booking creator. |
| `source` | [`String (Booking Booking Source)`](../../doc/models/booking-booking-source.md) | Optional | Supported sources a booking was created from. |

## Example (as JSON)

```json
{
  "id": null,
  "version": null,
  "status": null,
  "created_at": null,
  "updated_at": null,
  "start_at": null,
  "location_id": null,
  "customer_id": null,
  "customer_note": null,
  "seller_note": null,
  "appointment_segments": null,
  "transition_time_minutes": null,
  "all_day": null,
  "location_type": null,
  "creator_details": null,
  "source": null
}
```

