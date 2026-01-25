# ProviderList200ResponseAllInnerModelsValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**family** | Option<**String**> |  | [optional]
**release_date** | **String** |  | 
**attachment** | **bool** |  | 
**reasoning** | **bool** |  | 
**temperature** | **bool** |  | 
**tool_call** | **bool** |  | 
**interleaved** | Option<[**models::ProviderList200ResponseAllInnerModelsValueInterleaved**](ProviderList200ResponseAllInnerModelsValueInterleaved.md)> |  | [optional]
**cost** | Option<[**models::ProviderList200ResponseAllInnerModelsValueCost**](ProviderList200ResponseAllInnerModelsValueCost.md)> |  | [optional]
**limit** | [**models::ProviderList200ResponseAllInnerModelsValueLimit**](ProviderList200ResponseAllInnerModelsValueLimit.md) |  | 
**modalities** | Option<[**models::ProviderList200ResponseAllInnerModelsValueModalities**](ProviderList200ResponseAllInnerModelsValueModalities.md)> |  | [optional]
**experimental** | Option<**bool**> |  | [optional]
**status** | Option<**Status**> |  (enum: alpha, beta, deprecated) | [optional]
**options** | **std::collections::HashMap<String, serde_json::Value>** |  | 
**headers** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**provider** | Option<[**models::ProviderList200ResponseAllInnerModelsValueProvider**](ProviderList200ResponseAllInnerModelsValueProvider.md)> |  | [optional]
**variants** | Option<**std::collections::HashMap<String, std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


