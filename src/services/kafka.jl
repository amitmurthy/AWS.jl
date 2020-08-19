# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: kafka

using Compat
using UUIDs
"""
    CreateCluster()


            Creates a new MSK cluster.
         

# Required Parameters
- `brokerNodeGroupInfo`: 
            Information about the broker nodes in the cluster.
         
- `clusterName`: 
            The name of the cluster.
         
- `kafkaVersion`: 
            The version of Apache Kafka.
         
- `numberOfBrokerNodes`: 
            The number of broker nodes in the cluster.
         

# Optional Parameters
- `clientAuthentication`: 
            Includes all client authentication related information.
         
- `configurationInfo`: 
            Represents the configuration that you want MSK to use for the brokers in a cluster.
         
- `encryptionInfo`: 
            Includes all encryption-related information.
         
- `enhancedMonitoring`: 
            Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.
         
- `loggingInfo`: 
- `openMonitoring`: 
            The settings for open monitoring.
         
- `tags`: 
            Create tags when creating the cluster.
         
"""

CreateCluster(brokerNodeGroupInfo, clusterName, kafkaVersion, numberOfBrokerNodes; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/clusters", Dict{String, Any}("brokerNodeGroupInfo"=>brokerNodeGroupInfo, "clusterName"=>clusterName, "kafkaVersion"=>kafkaVersion, "numberOfBrokerNodes"=>numberOfBrokerNodes); aws_config=aws_config)
CreateCluster(brokerNodeGroupInfo, clusterName, kafkaVersion, numberOfBrokerNodes, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/clusters", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("brokerNodeGroupInfo"=>brokerNodeGroupInfo, "clusterName"=>clusterName, "kafkaVersion"=>kafkaVersion, "numberOfBrokerNodes"=>numberOfBrokerNodes), args)); aws_config=aws_config)

"""
    CreateConfiguration()


            Creates a new MSK configuration.
         

# Required Parameters
- `name`: 
            The name of the configuration.
         
- `serverProperties`: 
            Contents of the server.properties file. When using the API, you must ensure that the contents of the file are base64 encoded. 
               When using the AWS Management Console, the SDK, or the AWS CLI, the contents of server.properties can be in plaintext.
         

# Optional Parameters
- `description`: 
            The description of the configuration.
         
- `kafkaVersions`: 
            The versions of Apache Kafka with which you can use this MSK configuration.
         
"""

CreateConfiguration(name, serverProperties; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/configurations", Dict{String, Any}("name"=>name, "serverProperties"=>serverProperties); aws_config=aws_config)
CreateConfiguration(name, serverProperties, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/configurations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name, "serverProperties"=>serverProperties), args)); aws_config=aws_config)

"""
    DeleteCluster()


            Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         

# Optional Parameters
- `currentVersion`: 
            The current version of the MSK cluster.
         
"""

DeleteCluster(clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("DELETE", "/v1/clusters/$(clusterArn)"; aws_config=aws_config)
DeleteCluster(clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("DELETE", "/v1/clusters/$(clusterArn)", args; aws_config=aws_config)

"""
    DescribeCluster()


            Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         

"""

DescribeCluster(clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)"; aws_config=aws_config)
DescribeCluster(clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)", args; aws_config=aws_config)

"""
    DescribeClusterOperation()


            Returns a description of the cluster operation specified by the ARN.
         

# Required Parameters
- `clusterOperationArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.
         

"""

DescribeClusterOperation(clusterOperationArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/operations/$(clusterOperationArn)"; aws_config=aws_config)
DescribeClusterOperation(clusterOperationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/operations/$(clusterOperationArn)", args; aws_config=aws_config)

"""
    DescribeConfiguration()


            Returns a description of this MSK configuration.
         

# Required Parameters
- `arn`: 
            The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.
         

"""

DescribeConfiguration(arn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)"; aws_config=aws_config)
DescribeConfiguration(arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)", args; aws_config=aws_config)

"""
    DescribeConfigurationRevision()


            Returns a description of this revision of the configuration.
         

# Required Parameters
- `arn`: 
            The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.
         
- `revision`: 
            A string that uniquely identifies a revision of an MSK configuration.
         

"""

DescribeConfigurationRevision(arn, revision; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)/revisions/$(revision)"; aws_config=aws_config)
DescribeConfigurationRevision(arn, revision, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)/revisions/$(revision)", args; aws_config=aws_config)

"""
    GetBootstrapBrokers()


            A list of brokers that a client application can use to bootstrap.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         

"""

GetBootstrapBrokers(clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/bootstrap-brokers"; aws_config=aws_config)
GetBootstrapBrokers(clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/bootstrap-brokers", args; aws_config=aws_config)

"""
    GetCompatibleKafkaVersions()


            Gets the Apache Kafka versions to which you can update the MSK cluster.
         

# Optional Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) of the cluster check.
            
"""

GetCompatibleKafkaVersions(; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/compatible-kafka-versions"; aws_config=aws_config)
GetCompatibleKafkaVersions(args::AbstractDict{String, Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/compatible-kafka-versions", args; aws_config=aws_config)

"""
    ListClusterOperations()


            Returns a list of all the operations that have been performed on the specified MSK cluster.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         

# Optional Parameters
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
         
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.
         
"""

ListClusterOperations(clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/operations"; aws_config=aws_config)
ListClusterOperations(clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/operations", args; aws_config=aws_config)

"""
    ListClusters()


            Returns a list of all the MSK clusters in the current Region.
         

# Optional Parameters
- `clusterNameFilter`: 
            Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.
         
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
         
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.
         
"""

ListClusters(; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters"; aws_config=aws_config)
ListClusters(args::AbstractDict{String, Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters", args; aws_config=aws_config)

"""
    ListConfigurationRevisions()


            Returns a list of all the MSK configurations in this Region.
         

# Required Parameters
- `arn`: 
            The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.
         

# Optional Parameters
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
         
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.
         
"""

ListConfigurationRevisions(arn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)/revisions"; aws_config=aws_config)
ListConfigurationRevisions(arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations/$(arn)/revisions", args; aws_config=aws_config)

"""
    ListConfigurations()


            Returns a list of all the MSK configurations in this Region.
         

# Optional Parameters
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
         
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.
         
"""

ListConfigurations(; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations"; aws_config=aws_config)
ListConfigurations(args::AbstractDict{String, Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/configurations", args; aws_config=aws_config)

"""
    ListKafkaVersions()


            Returns a list of Kafka versions.
         

# Optional Parameters
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.
"""

ListKafkaVersions(; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/kafka-versions"; aws_config=aws_config)
ListKafkaVersions(args::AbstractDict{String, Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/kafka-versions", args; aws_config=aws_config)

"""
    ListNodes()


            Returns a list of the broker nodes in the cluster.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         

# Optional Parameters
- `maxResults`: 
            The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.
         
- `nextToken`: 
            The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. 
            To get the next batch, provide this token in your next request.
         
"""

ListNodes(clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/nodes"; aws_config=aws_config)
ListNodes(clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/clusters/$(clusterArn)/nodes", args; aws_config=aws_config)

"""
    ListTagsForResource()


            Returns a list of the tags associated with the specified resource.
         

# Required Parameters
- `resourceArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.
         

"""

ListTagsForResource(resourceArn; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/tags/$(resourceArn)"; aws_config=aws_config)
ListTagsForResource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("GET", "/v1/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    RebootBroker()

Reboots brokers.

# Required Parameters
- `brokerIds`: 
            The list of broker IDs to be rebooted.
         
- `clusterArn`: 
            The Amazon Resource Name (ARN) of the cluster to be updated.
         

"""

RebootBroker(brokerIds, clusterArn; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/reboot-broker", Dict{String, Any}("brokerIds"=>brokerIds); aws_config=aws_config)
RebootBroker(brokerIds, clusterArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/reboot-broker", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("brokerIds"=>brokerIds), args)); aws_config=aws_config)

"""
    TagResource()


            Adds tags to the specified MSK resource.
         

# Required Parameters
- `resourceArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.
         
- `tags`: 
            The key-value pair for the resource tag.
         

"""

TagResource(resourceArn, tags; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
TagResource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("POST", "/v1/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()


            Removes the tags associated with the keys that are provided in the query.
         

# Required Parameters
- `resourceArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.
         
- `tagKeys`: 
            Tag keys must be unique for a given cluster. In addition, the following restrictions apply:
            
               
                  Each tag key must be unique. If you add a tag with a key that's already in
                  use, your new tag overwrites the existing key-value pair. 
               
               
                  You can't start a tag key with aws: because this prefix is reserved for use
                  by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
                  you can't edit or delete them.
               
               
                  Tag keys must be between 1 and 128 Unicode characters in length.
               
               
                  Tag keys must consist of the following characters: Unicode letters, digits,
                  white space, and the following special characters: _ . / = + -
                     @.
               
            
         

"""

UntagResource(resourceArn, tagKeys; aws_config::AWSConfig=AWS.aws_config) = kafka("DELETE", "/v1/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
UntagResource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("DELETE", "/v1/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateBrokerCount()


            Updates the number of broker nodes in the cluster.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         
- `currentVersion`: 
            The version of cluster to update from. A successful operation will then generate a new version.
         
- `targetNumberOfBrokerNodes`: 
            The number of broker nodes that you want the cluster to have after this operation completes successfully.
         

"""

UpdateBrokerCount(clusterArn, currentVersion, targetNumberOfBrokerNodes; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/nodes/count", Dict{String, Any}("currentVersion"=>currentVersion, "targetNumberOfBrokerNodes"=>targetNumberOfBrokerNodes); aws_config=aws_config)
UpdateBrokerCount(clusterArn, currentVersion, targetNumberOfBrokerNodes, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/nodes/count", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("currentVersion"=>currentVersion, "targetNumberOfBrokerNodes"=>targetNumberOfBrokerNodes), args)); aws_config=aws_config)

"""
    UpdateBrokerStorage()


            Updates the EBS storage associated with MSK brokers.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         
- `currentVersion`: 
            The version of cluster to update from. A successful operation will then generate a new version.
         
- `targetBrokerEBSVolumeInfo`: 
            Describes the target volume size and the ID of the broker to apply the update to.
         

"""

UpdateBrokerStorage(clusterArn, currentVersion, targetBrokerEBSVolumeInfo; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/nodes/storage", Dict{String, Any}("currentVersion"=>currentVersion, "targetBrokerEBSVolumeInfo"=>targetBrokerEBSVolumeInfo); aws_config=aws_config)
UpdateBrokerStorage(clusterArn, currentVersion, targetBrokerEBSVolumeInfo, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/nodes/storage", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("currentVersion"=>currentVersion, "targetBrokerEBSVolumeInfo"=>targetBrokerEBSVolumeInfo), args)); aws_config=aws_config)

"""
    UpdateClusterConfiguration()


            Updates the cluster with the configuration that is specified in the request body.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         
- `configurationInfo`: 
            Represents the configuration that you want MSK to use for the brokers in a cluster.
         
- `currentVersion`: 
            The version of the cluster that needs to be updated.
         

"""

UpdateClusterConfiguration(clusterArn, configurationInfo, currentVersion; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/configuration", Dict{String, Any}("configurationInfo"=>configurationInfo, "currentVersion"=>currentVersion); aws_config=aws_config)
UpdateClusterConfiguration(clusterArn, configurationInfo, currentVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/configuration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("configurationInfo"=>configurationInfo, "currentVersion"=>currentVersion), args)); aws_config=aws_config)

"""
    UpdateClusterKafkaVersion()


            Updates the Apache Kafka version for the cluster.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) of the cluster to be updated.
            
- `currentVersion`: 
            Current cluster version.
            
- `targetKafkaVersion`: 
            Target Kafka version.
            

# Optional Parameters
- `configurationInfo`: 
            The custom configuration that should be applied on the new version of cluster.
            
"""

UpdateClusterKafkaVersion(clusterArn, currentVersion, targetKafkaVersion; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/version", Dict{String, Any}("currentVersion"=>currentVersion, "targetKafkaVersion"=>targetKafkaVersion); aws_config=aws_config)
UpdateClusterKafkaVersion(clusterArn, currentVersion, targetKafkaVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/version", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("currentVersion"=>currentVersion, "targetKafkaVersion"=>targetKafkaVersion), args)); aws_config=aws_config)

"""
    UpdateMonitoring()


            Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
         

# Required Parameters
- `clusterArn`: 
            The Amazon Resource Name (ARN) that uniquely identifies the cluster.
         
- `currentVersion`: 
            The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.
         

# Optional Parameters
- `enhancedMonitoring`: 
            Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.
         
- `loggingInfo`: 
- `openMonitoring`: 
            The settings for open monitoring.
         
"""

UpdateMonitoring(clusterArn, currentVersion; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/monitoring", Dict{String, Any}("currentVersion"=>currentVersion); aws_config=aws_config)
UpdateMonitoring(clusterArn, currentVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kafka("PUT", "/v1/clusters/$(clusterArn)/monitoring", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("currentVersion"=>currentVersion), args)); aws_config=aws_config)
