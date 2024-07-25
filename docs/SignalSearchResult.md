# SignalSearchResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**signals** | [**List[SignalSearchItem]**](SignalSearchItem.md) | The object containing the found trading signals by &#39;findTradingSignals&#39;. These trading signals are grouped by source, delivery area, portfolio ID and delivery period. | [optional] 

## Example

```python
from powerbot_client.models.signal_search_result import SignalSearchResult

# TODO update the JSON string below
json = "{}"
# create an instance of SignalSearchResult from a JSON string
signal_search_result_instance = SignalSearchResult.from_json(json)
# print the JSON string representation of the object
print(SignalSearchResult.to_json())

# convert the object into a dict
signal_search_result_dict = signal_search_result_instance.to_dict()
# create an instance of SignalSearchResult from a dict
signal_search_result_from_dict = SignalSearchResult.from_dict(signal_search_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


