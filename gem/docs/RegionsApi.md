# LinodeOpenapiClient::RegionsApi

All URIs are relative to *https://api.linode.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_region**](RegionsApi.md#get_region) | **GET** /{apiVersion}/regions/{regionId} | Get a region |
| [**get_region_availability**](RegionsApi.md#get_region_availability) | **GET** /{apiVersion}/regions/{regionId}/availability | Get a region&#39;s availability |
| [**get_regions**](RegionsApi.md#get_regions) | **GET** /{apiVersion}/regions | List regions |
| [**get_regions_availability**](RegionsApi.md#get_regions_availability) | **GET** /{apiVersion}/regions/availability | List regions&#39; availability |


## get_region

> <GetRegion200Response> get_region(api_version, region_id)

Get a region

Returns a single Region.   <<LB>>  ---   - __CLI__.      ```     linode-cli regions view us-east     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::RegionsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | ID of the Region to look up.

begin
  # Get a region
  result = api_instance.get_region(api_version, region_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_region: #{e}"
end
```

#### Using the get_region_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRegion200Response>, Integer, Hash)> get_region_with_http_info(api_version, region_id)

```ruby
begin
  # Get a region
  data, status_code, headers = api_instance.get_region_with_http_info(api_version, region_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRegion200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_region_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | ID of the Region to look up. |  |

### Return type

[**GetRegion200Response**](GetRegion200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_region_availability

> <Array<GetRegionAvailability200ResponseInner>> get_region_availability(api_version, region_id)

Get a region's availability

Returns availability data for a single Region.   <<LB>>  ---   - __CLI__.      ```     linode-cli regions view-avail us-east     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::RegionsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.
region_id = 'region_id_example' # String | ID of the Region to look up.

begin
  # Get a region's availability
  result = api_instance.get_region_availability(api_version, region_id)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_region_availability: #{e}"
end
```

#### Using the get_region_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetRegionAvailability200ResponseInner>>, Integer, Hash)> get_region_availability_with_http_info(api_version, region_id)

```ruby
begin
  # Get a region's availability
  data, status_code, headers = api_instance.get_region_availability_with_http_info(api_version, region_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetRegionAvailability200ResponseInner>>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_region_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |
| **region_id** | **String** | ID of the Region to look up. |  |

### Return type

[**Array&lt;GetRegionAvailability200ResponseInner&gt;**](GetRegionAvailability200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_regions

> <GetRegions200Response> get_regions(api_version)

List regions

Lists the Regions available for Linode services. Not all services are guaranteed to be available in all Regions.   <<LB>>  ---   - __CLI__.      ```     linode-cli regions list     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::RegionsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List regions
  result = api_instance.get_regions(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_regions: #{e}"
end
```

#### Using the get_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRegions200Response>, Integer, Hash)> get_regions_with_http_info(api_version)

```ruby
begin
  # List regions
  data, status_code, headers = api_instance.get_regions_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRegions200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_regions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetRegions200Response**](GetRegions200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_regions_availability

> <GetRegionsAvailability200Response> get_regions_availability(api_version)

List regions' availability

Returns availability data for all Regions.  Currently, this operation returns availability of select premium and GPU plans for select regions.   <<LB>>  ---   - __CLI__.      ```     linode-cli regions list-avail     ```      [Learn more...](https://www.linode.com/docs/products/tools/cli/get-started/)

### Examples

```ruby
require 'time'
require 'linode_openapi_client'

api_instance = LinodeOpenapiClient::RegionsApi.new
api_version = 'v4' # String | __Enum__ Call either the `v4` URL, or `v4beta` for operations still in Beta.

begin
  # List regions' availability
  result = api_instance.get_regions_availability(api_version)
  p result
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_regions_availability: #{e}"
end
```

#### Using the get_regions_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRegionsAvailability200Response>, Integer, Hash)> get_regions_availability_with_http_info(api_version)

```ruby
begin
  # List regions' availability
  data, status_code, headers = api_instance.get_regions_availability_with_http_info(api_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRegionsAvailability200Response>
rescue LinodeOpenapiClient::ApiError => e
  puts "Error when calling RegionsApi->get_regions_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **String** | __Enum__ Call either the &#x60;v4&#x60; URL, or &#x60;v4beta&#x60; for operations still in Beta. | [default to &#39;v4&#39;] |

### Return type

[**GetRegionsAvailability200Response**](GetRegionsAvailability200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

