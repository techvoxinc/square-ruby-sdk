# Labor

```ruby
labor_api = client.labor
```

## Class Name

`LaborApi`

## Methods

* [List Break Types](../../doc/api/labor.md#list-break-types)
* [Create Break Type](../../doc/api/labor.md#create-break-type)
* [Delete Break Type](../../doc/api/labor.md#delete-break-type)
* [Get Break Type](../../doc/api/labor.md#get-break-type)
* [Update Break Type](../../doc/api/labor.md#update-break-type)
* [List Employee Wages](../../doc/api/labor.md#list-employee-wages)
* [Get Employee Wage](../../doc/api/labor.md#get-employee-wage)
* [Create Shift](../../doc/api/labor.md#create-shift)
* [Search Shifts](../../doc/api/labor.md#search-shifts)
* [Delete Shift](../../doc/api/labor.md#delete-shift)
* [Get Shift](../../doc/api/labor.md#get-shift)
* [Update Shift](../../doc/api/labor.md#update-shift)
* [List Team Member Wages](../../doc/api/labor.md#list-team-member-wages)
* [Get Team Member Wage](../../doc/api/labor.md#get-team-member-wage)
* [List Workweek Configs](../../doc/api/labor.md#list-workweek-configs)
* [Update Workweek Config](../../doc/api/labor.md#update-workweek-config)


# List Break Types

Returns a paginated list of `BreakType` instances for a business.

```ruby
def list_break_types(location_id: nil,
                     limit: nil,
                     cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Query, Optional | Filter the returned `BreakType` results to only those that are associated with the<br>specified location. |
| `limit` | `Integer` | Query, Optional | The maximum number of `BreakType` results to return per page. The number can range between 1<br>and 200. The default is 200. |
| `cursor` | `String` | Query, Optional | A pointer to the next page of `BreakType` results to fetch. |

## Response Type

[`List Break Types Response Hash`](../../doc/models/list-break-types-response.md)

## Example Usage

```ruby
result = labor_api.list_break_types()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Break Type

Creates a new `BreakType`.

A `BreakType` is a template for creating `Break` objects.
You must provide the following values in your request to this
endpoint:

- `location_id`
- `break_name`
- `expected_duration`
- `is_paid`

You can only have three `BreakType` instances per location. If you attempt to add a fourth
`BreakType` for a location, an `INVALID_REQUEST_ERROR` "Exceeded limit of 3 breaks per location."
is returned.

```ruby
def create_break_type(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Break Type Request Hash`](../../doc/models/create-break-type-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Break Type Response Hash`](../../doc/models/create-break-type-response.md)

## Example Usage

```ruby
body = {}
body[:idempotency_key] = 'PAD3NG5KSN2GL'
body[:break_type] = {}
body[:break_type][:location_id] = 'CGJN03P1D08GF'
body[:break_type][:break_name] = 'Lunch Break'
body[:break_type][:expected_duration] = 'PT30M'
body[:break_type][:is_paid] = true

result = labor_api.create_break_type(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Break Type

Deletes an existing `BreakType`.

A `BreakType` can be deleted even if it is referenced from a `Shift`.

```ruby
def delete_break_type(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `BreakType` being deleted. |

## Response Type

[`Delete Break Type Response Hash`](../../doc/models/delete-break-type-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.delete_break_type(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Get Break Type

Returns a single `BreakType` specified by `id`.

```ruby
def get_break_type(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `BreakType` being retrieved. |

## Response Type

[`Get Break Type Response Hash`](../../doc/models/get-break-type-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.get_break_type(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Break Type

Updates an existing `BreakType`.

```ruby
def update_break_type(id:,
                      body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `BreakType` being updated. |
| `body` | [`Update Break Type Request Hash`](../../doc/models/update-break-type-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Break Type Response Hash`](../../doc/models/update-break-type-response.md)

## Example Usage

```ruby
id = 'id0'
body = {}
body[:break_type] = {}
body[:break_type][:location_id] = '26M7H24AZ9N6R'
body[:break_type][:break_name] = 'Lunch'
body[:break_type][:expected_duration] = 'PT50M'
body[:break_type][:is_paid] = true
body[:break_type][:version] = 1

result = labor_api.update_break_type(id: id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# List Employee Wages

**This endpoint is deprecated.**

Returns a paginated list of `EmployeeWage` instances for a business.

```ruby
def list_employee_wages(employee_id: nil,
                        limit: nil,
                        cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `employee_id` | `String` | Query, Optional | Filter the returned wages to only those that are associated with the specified employee. |
| `limit` | `Integer` | Query, Optional | The maximum number of `EmployeeWage` results to return per page. The number can range between<br>1 and 200. The default is 200. |
| `cursor` | `String` | Query, Optional | A pointer to the next page of `EmployeeWage` results to fetch. |

## Response Type

[`List Employee Wages Response Hash`](../../doc/models/list-employee-wages-response.md)

## Example Usage

```ruby
result = labor_api.list_employee_wages()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Get Employee Wage

**This endpoint is deprecated.**

Returns a single `EmployeeWage` specified by `id`.

```ruby
def get_employee_wage(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `EmployeeWage` being retrieved. |

## Response Type

[`Get Employee Wage Response Hash`](../../doc/models/get-employee-wage-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.get_employee_wage(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Shift

Creates a new `Shift`.

A `Shift` represents a complete workday for a single employee.
You must provide the following values in your request to this
endpoint:

- `location_id`
- `employee_id`
- `start_at`

An attempt to create a new `Shift` can result in a `BAD_REQUEST` error when:

- The `status` of the new `Shift` is `OPEN` and the employee has another
  shift with an `OPEN` status.
- The `start_at` date is in the future.
- The `start_at` or `end_at` date overlaps another shift for the same employee.
- The `Break` instances are set in the request and a break `start_at`
  is before the `Shift.start_at`, a break `end_at` is after
  the `Shift.end_at`, or both.

```ruby
def create_shift(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Shift Request Hash`](../../doc/models/create-shift-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Shift Response Hash`](../../doc/models/create-shift-response.md)

## Example Usage

```ruby
body = {}
body[:idempotency_key] = 'HIDSNG5KS478L'
body[:shift] = {}
body[:shift][:location_id] = 'PAA1RJZZKXBFG'
body[:shift][:start_at] = '2019-01-25T08:11:00+00:00'
body[:shift][:end_at] = '2019-01-25T18:11:00+00:00'
body[:shift][:wage] = {}
body[:shift][:wage][:title] = 'Barista'
body[:shift][:wage][:hourly_rate] = {}
body[:shift][:wage][:hourly_rate][:amount] = 1100
body[:shift][:wage][:hourly_rate][:currency] = 'USD'
body[:shift][:breaks] = []


body[:shift][:breaks][0] = {}
body[:shift][:breaks][0][:start_at] = '2019-01-25T11:11:00+00:00'
body[:shift][:breaks][0][:end_at] = '2019-01-25T11:16:00+00:00'
body[:shift][:breaks][0][:break_type_id] = 'REGS1EQR1TPZ5'
body[:shift][:breaks][0][:name] = 'Tea Break'
body[:shift][:breaks][0][:expected_duration] = 'PT5M'
body[:shift][:breaks][0][:is_paid] = true

body[:shift][:team_member_id] = 'ormj0jJJZ5OZIzxrZYJI'

result = labor_api.create_shift(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Search Shifts

Returns a paginated list of `Shift` records for a business.
The list to be returned can be filtered by:

- Location IDs.
- Employee IDs.
- Shift status (`OPEN` and `CLOSED`).
- Shift start.
- Shift end.
- Workday details.

The list can be sorted by:

- `start_at`.
- `end_at`.
- `created_at`.
- `updated_at`.

```ruby
def search_shifts(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Search Shifts Request Hash`](../../doc/models/search-shifts-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Search Shifts Response Hash`](../../doc/models/search-shifts-response.md)

## Example Usage

```ruby
body = {}
body[:query] = {}
body[:query][:filter] = {}
body[:query][:filter][:workday] = {}
body[:query][:filter][:workday][:date_range] = {}
body[:query][:filter][:workday][:date_range][:start_date] = '2019-01-20'
body[:query][:filter][:workday][:date_range][:end_date] = '2019-02-03'
body[:query][:filter][:workday][:match_shifts_by] = 'START_AT'
body[:query][:filter][:workday][:default_timezone] = 'America/Los_Angeles'
body[:limit] = 100

result = labor_api.search_shifts(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Shift

Deletes a `Shift`.

```ruby
def delete_shift(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `Shift` being deleted. |

## Response Type

[`Delete Shift Response Hash`](../../doc/models/delete-shift-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.delete_shift(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Get Shift

Returns a single `Shift` specified by `id`.

```ruby
def get_shift(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `Shift` being retrieved. |

## Response Type

[`Get Shift Response Hash`](../../doc/models/get-shift-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.get_shift(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Shift

Updates an existing `Shift`.

When adding a `Break` to a `Shift`, any earlier `Break` instances in the `Shift` have
the `end_at` property set to a valid RFC-3339 datetime string.

When closing a `Shift`, all `Break` instances in the `Shift` must be complete with `end_at`
set on each `Break`.

```ruby
def update_shift(id:,
                 body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The ID of the object being updated. |
| `body` | [`Update Shift Request Hash`](../../doc/models/update-shift-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Shift Response Hash`](../../doc/models/update-shift-response.md)

## Example Usage

```ruby
id = 'id0'
body = {}
body[:shift] = {}
body[:shift][:location_id] = 'PAA1RJZZKXBFG'
body[:shift][:start_at] = '2019-01-25T08:11:00+00:00'
body[:shift][:end_at] = '2019-01-25T18:11:00+00:00'
body[:shift][:wage] = {}
body[:shift][:wage][:title] = 'Bartender'
body[:shift][:wage][:hourly_rate] = {}
body[:shift][:wage][:hourly_rate][:amount] = 1500
body[:shift][:wage][:hourly_rate][:currency] = 'USD'
body[:shift][:breaks] = []


body[:shift][:breaks][0] = {}
body[:shift][:breaks][0][:id] = 'X7GAQYVVRRG6P'
body[:shift][:breaks][0][:start_at] = '2019-01-25T11:11:00+00:00'
body[:shift][:breaks][0][:end_at] = '2019-01-25T11:16:00+00:00'
body[:shift][:breaks][0][:break_type_id] = 'REGS1EQR1TPZ5'
body[:shift][:breaks][0][:name] = 'Tea Break'
body[:shift][:breaks][0][:expected_duration] = 'PT5M'
body[:shift][:breaks][0][:is_paid] = true

body[:shift][:version] = 1
body[:shift][:team_member_id] = 'ormj0jJJZ5OZIzxrZYJI'

result = labor_api.update_shift(id: id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# List Team Member Wages

Returns a paginated list of `TeamMemberWage` instances for a business.

```ruby
def list_team_member_wages(team_member_id: nil,
                           limit: nil,
                           cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `team_member_id` | `String` | Query, Optional | Filter the returned wages to only those that are associated with the<br>specified team member. |
| `limit` | `Integer` | Query, Optional | The maximum number of `TeamMemberWage` results to return per page. The number can range between<br>1 and 200. The default is 200. |
| `cursor` | `String` | Query, Optional | A pointer to the next page of `EmployeeWage` results to fetch. |

## Response Type

[`List Team Member Wages Response Hash`](../../doc/models/list-team-member-wages-response.md)

## Example Usage

```ruby
result = labor_api.list_team_member_wages()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Get Team Member Wage

Returns a single `TeamMemberWage` specified by `id`.

```ruby
def get_team_member_wage(id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `TeamMemberWage` being retrieved. |

## Response Type

[`Get Team Member Wage Response Hash`](../../doc/models/get-team-member-wage-response.md)

## Example Usage

```ruby
id = 'id0'

result = labor_api.get_team_member_wage(id: id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# List Workweek Configs

Returns a list of `WorkweekConfig` instances for a business.

```ruby
def list_workweek_configs(limit: nil,
                          cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | The maximum number of `WorkweekConfigs` results to return per page. |
| `cursor` | `String` | Query, Optional | A pointer to the next page of `WorkweekConfig` results to fetch. |

## Response Type

[`List Workweek Configs Response Hash`](../../doc/models/list-workweek-configs-response.md)

## Example Usage

```ruby
result = labor_api.list_workweek_configs()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Workweek Config

Updates a `WorkweekConfig`.

```ruby
def update_workweek_config(id:,
                           body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The UUID for the `WorkweekConfig` object being updated. |
| `body` | [`Update Workweek Config Request Hash`](../../doc/models/update-workweek-config-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Workweek Config Response Hash`](../../doc/models/update-workweek-config-response.md)

## Example Usage

```ruby
id = 'id0'
body = {}
body[:workweek_config] = {}
body[:workweek_config][:start_of_week] = 'MON'
body[:workweek_config][:start_of_day_local_time] = '10:00'
body[:workweek_config][:version] = 10

result = labor_api.update_workweek_config(id: id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

