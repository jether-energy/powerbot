# OrderBookRevision

This object represent one revision of the order book. It only includes changes, so orders will only show up when they are modified (created, updated or deleted).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**time** | **datetime** | The time of the last order update that is included in this revision | 
**revision_number** | **int** | The revision number of this revision. Note that this can reset to zero so don&#39;t rely on it increasing monotonically. Use the &#x60;time&#x60; field instead and only fall back to &#x60;revision_number&#x60; if two revisions have the same time. | [optional] 
**buy_orders** | [**List[PublicOrderRevision]**](PublicOrderRevision.md) | Changes to buy orders in this order book revision | 
**sell_orders** | [**List[PublicOrderRevision]**](PublicOrderRevision.md) | Changes to sell orders in this order book revision | 

## Example

```python
from powerbot_client.models.order_book_revision import OrderBookRevision

# TODO update the JSON string below
json = "{}"
# create an instance of OrderBookRevision from a JSON string
order_book_revision_instance = OrderBookRevision.from_json(json)
# print the JSON string representation of the object
print(OrderBookRevision.to_json())

# convert the object into a dict
order_book_revision_dict = order_book_revision_instance.to_dict()
# create an instance of OrderBookRevision from a dict
order_book_revision_from_dict = OrderBookRevision.from_dict(order_book_revision_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


