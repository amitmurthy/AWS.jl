# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: apigatewaymanagementapi

"""
    DeleteConnection()

Delete the connection with the provided id.

Required Parameters
connectionId => 

"""
DeleteConnection(connectionId) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)")
DeleteConnection(connectionId, args::AbstractDict{String, <: Any}) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)", args)
DeleteConnection(a...; b...) = DeleteConnection(a..., b)

"""
    GetConnection()

Get information about the connection with the provided id.

Required Parameters
connectionId => 

"""
GetConnection(connectionId) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)")
GetConnection(connectionId, args::AbstractDict{String, <: Any}) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)", args)
GetConnection(a...; b...) = GetConnection(a..., b)

"""
    PostToConnection()

Sends the provided data to the specified connection.

Required Parameters
Data => The data to be sent to the client specified by its connection id.
connectionId => The identifier of the connection that a specific client is using.

"""
PostToConnection(Data, connectionId) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}("Data"=>Data))
PostToConnection(Data, connectionId, args::AbstractDict{String, <: Any}) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}("Data"=>Data, args...))
PostToConnection(a...; b...) = PostToConnection(a..., b)
