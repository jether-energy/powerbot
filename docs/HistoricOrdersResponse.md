# HistoricOrdersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_page_token** | **str** | Provide this value as the &#39;page_token&#39; parameter to retrieve the next page of results.  If this header is blank, there is no more data to retrieve. | [optional] 
**contract_id** | **str** |  | 
**delivery_area** | **str** |  | 
**revisions** | [**List[OrderBookRevision]**](OrderBookRevision.md) |  | 

## Example

```python
from powerbot_client.models.historic_orders_response import HistoricOrdersResponse

# TODO update the JSON string below
json = "{}"
# create an instance of HistoricOrdersResponse from a JSON string
historic_orders_response_instance = HistoricOrdersResponse.from_json(json)
# print the JSON string representation of the object
print(HistoricOrdersResponse.to_json())

# convert the object into a dict
historic_orders_response_dict = historic_orders_response_instance.to_dict()
# create an instance of HistoricOrdersResponse from a dict
historic_orders_response_from_dict = HistoricOrdersResponse.from_dict(historic_orders_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


