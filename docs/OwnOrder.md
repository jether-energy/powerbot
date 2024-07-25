# OwnOrder


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **str** | The unique ID of the order. **Note** if you modify an order, the ID can change! &#x60;parent_order_id&#x60; and &#x60;initial_order_id&#x60; can be used to trace ID changes. | [optional] 
**parent_order_id** | **str** | The ID of the previous version of the order before modification with priority change. | [optional] 
**initial_order_id** | **str** | The ID of the first version of the order. | [optional] 
**revision_no** | **int** | The revision number of the order. Will have to be provided in addition with the order_id when order is modified. | [optional] 
**api_timestamp** | **datetime** | the time (UTC) the last update of the order was received (by PowerBot). | [optional] 
**state** | [**OrderState**](OrderState.md) |  | 
**delivery_area** | **str** | Defines the delivery area of the order (EIC). | 
**last_change_timestamp** | **datetime** | the time the last change of the order was received (by the exchange). | [optional] 
**buy** | **bool** | Set to true if the order is a BUY order, false otherwise | [optional] 
**sell** | **bool** | set to true if the order is a SELL order, false otherwise | [optional] 
**side** | [**OrderSide**](OrderSide.md) |  | 
**contracts** | [**List[ContractReference]**](ContractReference.md) | DEPRECATED: an order can only be associated with one contract, please use the top-level fields | 
**contract_id** | **str** | the ID of the order&#39;s contract | [optional] 
**contract_name** | **str** | the name of the order&#39;s contract | [optional] 
**delivery_start** | **datetime** | the delivery start of the order&#39;s contract | [optional] 
**delivery_end** | **datetime** | the delivery end of the order&#39;s contract | [optional] 
**cl_ordr_id** | **str** | The client&#39;s order number (if set during the placement of the order) | [optional] 
**txt** | **str** | The client&#39;s custom text (if set during the placement of the order) | [optional] 
**portfolio_id** | **str** |  | [optional] 
**price** | **float** | The price of the order in the contract&#39;s currency based on exchange product specification (typically in \&quot;Currency per MWh\&quot;) | [optional] 
**quantity** | **float** | The quantity of the order (in the contract&#39;s quantity unit - usually MW) | [optional] 
**hidden_quantity** | **float** | Contains the hidden quantity of the iceberg order. The total executable quantity may be calculated by adding the hidden_quantity to the quantity. | [optional] 
**display_quantity** | **float** | Used to define display the quantity of an iceberg Order. | [optional] 
**peak_price_delta** | **float** | The peak price delta for iceberg orders. | [optional] 
**action** | [**OrderAction**](OrderAction.md) |  | 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**details** | **object** | DEPRECATED please do not use values in this field! Most details of the order in the style of the underlying backend system. | [optional] 
**user_code** | **str** | the exchange&#39;s user code | [optional] 
**pre_arranged** | **bool** |  | [optional] 
**pre_arranged_acct** | **str** |  | [optional] 
**error_message** | **str** |  | [optional] 
**location** | **str** | Location within the delivery area. | [optional] 
**valid_until** | **datetime** | The timestamp (UTC) until the order is valid. Only applicable for good for session orders. | [optional] 
**account_id** | **str** | The exchange account this order belongs to. | [optional] 

## Example

```python
from powerbot_client.models.own_order import OwnOrder

# TODO update the JSON string below
json = "{}"
# create an instance of OwnOrder from a JSON string
own_order_instance = OwnOrder.from_json(json)
# print the JSON string representation of the object
print(OwnOrder.to_json())

# convert the object into a dict
own_order_dict = own_order_instance.to_dict()
# create an instance of OwnOrder from a dict
own_order_from_dict = OwnOrder.from_dict(own_order_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


