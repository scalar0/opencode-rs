# McpRemoteConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | **TypeEnum** | Type of MCP server connection (enum: remote) | 
**url** | **String** | URL of the remote MCP server | 
**enabled** | Option<**bool**> | Enable or disable the MCP server on startup | [optional]
**headers** | Option<**std::collections::HashMap<String, String>**> | Headers to send with the request | [optional]
**oauth** | Option<[**models::McpRemoteConfigOauth**](McpRemoteConfigOauth.md)> |  | [optional]
**timeout** | Option<**i32**> | Timeout in ms for MCP server requests. Defaults to 5000 (5 seconds) if not specified. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


