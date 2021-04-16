# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: pinpoint_sms_voice
using AWS.Compat
using AWS.UUIDs

"""
    create_configuration_set()
    create_configuration_set(params::Dict{String,<:Any})

Create a new configuration set. After you create the configuration set, you can add one or
more event destinations to it.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ConfigurationSetName"`: The name that you want to give the configuration set.
"""
create_configuration_set(; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets"; aws_config=aws_config)
create_configuration_set(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets", params; aws_config=aws_config)

"""
    create_configuration_set_event_destination(configuration_set_name)
    create_configuration_set_event_destination(configuration_set_name, params::Dict{String,<:Any})

Create a new event destination in a configuration set.

# Arguments
- `configuration_set_name`: ConfigurationSetName

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EventDestination"`:
- `"EventDestinationName"`: A name that identifies the event destination.
"""
create_configuration_set_event_destination(ConfigurationSetName; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations"; aws_config=aws_config)
create_configuration_set_event_destination(ConfigurationSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations", params; aws_config=aws_config)

"""
    delete_configuration_set(configuration_set_name)
    delete_configuration_set(configuration_set_name, params::Dict{String,<:Any})

Deletes an existing configuration set.

# Arguments
- `configuration_set_name`: ConfigurationSetName

"""
delete_configuration_set(ConfigurationSetName; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)"; aws_config=aws_config)
delete_configuration_set(ConfigurationSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)", params; aws_config=aws_config)

"""
    delete_configuration_set_event_destination(configuration_set_name, event_destination_name)
    delete_configuration_set_event_destination(configuration_set_name, event_destination_name, params::Dict{String,<:Any})

Deletes an event destination in a configuration set.

# Arguments
- `configuration_set_name`: ConfigurationSetName
- `event_destination_name`: EventDestinationName

"""
delete_configuration_set_event_destination(ConfigurationSetName, EventDestinationName; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations/$(EventDestinationName)"; aws_config=aws_config)
delete_configuration_set_event_destination(ConfigurationSetName, EventDestinationName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("DELETE", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations/$(EventDestinationName)", params; aws_config=aws_config)

"""
    get_configuration_set_event_destinations(configuration_set_name)
    get_configuration_set_event_destinations(configuration_set_name, params::Dict{String,<:Any})

Obtain information about an event destination, including the types of events it reports,
the Amazon Resource Name (ARN) of the destination, and the name of the event destination.

# Arguments
- `configuration_set_name`: ConfigurationSetName

"""
get_configuration_set_event_destinations(ConfigurationSetName; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations"; aws_config=aws_config)
get_configuration_set_event_destinations(ConfigurationSetName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations", params; aws_config=aws_config)

"""
    list_configuration_sets()
    list_configuration_sets(params::Dict{String,<:Any})

List all of the configuration sets associated with your Amazon Pinpoint account in the
current region.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"NextToken"`: A token returned from a previous call to the API that indicates the
  position in the list of results.
- `"PageSize"`: Used to specify the number of items that should be returned in the response.
"""
list_configuration_sets(; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets"; aws_config=aws_config)
list_configuration_sets(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("GET", "/v1/sms-voice/configuration-sets", params; aws_config=aws_config)

"""
    send_voice_message()
    send_voice_message(params::Dict{String,<:Any})

Create a new voice message and send it to a recipient's phone number.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CallerId"`: The phone number that appears on recipients' devices when they receive the
  message.
- `"ConfigurationSetName"`: The name of the configuration set that you want to use to send
  the message.
- `"Content"`:
- `"DestinationPhoneNumber"`: The phone number that you want to send the voice message to.
- `"OriginationPhoneNumber"`: The phone number that Amazon Pinpoint should use to send the
  voice message. This isn't necessarily the phone number that appears on recipients' devices
  when they receive the message, because you can specify a CallerId parameter in the request.
"""
send_voice_message(; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message"; aws_config=aws_config)
send_voice_message(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("POST", "/v1/sms-voice/voice/message", params; aws_config=aws_config)

"""
    update_configuration_set_event_destination(configuration_set_name, event_destination_name)
    update_configuration_set_event_destination(configuration_set_name, event_destination_name, params::Dict{String,<:Any})

Update an event destination in a configuration set. An event destination is a location that
you publish information about your voice calls to. For example, you can log an event to an
Amazon CloudWatch destination when a call fails.

# Arguments
- `configuration_set_name`: ConfigurationSetName
- `event_destination_name`: EventDestinationName

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"EventDestination"`:
"""
update_configuration_set_event_destination(ConfigurationSetName, EventDestinationName; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("PUT", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations/$(EventDestinationName)"; aws_config=aws_config)
update_configuration_set_event_destination(ConfigurationSetName, EventDestinationName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pinpoint_sms_voice("PUT", "/v1/sms-voice/configuration-sets/$(ConfigurationSetName)/event-destinations/$(EventDestinationName)", params; aws_config=aws_config)
