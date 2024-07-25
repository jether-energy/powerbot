# NewApiKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | An identifier for the API key, i.e. \&quot;K1\&quot; | 
**description** | **str** |  | [optional] 
**type** | [**ApiKeyType**](ApiKeyType.md) |  | 
**tenant_id** | **str** |  | [optional] 
**portfolio_ids** | **List[str]** | The IDs of the portfolios the API key is allowed to access. This property is mutually exclusive with &#x60;inherit_tenant_portfolios&#x60;. | [optional] 
**inherit_tenant_portfolios** | **bool** | If true, all tenant portfolios will be accessible. This property is mutually exclusive with the &#x60;portfolio_ids&#x60; property. | [optional] [default to False]
**can_read** | **bool** | Set to true, if the API key should be able to read data from the exchange (orderbook, trades, etc.) | [optional] [default to True]
**can_trade** | **bool** | Set to true, if the API key should be able to trade. | [optional] [default to False]
**can_signal** | **bool** | Set to true, if the API key should be allowed to submit signals | [optional] [default to False]

## Example

```python
from powerbot_client.models.new_api_key import NewApiKey

# TODO update the JSON string below
json = "{}"
# create an instance of NewApiKey from a JSON string
new_api_key_instance = NewApiKey.from_json(json)
# print the JSON string representation of the object
print(NewApiKey.to_json())

# convert the object into a dict
new_api_key_dict = new_api_key_instance.to_dict()
# create an instance of NewApiKey from a dict
new_api_key_from_dict = NewApiKey.from_dict(new_api_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


