# ProviderConfigModelsValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**String**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**family** | Option<**String**> |  | [optional]
**release_date** | Option<**String**> |  | [optional]
**attachment** | Option<**bool**> |  | [optional]
**reasoning** | Option<**bool**> |  | [optional]
**temperature** | Option<**bool**> |  | [optional]
**tool_call** | Option<**bool**> |  | [optional]
**interleaved** | Option<[**models::ProviderConfigModelsValueInterleaved**](ProviderConfigModelsValueInterleaved.md)> |  | [optional]
**cost** | Option<[**models::ProviderList200ResponseAllInnerModelsValueCost**](ProviderList200ResponseAllInnerModelsValueCost.md)> |  | [optional]
**limit** | Option<[**models::ProviderList200ResponseAllInnerModelsValueLimit**](ProviderList200ResponseAllInnerModelsValueLimit.md)> |  | [optional]
**modalities** | Option<[**models::ProviderList200ResponseAllInnerModelsValueModalities**](ProviderList200ResponseAllInnerModelsValueModalities.md)> |  | [optional]
**experimental** | Option<**bool**> |  | [optional]
**status** | Option<**Status**> |  (enum: alpha, beta, deprecated) | [optional]
**options** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**headers** | Option<**std::collections::HashMap<String, String>**> |  | [optional]
**provider** | Option<[**models::ProviderList200ResponseAllInnerModelsValueProvider**](ProviderList200ResponseAllInnerModelsValueProvider.md)> |  | [optional]
**variants** | Option<[**std::collections::HashMap<String, models::ProviderConfigModelsValueVariantsValue>**](ProviderConfigModelsValueVariantsValue.md)> | Variant-specific configuration | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


