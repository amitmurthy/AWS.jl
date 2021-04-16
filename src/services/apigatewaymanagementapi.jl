# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: apigatewaymanagementapi
using AWS.Compat
using AWS.UUIDs

"""
    delete_connection(connection_id)
    delete_connection(connection_id, params::Dict{String,<:Any})

Delete the connection with the provided id.

# Arguments
- `connection_id`:

"""
delete_connection(connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)"; aws_config=aws_config)
delete_connection(connectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("DELETE", "/@connections/$(connectionId)", params; aws_config=aws_config)

"""
    get_connection(connection_id)
    get_connection(connection_id, params::Dict{String,<:Any})

Get information about the connection with the provided id.

# Arguments
- `connection_id`:

"""
get_connection(connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)"; aws_config=aws_config)
get_connection(connectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("GET", "/@connections/$(connectionId)", params; aws_config=aws_config)

"""
    post_to_connection(data, connection_id)
    post_to_connection(data, connection_id, params::Dict{String,<:Any})

Sends the provided data to the specified connection.

# Arguments
- `data`: The data to be sent to the client specified by its connection id.
- `connection_id`: The identifier of the connection that a specific client is using.

"""
post_to_connection(Data, connectionId; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}("Data"=>Data); aws_config=aws_config)
post_to_connection(Data, connectionId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = apigatewaymanagementapi("POST", "/@connections/$(connectionId)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Data"=>Data), params)); aws_config=aws_config)
