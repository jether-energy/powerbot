# AuctionCredentials

The login credentials for an exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username of the exchange account. | 
**password** | **str** | The password of the exchange account. | 
**certificate_bundle** | **bytearray** | Base64 encoded client certificate bundle, only pkcs#12 bundles are supported. | [optional] 
**certificate_password** | **str** | Password for the client certificate bundle. | [optional] 

## Example

```python
from powerbot_client.models.auction_credentials import AuctionCredentials

# TODO update the JSON string below
json = "{}"
# create an instance of AuctionCredentials from a JSON string
auction_credentials_instance = AuctionCredentials.from_json(json)
# print the JSON string representation of the object
print(AuctionCredentials.to_json())

# convert the object into a dict
auction_credentials_dict = auction_credentials_instance.to_dict()
# create an instance of AuctionCredentials from a dict
auction_credentials_from_dict = AuctionCredentials.from_dict(auction_credentials_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


