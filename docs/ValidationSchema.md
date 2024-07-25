# ValidationSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**ValidationSchemaType**](ValidationSchemaType.md) |  | 
**name** | **str** | The name of the schema. | 
**version** | **str** | The version of the related algorithm that uses this schema. | 
**description** | **str** | A description text detailing information regarding the schema. | [optional] 
**parameters** | **object** | The contents of the schema | 

## Example

```python
from powerbot_client.models.validation_schema import ValidationSchema

# TODO update the JSON string below
json = "{}"
# create an instance of ValidationSchema from a JSON string
validation_schema_instance = ValidationSchema.from_json(json)
# print the JSON string representation of the object
print(ValidationSchema.to_json())

# convert the object into a dict
validation_schema_dict = validation_schema_instance.to_dict()
# create an instance of ValidationSchema from a dict
validation_schema_from_dict = ValidationSchema.from_dict(validation_schema_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


