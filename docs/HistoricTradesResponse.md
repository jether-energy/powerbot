# HistoricTradesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next_page_token** | **str** | Provide this value as the &#39;page_token&#39; parameter to retrieve the next page of results.  If this header is blank, there is no more data to retrieve. | [optional] 
**trades** | [**List[PublicTrade]**](PublicTrade.md) |  | [optional] 

## Example

```python
from powerbot_client.models.historic_trades_response import HistoricTradesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of HistoricTradesResponse from a JSON string
historic_trades_response_instance = HistoricTradesResponse.from_json(json)
# print the JSON string representation of the object
print(HistoricTradesResponse.to_json())

# convert the object into a dict
historic_trades_response_dict = historic_trades_response_instance.to_dict()
# create an instance of HistoricTradesResponse from a dict
historic_trades_response_from_dict = HistoricTradesResponse.from_dict(historic_trades_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


