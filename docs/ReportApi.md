# powerbot_client.ReportApi

All URIs are relative to *https://staging.powerbot-trading.com/playground/epex/v2/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_report_csv_for_period**](ReportApi.md#get_report_csv_for_period) | **GET** /report/{delivery_area}/csv | Create CSV trading report
[**get_report_for_period**](ReportApi.md#get_report_for_period) | **GET** /report/{delivery_area} | Create JSON trading report
[**get_schedule_xml**](ReportApi.md#get_schedule_xml) | **GET** /schedule/{delivery_area}/{delivery_day} | Create Schedule XML


# **get_report_csv_for_period**
> str get_report_csv_for_period(delivery_area, delivery_day_from, delivery_day_to, portfolio_id=portfolio_id, cl_ordr_id=cl_ordr_id, txt=txt, column_separator=column_separator, comma_separator=comma_separator, txt_matching_mode=txt_matching_mode)

Create CSV trading report

Creates a detailed trading report in CSV format for a delivery area and a given delivery period. However, as the CSV format is two-dimensional, this report delivers less data compared to the regular report method.  As the generation of the report requires a lot of calculations, please use wisely. The maximum period you can request is limited to 31 days. The request retrieves an array of portfolios and can thus deliver data for one or more portfolios at the same time. However, some data (e.g. positions) cannot be aggregated for portfolios and will thus not show up, if you request data from more than one portfolio. The report can use filters for clOrdrId and txt, which means that only trades for which the filter is valid are included in the report.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.text_matching_mode import TextMatchingMode
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.ReportApi(api_client)
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    delivery_day_from = '2013-10-20' # date | The day the report is for (example \"2018-10-23\")
    delivery_day_to = '2013-10-20' # date | The day the report is for (example \"2018-10-30\")
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    cl_ordr_id = 'cl_ordr_id_example' # str | Show only those trades related to orders with a specific 'client order id' (something like 'your reference' which you can submit) together with an order (optional)
    txt = 'txt_example' # str | Show only those trades related to orders with a specific 'custom text'. Similar to the clOrdrId, you can submit a string inside the 'txt' attribute of an order which helps you to identify trades originating from a specific order at a later point (optional)
    column_separator = ';' # str |  (optional) (default to ';')
    comma_separator = '.' # str |  (optional) (default to '.')
    txt_matching_mode = EXACT # TextMatchingMode |  (optional) (default to EXACT)

    try:
        # Create CSV trading report
        api_response = api_instance.get_report_csv_for_period(delivery_area, delivery_day_from, delivery_day_to, portfolio_id=portfolio_id, cl_ordr_id=cl_ordr_id, txt=txt, column_separator=column_separator, comma_separator=comma_separator, txt_matching_mode=txt_matching_mode)
        print("The response of ReportApi->get_report_csv_for_period:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportApi->get_report_csv_for_period: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The EIC of the delivery area | 
 **delivery_day_from** | **date**| The day the report is for (example \&quot;2018-10-23\&quot;) | 
 **delivery_day_to** | **date**| The day the report is for (example \&quot;2018-10-30\&quot;) | 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **cl_ordr_id** | **str**| Show only those trades related to orders with a specific &#39;client order id&#39; (something like &#39;your reference&#39; which you can submit) together with an order | [optional] 
 **txt** | **str**| Show only those trades related to orders with a specific &#39;custom text&#39;. Similar to the clOrdrId, you can submit a string inside the &#39;txt&#39; attribute of an order which helps you to identify trades originating from a specific order at a later point | [optional] 
 **column_separator** | **str**|  | [optional] [default to &#39;;&#39;]
 **comma_separator** | **str**|  | [optional] [default to &#39;.&#39;]
 **txt_matching_mode** | [**TextMatchingMode**](.md)|  | [optional] [default to EXACT]

### Return type

**str**

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success, returns the report in CSV format |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_report_for_period**
> Report get_report_for_period(delivery_area, delivery_day_from, delivery_day_to, portfolio_id=portfolio_id, delivery_day_from_starting_hour=delivery_day_from_starting_hour, delivery_day_to_ending_hour=delivery_day_to_ending_hour, cl_ordr_id=cl_ordr_id, txt=txt, with_trades=with_trades, txt_matching_mode=txt_matching_mode)

Create JSON trading report

Creates a detailed trading report for a delivery area and a given delivery period, which contains all relevant information.  As the generation of the report requires a lot of calculations, please use wisely. The time period you can request is limited to 48 hours at once going back a maximum of 31 days. The request retrieves an array of portfolios and can thus deliver data for one or more portfolios at the same time. However, some data (e.g. positions) cannot be aggregated for portfolios and will therefore not show up, if you request data from more than one portfolio. Optionally, the report can include the trades for the portfolio(s) that have a delivery period within the report period. In addition, the report can use filters for 'clOrdrId' and 'txt', which means that only trades for which the filter is valid are included in the report.

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.report import Report
from powerbot_client.models.text_matching_mode import TextMatchingMode
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.ReportApi(api_client)
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area
    delivery_day_from = '2013-10-20' # date | The day the report starts (example \"2018-10-23\")
    delivery_day_to = '2013-10-20' # date | The day the report ends (example \"2018-10-30\")
    portfolio_id = ['portfolio_id_example'] # List[str] |  (optional)
    delivery_day_from_starting_hour = 0 # int | The starting hour of the report (0 = midnight) (optional) (default to 0)
    delivery_day_to_ending_hour = 0 # int | The ending hour of the report (0 = midnight) (optional) (default to 0)
    cl_ordr_id = 'cl_ordr_id_example' # str | Use only trades in the calculation of the report, which are related to orders with a specific 'client order id' (something like 'your reference' which you can submit) together with an order (optional)
    txt = 'txt_example' # str | Use only trades in the calculation of the report, which are related to orders with a specific 'custom text'. Similar to the clOrdrId, you can submit a string inside the 'txt' attribute of an order which helps you to identify trades originating from a specific order at a later point (optional)
    with_trades = False # bool |  (optional) (default to False)
    txt_matching_mode = EXACT # TextMatchingMode |  (optional) (default to EXACT)

    try:
        # Create JSON trading report
        api_response = api_instance.get_report_for_period(delivery_area, delivery_day_from, delivery_day_to, portfolio_id=portfolio_id, delivery_day_from_starting_hour=delivery_day_from_starting_hour, delivery_day_to_ending_hour=delivery_day_to_ending_hour, cl_ordr_id=cl_ordr_id, txt=txt, with_trades=with_trades, txt_matching_mode=txt_matching_mode)
        print("The response of ReportApi->get_report_for_period:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportApi->get_report_for_period: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The EIC of the delivery area | 
 **delivery_day_from** | **date**| The day the report starts (example \&quot;2018-10-23\&quot;) | 
 **delivery_day_to** | **date**| The day the report ends (example \&quot;2018-10-30\&quot;) | 
 **portfolio_id** | [**List[str]**](str.md)|  | [optional] 
 **delivery_day_from_starting_hour** | **int**| The starting hour of the report (0 &#x3D; midnight) | [optional] [default to 0]
 **delivery_day_to_ending_hour** | **int**| The ending hour of the report (0 &#x3D; midnight) | [optional] [default to 0]
 **cl_ordr_id** | **str**| Use only trades in the calculation of the report, which are related to orders with a specific &#39;client order id&#39; (something like &#39;your reference&#39; which you can submit) together with an order | [optional] 
 **txt** | **str**| Use only trades in the calculation of the report, which are related to orders with a specific &#39;custom text&#39;. Similar to the clOrdrId, you can submit a string inside the &#39;txt&#39; attribute of an order which helps you to identify trades originating from a specific order at a later point | [optional] 
 **with_trades** | **bool**|  | [optional] [default to False]
 **txt_matching_mode** | [**TextMatchingMode**](.md)|  | [optional] [default to EXACT]

### Return type

[**Report**](Report.md)

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success, returns the report elements |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_schedule_xml**
> str get_schedule_xml(delivery_area, delivery_day, member_eic, exchange_eic, receiver_eic, process_type, sender_role, receiver_role, schedule_format=schedule_format)

Create Schedule XML

Create a delivery area internal schedule XML file for the nomination toward the TSO. Supported formats are ESS (v2.3) and CIM (v5.2), only including the schedule between the exchange member and the member. The revision will be increased with every request performed. You need to provide the EIC of the exchange member as well as the EIC of the exchange.  For a detailed documentation and example values for different countries, please refer to the [Knowledge Base](https://docs.powerbot-trading.com/docs/features/nomination-schedules/).

### Example

* Api Key Authentication (api_key_security):

```python
import powerbot_client
from powerbot_client.models.schedule_format import ScheduleFormat
from powerbot_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://staging.powerbot-trading.com/playground/epex/v2/api
# See configuration.py for a list of all supported configuration parameters.
configuration = powerbot_client.Configuration(
    host = "https://staging.powerbot-trading.com/playground/epex/v2/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_security
configuration.api_key['api_key_security'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_security'] = 'Bearer'

# Enter a context with an instance of the API client
with powerbot_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = powerbot_client.ReportApi(api_client)
    delivery_area = 'delivery_area_example' # str | The EIC of the delivery area.
    delivery_day = '2023-01-01' # date | The day the schedule is for.
    member_eic = '-------EIC------' # str | The EIC of the exchange member.
    exchange_eic = '20X-LU005-ECCINI' # str | The EIC of the exchange.
    receiver_eic = '14XAT-APCS-----Q' # str | Receiver EIC
    process_type = 'A01' # str | Process Type Code
    sender_role = 'A01' # str | Sender Role Code
    receiver_role = 'A01' # str | Receiver Role Code
    schedule_format = ESS_2_3 # ScheduleFormat |  (optional) (default to ESS_2_3)

    try:
        # Create Schedule XML
        api_response = api_instance.get_schedule_xml(delivery_area, delivery_day, member_eic, exchange_eic, receiver_eic, process_type, sender_role, receiver_role, schedule_format=schedule_format)
        print("The response of ReportApi->get_schedule_xml:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportApi->get_schedule_xml: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_area** | **str**| The EIC of the delivery area. | 
 **delivery_day** | **date**| The day the schedule is for. | 
 **member_eic** | **str**| The EIC of the exchange member. | 
 **exchange_eic** | **str**| The EIC of the exchange. | 
 **receiver_eic** | **str**| Receiver EIC | 
 **process_type** | **str**| Process Type Code | 
 **sender_role** | **str**| Sender Role Code | 
 **receiver_role** | **str**| Receiver Role Code | 
 **schedule_format** | [**ScheduleFormat**](.md)|  | [optional] [default to ESS_2_3]

### Return type

**str**

### Authorization

[api_key_security](../README.md#api_key_security)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success, returns the report in XML format |  -  |
**0** | Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

