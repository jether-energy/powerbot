# PublicTrade


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trade_id** | **str** |  | [optional] 
**buy_delivery_area** | **str** |  | [optional] 
**sell_delivery_area** | **str** |  | [optional] 
**api_timestamp** | **datetime** | The timestamp (UTC) of the information being received from the exchange | [optional] 
**exec_time** | **datetime** | The timestamp (UTC) when the public trade was executed | [optional] 
**contract_id** | **str** | The id of the contract on which the public trade was executed | [optional] 
**price** | **float** | The price (usually in EUR, but depends on the contract) of the public trade | [optional] 
**quantity** | **float** | The quantity (usually in MW, but depends on the contract) of the public trade | [optional] 
**self_trade** | **bool** |  | [optional] 
**active** | **bool** |  | [optional] 
**state** | **str** |  | [optional] 

## Example

```python
from powerbot_client.models.public_trade import PublicTrade

# TODO update the JSON string below
json = "{}"
# create an instance of PublicTrade from a JSON string
public_trade_instance = PublicTrade.from_json(json)
# print the JSON string representation of the object
print(PublicTrade.to_json())

# convert the object into a dict
public_trade_dict = public_trade_instance.to_dict()
# create an instance of PublicTrade from a dict
public_trade_from_dict = PublicTrade.from_dict(public_trade_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


