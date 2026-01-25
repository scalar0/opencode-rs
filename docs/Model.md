# Model

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider_id** | **String** |  | 
**api** | [**models::ModelApi**](ModelApi.md) |  | 
**name** | **String** |  | 
**family** | Option<**String**> |  | [optional]
**capabilities** | [**models::ModelCapabilities**](ModelCapabilities.md) |  | 
**cost** | [**models::ModelCost**](ModelCost.md) |  | 
**limit** | [**models::ProviderList200ResponseAllInnerModelsValueLimit**](ProviderList200ResponseAllInnerModelsValueLimit.md) |  | 
**status** | **Status** |  (enum: alpha, beta, deprecated, active) | 
**options** | **std::collections::HashMap<String, serde_json::Value>** |  | 
**headers** | **std::collections::HashMap<String, String>** |  | 
**release_date** | **String** |  | 
**variants** | Option<**std::collections::HashMap<String, std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


