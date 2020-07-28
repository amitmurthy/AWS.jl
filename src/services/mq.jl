# This file is auto-generated by AWSMetadata.jl
include("../AWSServices.jl")
using Compat
using .AWSServices: mq

"""
    CreateBroker()

Creates a broker. Note: This API is asynchronous.

Optional Parameters
autoMinorVersionUpgrade => Required. Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
brokerName => Required. The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
configuration => A list of information about the configuration.
creatorRequestId => The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.
deploymentMode => Required. The deployment mode of the broker.
encryptionOptions => Encryption options for the broker.
engineType => Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
engineVersion => Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
hostInstanceType => Required. The broker's instance type.
logs => Enables Amazon CloudWatch logging for brokers.
maintenanceWindowStartTime => The parameters that determine the WeeklyStartTime.
publiclyAccessible => Required. Enables connections from applications outside of the VPC that hosts the broker's subnets.
securityGroups => The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
storageType => The broker's storage type.
subnetIds => The list of groups (2 maximum) that define which subnets and IP ranges the broker can use from different Availability Zones. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ deployment requires two subnets.
tags => Create tags when creating the broker.
users => Required. The list of ActiveMQ users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
"""
CreateBroker() = mq("POST", "/v1/brokers")
CreateBroker(args::AbstractDict{String, Any}) = mq("POST", "/v1/brokers", args)
CreateBroker(a...; b...) = CreateBroker(a..., b)

"""
    CreateConfiguration()

Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).

Optional Parameters
engineType => Required. The type of broker engine. Note: Currently, Amazon MQ supports only ACTIVEMQ.
engineVersion => Required. The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
name => Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
tags => Create tags when creating the configuration.
"""
CreateConfiguration() = mq("POST", "/v1/configurations")
CreateConfiguration(args::AbstractDict{String, Any}) = mq("POST", "/v1/configurations", args)
CreateConfiguration(a...; b...) = CreateConfiguration(a..., b)

"""
    CreateTags()

Add a tag to a resource.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) of the resource tag.

Optional Parameters
tags => The key-value pair for the resource tag.
"""
CreateTags(resource_arn) = mq("POST", "/v1/tags/$(resource-arn)")
CreateTags(resource_arn, args::AbstractDict{String, <: Any}) = mq("POST", "/v1/tags/$(resource-arn)", args)
CreateTags(a...; b...) = CreateTags(a..., b)

"""
    CreateUser()

Creates an ActiveMQ user.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.
username => The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.

Optional Parameters
consoleAccess => Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
groups => The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
password => Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
"""
CreateUser(broker_id, username) = mq("POST", "/v1/brokers/$(broker-id)/users/$(username)")
CreateUser(broker_id, username, args::AbstractDict{String, <: Any}) = mq("POST", "/v1/brokers/$(broker-id)/users/$(username)", args)
CreateUser(a...; b...) = CreateUser(a..., b)

"""
    DeleteBroker()

Deletes a broker. Note: This API is asynchronous.

Required Parameters
broker-id => The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.

"""
DeleteBroker(broker_id) = mq("DELETE", "/v1/brokers/$(broker-id)")
DeleteBroker(broker_id, args::AbstractDict{String, <: Any}) = mq("DELETE", "/v1/brokers/$(broker-id)", args)
DeleteBroker(a...; b...) = DeleteBroker(a..., b)

"""
    DeleteTags()

Removes a tag from a resource.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) of the resource tag.
tagKeys => An array of tag keys to delete

"""
DeleteTags(resource_arn, tagKeys) = mq("DELETE", "/v1/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys))
DeleteTags(resource_arn, tagKeys, args::AbstractDict{String, <: Any}) = mq("DELETE", "/v1/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys, args...))
DeleteTags(a...; b...) = DeleteTags(a..., b)

"""
    DeleteUser()

Deletes an ActiveMQ user.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.
username => The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.

"""
DeleteUser(broker_id, username) = mq("DELETE", "/v1/brokers/$(broker-id)/users/$(username)")
DeleteUser(broker_id, username, args::AbstractDict{String, <: Any}) = mq("DELETE", "/v1/brokers/$(broker-id)/users/$(username)", args)
DeleteUser(a...; b...) = DeleteUser(a..., b)

"""
    DescribeBroker()

Returns information about the specified broker.

Required Parameters
broker-id => The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.

"""
DescribeBroker(broker_id) = mq("GET", "/v1/brokers/$(broker-id)")
DescribeBroker(broker_id, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/brokers/$(broker-id)", args)
DescribeBroker(a...; b...) = DescribeBroker(a..., b)

"""
    DescribeBrokerEngineTypes()

Describe available engine types and versions.

Optional Parameters
engineType => Filter response by engine type.
maxResults => The maximum number of engine types that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
"""
DescribeBrokerEngineTypes() = mq("GET", "/v1/broker-engine-types")
DescribeBrokerEngineTypes(args::AbstractDict{String, Any}) = mq("GET", "/v1/broker-engine-types", args)
DescribeBrokerEngineTypes(a...; b...) = DescribeBrokerEngineTypes(a..., b)

"""
    DescribeBrokerInstanceOptions()

Describe available broker instance options.

Optional Parameters
engineType => Filter response by engine type.
hostInstanceType => Filter response by host instance type.
maxResults => The maximum number of instance options that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
storageType => Filter response by storage type.
"""
DescribeBrokerInstanceOptions() = mq("GET", "/v1/broker-instance-options")
DescribeBrokerInstanceOptions(args::AbstractDict{String, Any}) = mq("GET", "/v1/broker-instance-options", args)
DescribeBrokerInstanceOptions(a...; b...) = DescribeBrokerInstanceOptions(a..., b)

"""
    DescribeConfiguration()

Returns information about the specified configuration.

Required Parameters
configuration-id => The unique ID that Amazon MQ generates for the configuration.

"""
DescribeConfiguration(configuration_id) = mq("GET", "/v1/configurations/$(configuration-id)")
DescribeConfiguration(configuration_id, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/configurations/$(configuration-id)", args)
DescribeConfiguration(a...; b...) = DescribeConfiguration(a..., b)

"""
    DescribeConfigurationRevision()

Returns the specified configuration revision for the specified configuration.

Required Parameters
configuration-id => The unique ID that Amazon MQ generates for the configuration.
configuration-revision => The revision of the configuration.

"""
DescribeConfigurationRevision(configuration_id, configuration_revision) = mq("GET", "/v1/configurations/$(configuration-id)/revisions/$(configuration-revision)")
DescribeConfigurationRevision(configuration_id, configuration_revision, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/configurations/$(configuration-id)/revisions/$(configuration-revision)", args)
DescribeConfigurationRevision(a...; b...) = DescribeConfigurationRevision(a..., b)

"""
    DescribeUser()

Returns information about an ActiveMQ user.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.
username => The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.

"""
DescribeUser(broker_id, username) = mq("GET", "/v1/brokers/$(broker-id)/users/$(username)")
DescribeUser(broker_id, username, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/brokers/$(broker-id)/users/$(username)", args)
DescribeUser(a...; b...) = DescribeUser(a..., b)

"""
    ListBrokers()

Returns a list of all brokers.

Optional Parameters
maxResults => The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
"""
ListBrokers() = mq("GET", "/v1/brokers")
ListBrokers(args::AbstractDict{String, Any}) = mq("GET", "/v1/brokers", args)
ListBrokers(a...; b...) = ListBrokers(a..., b)

"""
    ListConfigurationRevisions()

Returns a list of all revisions for the specified configuration.

Required Parameters
configuration-id => The unique ID that Amazon MQ generates for the configuration.

Optional Parameters
maxResults => The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
"""
ListConfigurationRevisions(configuration_id) = mq("GET", "/v1/configurations/$(configuration-id)/revisions")
ListConfigurationRevisions(configuration_id, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/configurations/$(configuration-id)/revisions", args)
ListConfigurationRevisions(a...; b...) = ListConfigurationRevisions(a..., b)

"""
    ListConfigurations()

Returns a list of all configurations.

Optional Parameters
maxResults => The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
"""
ListConfigurations() = mq("GET", "/v1/configurations")
ListConfigurations(args::AbstractDict{String, Any}) = mq("GET", "/v1/configurations", args)
ListConfigurations(a...; b...) = ListConfigurations(a..., b)

"""
    ListTags()

Lists tags for a resource.

Required Parameters
resource-arn => The Amazon Resource Name (ARN) of the resource tag.

"""
ListTags(resource_arn) = mq("GET", "/v1/tags/$(resource-arn)")
ListTags(resource_arn, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/tags/$(resource-arn)", args)
ListTags(a...; b...) = ListTags(a..., b)

"""
    ListUsers()

Returns a list of all ActiveMQ users.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.

Optional Parameters
maxResults => The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
nextToken => The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
"""
ListUsers(broker_id) = mq("GET", "/v1/brokers/$(broker-id)/users")
ListUsers(broker_id, args::AbstractDict{String, <: Any}) = mq("GET", "/v1/brokers/$(broker-id)/users", args)
ListUsers(a...; b...) = ListUsers(a..., b)

"""
    RebootBroker()

Reboots a broker. Note: This API is asynchronous.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.

"""
RebootBroker(broker_id) = mq("POST", "/v1/brokers/$(broker-id)/reboot")
RebootBroker(broker_id, args::AbstractDict{String, <: Any}) = mq("POST", "/v1/brokers/$(broker-id)/reboot", args)
RebootBroker(a...; b...) = RebootBroker(a..., b)

"""
    UpdateBroker()

Adds a pending configuration change to a broker.

Required Parameters
broker-id => The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.

Optional Parameters
autoMinorVersionUpgrade => Enables automatic upgrades to new minor versions for brokers, as Apache releases the versions. The automatic upgrades occur during the maintenance window of the broker or after a manual broker reboot.
configuration => A list of information about the configuration.
engineVersion => The version of the broker engine. For a list of supported engine versions, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html
hostInstanceType => The host instance type of the broker to upgrade to. For a list of supported instance types, see https://docs.aws.amazon.com/amazon-mq/latest/developer-guide//broker.html#broker-instance-types
logs => Enables Amazon CloudWatch logging for brokers.
securityGroups => The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.
"""
UpdateBroker(broker_id) = mq("PUT", "/v1/brokers/$(broker-id)")
UpdateBroker(broker_id, args::AbstractDict{String, <: Any}) = mq("PUT", "/v1/brokers/$(broker-id)", args)
UpdateBroker(a...; b...) = UpdateBroker(a..., b)

"""
    UpdateConfiguration()

Updates the specified configuration.

Required Parameters
configuration-id => The unique ID that Amazon MQ generates for the configuration.

Optional Parameters
data => Required. The base64-encoded XML configuration.
description => The description of the configuration.
"""
UpdateConfiguration(configuration_id) = mq("PUT", "/v1/configurations/$(configuration-id)")
UpdateConfiguration(configuration_id, args::AbstractDict{String, <: Any}) = mq("PUT", "/v1/configurations/$(configuration-id)", args)
UpdateConfiguration(a...; b...) = UpdateConfiguration(a..., b)

"""
    UpdateUser()

Updates the information for an ActiveMQ user.

Required Parameters
broker-id => The unique ID that Amazon MQ generates for the broker.
username => Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.

Optional Parameters
consoleAccess => Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
groups => The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
password => The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas.
"""
UpdateUser(broker_id, username) = mq("PUT", "/v1/brokers/$(broker-id)/users/$(username)")
UpdateUser(broker_id, username, args::AbstractDict{String, <: Any}) = mq("PUT", "/v1/brokers/$(broker-id)/users/$(username)", args)
UpdateUser(a...; b...) = UpdateUser(a..., b)
