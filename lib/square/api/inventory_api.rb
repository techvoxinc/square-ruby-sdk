module Square
  # InventoryApi
  class InventoryApi < BaseApi
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Deprecated version of
    # [RetrieveInventoryAdjustment]($e/Inventory/RetrieveInventoryAdjustment)
    # after the endpoint URL
    # is updated to conform to the standard convention.
    # @param [String] adjustment_id Required parameter: ID of the
    # [InventoryAdjustment]($m/InventoryAdjustment) to retrieve.
    # @return [RetrieveInventoryAdjustmentResponse Hash] response from the API call
    def deprecated_retrieve_inventory_adjustment(adjustment_id:)
      warn 'Endpoint deprecated_retrieve_inventory_adjustment in InventoryApi '\
           'is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/adjustment/{adjustment_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'adjustment_id' => { 'value' => adjustment_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns the [InventoryAdjustment]($m/InventoryAdjustment) object
    # with the provided `adjustment_id`.
    # @param [String] adjustment_id Required parameter: ID of the
    # [InventoryAdjustment]($m/InventoryAdjustment) to retrieve.
    # @return [RetrieveInventoryAdjustmentResponse Hash] response from the API call
    def retrieve_inventory_adjustment(adjustment_id:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/adjustments/{adjustment_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'adjustment_id' => { 'value' => adjustment_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Deprecated version of
    # [BatchChangeInventory]($e/Inventory/BatchChangeInventory) after the
    # endpoint URL
    # is updated to conform to the standard convention.
    # @param [BatchChangeInventoryRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [BatchChangeInventoryResponse Hash] response from the API call
    def deprecated_batch_change_inventory(body:)
      warn 'Endpoint deprecated_batch_change_inventory in InventoryApi is depr'\
           'ecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/batch-change'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Deprecated version of
    # [BatchRetrieveInventoryChanges]($e/Inventory/BatchRetrieveInventoryChanges
    # ) after the endpoint URL
    # is updated to conform to the standard convention.
    # @param [BatchRetrieveInventoryChangesRequest] body Required parameter: An
    # object containing the fields to POST for the request.  See the
    # corresponding object definition for field details.
    # @return [BatchRetrieveInventoryChangesResponse Hash] response from the API call
    def deprecated_batch_retrieve_inventory_changes(body:)
      warn 'Endpoint deprecated_batch_retrieve_inventory_changes in InventoryA'\
           'pi is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/batch-retrieve-changes'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Deprecated version of
    # [BatchRetrieveInventoryCounts]($e/Inventory/BatchRetrieveInventoryCounts)
    # after the endpoint URL
    # is updated to conform to the standard convention.
    # @param [BatchRetrieveInventoryCountsRequest] body Required parameter: An
    # object containing the fields to POST for the request.  See the
    # corresponding object definition for field details.
    # @return [BatchRetrieveInventoryCountsResponse Hash] response from the API call
    def deprecated_batch_retrieve_inventory_counts(body:)
      warn 'Endpoint deprecated_batch_retrieve_inventory_counts in InventoryAp'\
           'i is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/batch-retrieve-counts'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Applies adjustments and counts to the provided item quantities.
    # On success: returns the current calculated counts for all objects
    # referenced in the request.
    # On failure: returns a list of related errors.
    # @param [BatchChangeInventoryRequest] body Required parameter: An object
    # containing the fields to POST for the request.  See the corresponding
    # object definition for field details.
    # @return [BatchChangeInventoryResponse Hash] response from the API call
    def batch_change_inventory(body:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/changes/batch-create'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns historical physical counts and adjustments based on the
    # provided filter criteria.
    # Results are paginated and sorted in ascending order according their
    # `occurred_at` timestamp (oldest first).
    # BatchRetrieveInventoryChanges is a catch-all query endpoint for queries
    # that cannot be handled by other, simpler endpoints.
    # @param [BatchRetrieveInventoryChangesRequest] body Required parameter: An
    # object containing the fields to POST for the request.  See the
    # corresponding object definition for field details.
    # @return [BatchRetrieveInventoryChangesResponse Hash] response from the API call
    def batch_retrieve_inventory_changes(body:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/changes/batch-retrieve'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns current counts for the provided
    # [CatalogObject]($m/CatalogObject)s at the requested
    # [Location]($m/Location)s.
    # Results are paginated and sorted in descending order according to their
    # `calculated_at` timestamp (newest first).
    # When `updated_after` is specified, only counts that have changed since
    # that
    # time (based on the server timestamp for the most recent change) are
    # returned. This allows clients to perform a "sync" operation, for example
    # in response to receiving a Webhook notification.
    # @param [BatchRetrieveInventoryCountsRequest] body Required parameter: An
    # object containing the fields to POST for the request.  See the
    # corresponding object definition for field details.
    # @return [BatchRetrieveInventoryCountsResponse Hash] response from the API call
    def batch_retrieve_inventory_counts(body:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/counts/batch-retrieve'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Deprecated version of
    # [RetrieveInventoryPhysicalCount]($e/Inventory/RetrieveInventoryPhysicalCou
    # nt) after the endpoint URL
    # is updated to conform to the standard convention.
    # @param [String] physical_count_id Required parameter: ID of the
    # [InventoryPhysicalCount]($m/InventoryPhysicalCount) to retrieve.
    # @return [RetrieveInventoryPhysicalCountResponse Hash] response from the API call
    def deprecated_retrieve_inventory_physical_count(physical_count_id:)
      warn 'Endpoint deprecated_retrieve_inventory_physical_count in Inventory'\
           'Api is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/physical-count/{physical_count_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'physical_count_id' => { 'value' => physical_count_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns the [InventoryPhysicalCount]($m/InventoryPhysicalCount)
    # object with the provided `physical_count_id`.
    # @param [String] physical_count_id Required parameter: ID of the
    # [InventoryPhysicalCount]($m/InventoryPhysicalCount) to retrieve.
    # @return [RetrieveInventoryPhysicalCountResponse Hash] response from the API call
    def retrieve_inventory_physical_count(physical_count_id:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/physical-counts/{physical_count_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'physical_count_id' => { 'value' => physical_count_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns the [InventoryTransfer]($m/InventoryTransfer) object
    # with the provided `transfer_id`.
    # @param [String] transfer_id Required parameter: ID of the
    # [InventoryTransfer]($m/InventoryTransfer) to retrieve.
    # @return [RetrieveInventoryTransferResponse Hash] response from the API call
    def retrieve_inventory_transfer(transfer_id:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/transfers/{transfer_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'transfer_id' => { 'value' => transfer_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Retrieves the current calculated stock count for a given
    # [CatalogObject]($m/CatalogObject) at a given set of
    # [Location]($m/Location)s. Responses are paginated and unsorted.
    # For more sophisticated queries, use a batch endpoint.
    # @param [String] catalog_object_id Required parameter: ID of the
    # [CatalogObject]($m/CatalogObject) to retrieve.
    # @param [String] location_ids Optional parameter: The
    # [Location]($m/Location) IDs to look up as a comma-separated list. An empty
    # list queries all locations.
    # @param [String] cursor Optional parameter: A pagination cursor returned by
    # a previous call to this endpoint. Provide this to retrieve the next set of
    # results for the original query.  See the
    # [Pagination](https://developer.squareup.com/docs/working-with-apis/paginat
    # ion) guide for more information.
    # @return [RetrieveInventoryCountResponse Hash] response from the API call
    def retrieve_inventory_count(catalog_object_id:,
                                 location_ids: nil,
                                 cursor: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/{catalog_object_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'catalog_object_id' => { 'value' => catalog_object_id, 'encode' => true }
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'location_ids' => location_ids,
        'cursor' => cursor
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Returns a set of physical counts and inventory adjustments for the
    # provided [CatalogObject]($m/CatalogObject) at the requested
    # [Location]($m/Location)s.
    # You can achieve the same result by calling
    # [BatchRetrieveInventoryChanges]($e/Inventory/BatchRetrieveInventoryChanges
    # )
    # and having the `catalog_object_ids` list contain a single element of the
    # `CatalogObject` ID.
    # Results are paginated and sorted in descending order according to their
    # `occurred_at` timestamp (newest first).
    # There are no limits on how far back the caller can page. This endpoint can
    # be
    # used to display recent changes for a specific item. For more
    # sophisticated queries, use a batch endpoint.
    # @param [String] catalog_object_id Required parameter: ID of the
    # [CatalogObject]($m/CatalogObject) to retrieve.
    # @param [String] location_ids Optional parameter: The
    # [Location]($m/Location) IDs to look up as a comma-separated list. An empty
    # list queries all locations.
    # @param [String] cursor Optional parameter: A pagination cursor returned by
    # a previous call to this endpoint. Provide this to retrieve the next set of
    # results for the original query.  See the
    # [Pagination](https://developer.squareup.com/docs/working-with-apis/paginat
    # ion) guide for more information.
    # @return [RetrieveInventoryChangesResponse Hash] response from the API call
    def retrieve_inventory_changes(catalog_object_id:,
                                   location_ids: nil,
                                   cursor: nil)
      warn 'Endpoint retrieve_inventory_changes in InventoryApi is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/inventory/{catalog_object_id}/changes'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'catalog_object_id' => { 'value' => catalog_object_id, 'encode' => true }
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'location_ids' => location_ids,
        'cursor' => cursor
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end
  end
end
