# Credentials


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username provided by the exchange | [optional] 
**password** | **str** | The exchange password. For Nordpool, this refers to the password from the exchange and not the secret. | [optional] 
**mfa_secret** | **str** | Multi factor authentication secret. This is only required if MFA is activated.  **Note**: At this moment only M7 (HUPX, SouthPool, TGE, EPEX, SEMO, OPCOM) supports MFA. | [optional] 

## Example

```python
from powerbot_client.models.credentials import Credentials

# TODO update the JSON string below
json = "{}"
# create an instance of Credentials from a JSON string
credentials_instance = Credentials.from_json(json)
# print the JSON string representation of the object
print(Credentials.to_json())

# convert the object into a dict
credentials_dict = credentials_instance.to_dict()
# create an instance of Credentials from a dict
credentials_from_dict = Credentials.from_dict(credentials_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


