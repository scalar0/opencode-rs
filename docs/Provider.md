# Provider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**source** | **Source** |  (enum: env, config, custom, api) | 
**env** | **Vec<String>** |  | 
**key** | Option<**String**> |  | [optional]
**options** | **std::collections::HashMap<String, serde_json::Value>** |  | 
**models** | [**std::collections::HashMap<String, models::Model>**](Model.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


