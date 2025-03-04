# Disputes

```ruby
disputes_api = client.disputes
```

## Class Name

`DisputesApi`

## Methods

* [List Disputes](../../doc/api/disputes.md#list-disputes)
* [Retrieve Dispute](../../doc/api/disputes.md#retrieve-dispute)
* [Accept Dispute](../../doc/api/disputes.md#accept-dispute)
* [List Dispute Evidence](../../doc/api/disputes.md#list-dispute-evidence)
* [Create Dispute Evidence File](../../doc/api/disputes.md#create-dispute-evidence-file)
* [Create Dispute Evidence Text](../../doc/api/disputes.md#create-dispute-evidence-text)
* [Delete Dispute Evidence](../../doc/api/disputes.md#delete-dispute-evidence)
* [Retrieve Dispute Evidence](../../doc/api/disputes.md#retrieve-dispute-evidence)
* [Submit Evidence](../../doc/api/disputes.md#submit-evidence)


# List Disputes

Returns a list of disputes associated with a particular account.

```ruby
def list_disputes(cursor: nil,
                  states: nil,
                  location_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for the original query.<br>For more information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). |
| `states` | [`String (Dispute State)`](../../doc/models/dispute-state.md) | Query, Optional | The dispute states to filter the result.<br>If not specified, the endpoint returns all open disputes (the dispute status is not `INQUIRY_CLOSED`, `WON`,<br>or `LOST`). |
| `location_id` | `String` | Query, Optional | The ID of the location for which to return a list of disputes. If not specified, the endpoint returns<br>all open disputes (the dispute status is not `INQUIRY_CLOSED`, `WON`, or `LOST`) associated with all locations. |

## Response Type

[`List Disputes Response Hash`](../../doc/models/list-disputes-response.md)

## Example Usage

```ruby
result = disputes_api.list_disputes()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Dispute

Returns details about a specific dispute.

```ruby
def retrieve_dispute(dispute_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute you want more details about. |

## Response Type

[`Retrieve Dispute Response Hash`](../../doc/models/retrieve-dispute-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'

result = disputes_api.retrieve_dispute(dispute_id: dispute_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Accept Dispute

Accepts the loss on a dispute. Square returns the disputed amount to the cardholder and
updates the dispute state to ACCEPTED.

Square debits the disputed amount from the seller’s Square account. If the Square account
does not have sufficient funds, Square debits the associated bank account.

```ruby
def accept_dispute(dispute_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute you want to accept. |

## Response Type

[`Accept Dispute Response Hash`](../../doc/models/accept-dispute-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'

result = disputes_api.accept_dispute(dispute_id: dispute_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# List Dispute Evidence

Returns a list of evidence associated with a dispute.

```ruby
def list_dispute_evidence(dispute_id:,
                          cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute. |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for the original query.<br>For more information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). |

## Response Type

[`List Dispute Evidence Response Hash`](../../doc/models/list-dispute-evidence-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'

result = disputes_api.list_dispute_evidence(dispute_id: dispute_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Dispute Evidence File

Uploads a file to use as evidence in a dispute challenge. The endpoint accepts HTTP
multipart/form-data file uploads in HEIC, HEIF, JPEG, PDF, PNG, and TIFF formats.

```ruby
def create_dispute_evidence_file(dispute_id:,
                                 request: nil,
                                 image_file: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute you want to upload evidence for. |
| `request` | [`Create Dispute Evidence File Request Hash`](../../doc/models/create-dispute-evidence-file-request.md) | Form (JSON-Encoded), Optional | Defines the parameters for a `CreateDisputeEvidenceFile` request. |
| `image_file` | `File \| UploadIO` | Form, Optional | - |

## Response Type

[`Create Dispute Evidence File Response Hash`](../../doc/models/create-dispute-evidence-file-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'

result = disputes_api.create_dispute_evidence_file(dispute_id: dispute_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Dispute Evidence Text

Uploads text to use as evidence for a dispute challenge.

```ruby
def create_dispute_evidence_text(dispute_id:,
                                 body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute you want to upload evidence for. |
| `body` | [`Create Dispute Evidence Text Request Hash`](../../doc/models/create-dispute-evidence-text-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Dispute Evidence Text Response Hash`](../../doc/models/create-dispute-evidence-text-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'
body = {}
body[:idempotency_key] = 'ed3ee3933d946f1514d505d173c82648'
body[:evidence_type] = 'TRACKING_NUMBER'
body[:evidence_text] = '1Z8888888888888888'

result = disputes_api.create_dispute_evidence_text(dispute_id: dispute_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Dispute Evidence

Removes specified evidence from a dispute.

Square does not send the bank any evidence that is removed. Also, you cannot remove evidence after
submitting it to the bank using [SubmitEvidence](../../doc/api/disputes.md#submit-evidence).

```ruby
def delete_dispute_evidence(dispute_id:,
                            evidence_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute you want to remove evidence from. |
| `evidence_id` | `String` | Template, Required | The ID of the evidence you want to remove. |

## Response Type

[`Delete Dispute Evidence Response Hash`](../../doc/models/delete-dispute-evidence-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'
evidence_id = 'evidence_id2'

result = disputes_api.delete_dispute_evidence(dispute_id: dispute_id, evidence_id: evidence_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Dispute Evidence

Returns the evidence metadata specified by the evidence ID in the request URL path

You must maintain a copy of the evidence you upload if you want to reference it later. You cannot
download the evidence after you upload it.

```ruby
def retrieve_dispute_evidence(dispute_id:,
                              evidence_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute that you want to retrieve evidence from. |
| `evidence_id` | `String` | Template, Required | The ID of the evidence to retrieve. |

## Response Type

[`Retrieve Dispute Evidence Response Hash`](../../doc/models/retrieve-dispute-evidence-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'
evidence_id = 'evidence_id2'

result = disputes_api.retrieve_dispute_evidence(dispute_id: dispute_id, evidence_id: evidence_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Submit Evidence

Submits evidence to the cardholder's bank.

Before submitting evidence, Square compiles all available evidence. This includes evidence uploaded
using the [CreateDisputeEvidenceFile](../../doc/api/disputes.md#create-dispute-evidence-file) and
[CreateDisputeEvidenceText](../../doc/api/disputes.md#create-dispute-evidence-text) endpoints and
evidence automatically provided by Square, when available.

```ruby
def submit_evidence(dispute_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `dispute_id` | `String` | Template, Required | The ID of the dispute that you want to submit evidence for. |

## Response Type

[`Submit Evidence Response Hash`](../../doc/models/submit-evidence-response.md)

## Example Usage

```ruby
dispute_id = 'dispute_id2'

result = disputes_api.submit_evidence(dispute_id: dispute_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

