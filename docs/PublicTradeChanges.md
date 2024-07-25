# PublicTradeChanges


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_class** | **str** |  | [optional] 
**emitted_at** | **datetime** |  | [optional] 
**trades** | [**List[PublicTrade]**](PublicTrade.md) |  | [optional] 

## Example

```python
from powerbot_client.models.public_trade_changes import PublicTradeChanges

# TODO update the JSON string below
json = "{}"
# create an instance of PublicTradeChanges from a JSON string
public_trade_changes_instance = PublicTradeChanges.from_json(json)
# print the JSON string representation of the object
print(PublicTradeChanges.to_json())

# convert the object into a dict
public_trade_changes_dict = public_trade_changes_instance.to_dict()
# create an instance of PublicTradeChanges from a dict
public_trade_changes_from_dict = PublicTradeChanges.from_dict(public_trade_changes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


