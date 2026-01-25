# SessionPromptRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | Option<**String**> |  | [optional]
**model** | Option<[**models::SessionPromptRequestModel**](SessionPromptRequestModel.md)> |  | [optional]
**agent** | Option<**String**> |  | [optional]
**no_reply** | Option<**bool**> |  | [optional]
**tools** | Option<**std::collections::HashMap<String, bool>**> | @deprecated tools and permissions have been merged, you can set permissions on the session itself now | [optional]
**system** | Option<**String**> |  | [optional]
**variant** | Option<**String**> |  | [optional]
**parts** | [**Vec<models::SessionPromptRequestPartsInner>**](SessionPromptRequestPartsInner.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


