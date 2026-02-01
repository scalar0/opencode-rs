# McpAddRequestConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**r#type** | **TypeEnum** | Type of MCP server connection (enum: local, remote) | 
**command** | **Vec<String>** | Command and arguments to run the MCP server | 
**environment** | Option<**std::collections::HashMap<String, String>**> | Environment variables to set when running the MCP server | [optional]
**enabled** | Option<**bool**> | Enable or disable the MCP server on startup | [optional]
**timeout** | Option<**i32**> | Timeout in ms for MCP server requests. Defaults to 5000 (5 seconds) if not specified. | [optional]
**url** | **String** | URL of the remote MCP server | 
**headers** | Option<**std::collections::HashMap<String, String>**> | Headers to send with the request | [optional]
**oauth** | Option<[**models::McpRemoteConfigOauth**](McpRemoteConfigOauth.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


