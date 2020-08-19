# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: kinesis_analytics_v2

using Compat
using UUIDs
"""
    AddApplicationCloudWatchLoggingOption()

Adds an Amazon CloudWatch log stream to monitor application configuration errors.

# Required Parameters
- `ApplicationName`: The Kinesis Data Analytics application name.
- `CloudWatchLoggingOption`: Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). 
- `CurrentApplicationVersionId`: The version ID of the Kinesis Data Analytics application. You can retrieve the application version ID using DescribeApplication.

"""

AddApplicationCloudWatchLoggingOption(ApplicationName, CloudWatchLoggingOption, CurrentApplicationVersionId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationCloudWatchLoggingOption", Dict{String, Any}("ApplicationName"=>ApplicationName, "CloudWatchLoggingOption"=>CloudWatchLoggingOption, "CurrentApplicationVersionId"=>CurrentApplicationVersionId); aws_config=aws_config)
AddApplicationCloudWatchLoggingOption(ApplicationName, CloudWatchLoggingOption, CurrentApplicationVersionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationCloudWatchLoggingOption", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CloudWatchLoggingOption"=>CloudWatchLoggingOption, "CurrentApplicationVersionId"=>CurrentApplicationVersionId), args)); aws_config=aws_config)

"""
    AddApplicationInput()

 Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. 

# Required Parameters
- `ApplicationName`: The name of your existing application to which you want to add the streaming source.
- `CurrentApplicationVersionId`: The current version of your application. You can use the DescribeApplication operation to find the current application version.
- `Input`: The Input to add.

"""

AddApplicationInput(ApplicationName, CurrentApplicationVersionId, Input; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationInput", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "Input"=>Input); aws_config=aws_config)
AddApplicationInput(ApplicationName, CurrentApplicationVersionId, Input, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationInput", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "Input"=>Input), args)); aws_config=aws_config)

"""
    AddApplicationInputProcessingConfiguration()

Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.

# Required Parameters
- `ApplicationName`: The name of the application to which you want to add the input processing configuration.
- `CurrentApplicationVersionId`: The version of the application to which you want to add the input processing configuration. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned.
- `InputId`: The ID of the input configuration to add the input processing configuration to. You can get a list of the input IDs for an application using the DescribeApplication operation.
- `InputProcessingConfiguration`: The InputProcessingConfiguration to add to the application.

"""

AddApplicationInputProcessingConfiguration(ApplicationName, CurrentApplicationVersionId, InputId, InputProcessingConfiguration; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationInputProcessingConfiguration", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "InputId"=>InputId, "InputProcessingConfiguration"=>InputProcessingConfiguration); aws_config=aws_config)
AddApplicationInputProcessingConfiguration(ApplicationName, CurrentApplicationVersionId, InputId, InputProcessingConfiguration, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationInputProcessingConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "InputId"=>InputId, "InputProcessingConfiguration"=>InputProcessingConfiguration), args)); aws_config=aws_config)

"""
    AddApplicationOutput()

Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.

# Required Parameters
- `ApplicationName`: The name of the application to which you want to add the output configuration.
- `CurrentApplicationVersionId`: The version of the application to which you want to add the output configuration. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned. 
- `Output`: An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, a Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), and record the formation to use when writing to the destination.

"""

AddApplicationOutput(ApplicationName, CurrentApplicationVersionId, Output; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationOutput", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "Output"=>Output); aws_config=aws_config)
AddApplicationOutput(ApplicationName, CurrentApplicationVersionId, Output, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationOutput", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "Output"=>Output), args)); aws_config=aws_config)

"""
    AddApplicationReferenceDataSource()

Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `CurrentApplicationVersionId`: The version of the application for which you are adding the reference data source. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned.
- `ReferenceDataSource`: The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. 

"""

AddApplicationReferenceDataSource(ApplicationName, CurrentApplicationVersionId, ReferenceDataSource; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationReferenceDataSource", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "ReferenceDataSource"=>ReferenceDataSource); aws_config=aws_config)
AddApplicationReferenceDataSource(ApplicationName, CurrentApplicationVersionId, ReferenceDataSource, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationReferenceDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "ReferenceDataSource"=>ReferenceDataSource), args)); aws_config=aws_config)

"""
    AddApplicationVpcConfiguration()

Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Kinesis Data Analytics applications:   VPC configurations are not supported for SQL applications.   When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.  

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `CurrentApplicationVersionId`: The version of the application to which you want to add the input processing configuration. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned.
- `VpcConfiguration`: Description of the VPC to add to the application.

"""

AddApplicationVpcConfiguration(ApplicationName, CurrentApplicationVersionId, VpcConfiguration; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationVpcConfiguration", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "VpcConfiguration"=>VpcConfiguration); aws_config=aws_config)
AddApplicationVpcConfiguration(ApplicationName, CurrentApplicationVersionId, VpcConfiguration, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("AddApplicationVpcConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "VpcConfiguration"=>VpcConfiguration), args)); aws_config=aws_config)

"""
    CreateApplication()

Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application. 

# Required Parameters
- `ApplicationName`: The name of your application (for example, sample-app).
- `RuntimeEnvironment`: The runtime environment for the application (SQL-1.0 or FLINK-1_6).
- `ServiceExecutionRole`: The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.

# Optional Parameters
- `ApplicationConfiguration`: Use this parameter to configure the application.
- `ApplicationDescription`: A summary description of the application.
- `CloudWatchLoggingOptions`: Use this parameter to configure an Amazon CloudWatch log stream to monitor application configuration errors. 
- `Tags`: A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging.
"""

CreateApplication(ApplicationName, RuntimeEnvironment, ServiceExecutionRole; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("CreateApplication", Dict{String, Any}("ApplicationName"=>ApplicationName, "RuntimeEnvironment"=>RuntimeEnvironment, "ServiceExecutionRole"=>ServiceExecutionRole); aws_config=aws_config)
CreateApplication(ApplicationName, RuntimeEnvironment, ServiceExecutionRole, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("CreateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "RuntimeEnvironment"=>RuntimeEnvironment, "ServiceExecutionRole"=>ServiceExecutionRole), args)); aws_config=aws_config)

"""
    CreateApplicationSnapshot()

Creates a snapshot of the application's state data.

# Required Parameters
- `ApplicationName`: The name of an existing application
- `SnapshotName`: An identifier for the application snapshot.

"""

CreateApplicationSnapshot(ApplicationName, SnapshotName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("CreateApplicationSnapshot", Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotName"=>SnapshotName); aws_config=aws_config)
CreateApplicationSnapshot(ApplicationName, SnapshotName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("CreateApplicationSnapshot", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotName"=>SnapshotName), args)); aws_config=aws_config)

"""
    DeleteApplication()

Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.

# Required Parameters
- `ApplicationName`: The name of the application to delete.
- `CreateTimestamp`: Use the DescribeApplication operation to get this value.

"""

DeleteApplication(ApplicationName, CreateTimestamp; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplication", Dict{String, Any}("ApplicationName"=>ApplicationName, "CreateTimestamp"=>CreateTimestamp); aws_config=aws_config)
DeleteApplication(ApplicationName, CreateTimestamp, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CreateTimestamp"=>CreateTimestamp), args)); aws_config=aws_config)

"""
    DeleteApplicationCloudWatchLoggingOption()

Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. 

# Required Parameters
- `ApplicationName`: The application name.
- `CloudWatchLoggingOptionId`: The CloudWatchLoggingOptionId of the Amazon CloudWatch logging option to delete. You can get the CloudWatchLoggingOptionId by using the DescribeApplication operation. 
- `CurrentApplicationVersionId`: The version ID of the application. You can retrieve the application version ID using DescribeApplication.

"""

DeleteApplicationCloudWatchLoggingOption(ApplicationName, CloudWatchLoggingOptionId, CurrentApplicationVersionId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationCloudWatchLoggingOption", Dict{String, Any}("ApplicationName"=>ApplicationName, "CloudWatchLoggingOptionId"=>CloudWatchLoggingOptionId, "CurrentApplicationVersionId"=>CurrentApplicationVersionId); aws_config=aws_config)
DeleteApplicationCloudWatchLoggingOption(ApplicationName, CloudWatchLoggingOptionId, CurrentApplicationVersionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationCloudWatchLoggingOption", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CloudWatchLoggingOptionId"=>CloudWatchLoggingOptionId, "CurrentApplicationVersionId"=>CurrentApplicationVersionId), args)); aws_config=aws_config)

"""
    DeleteApplicationInputProcessingConfiguration()

Deletes an InputProcessingConfiguration from an input.

# Required Parameters
- `ApplicationName`: The name of the application.
- `CurrentApplicationVersionId`: The application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned. 
- `InputId`: The ID of the input configuration from which to delete the input processing configuration. You can get a list of the input IDs for an application by using the DescribeApplication operation.

"""

DeleteApplicationInputProcessingConfiguration(ApplicationName, CurrentApplicationVersionId, InputId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationInputProcessingConfiguration", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "InputId"=>InputId); aws_config=aws_config)
DeleteApplicationInputProcessingConfiguration(ApplicationName, CurrentApplicationVersionId, InputId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationInputProcessingConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "InputId"=>InputId), args)); aws_config=aws_config)

"""
    DeleteApplicationOutput()

Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.

# Required Parameters
- `ApplicationName`: The application name.
- `CurrentApplicationVersionId`: The application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned. 
- `OutputId`: The ID of the configuration to delete. Each output configuration that is added to the application (either when the application is created or later) using the AddApplicationOutput operation has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the DescribeApplication operation to get the specific OutputId. 

"""

DeleteApplicationOutput(ApplicationName, CurrentApplicationVersionId, OutputId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationOutput", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "OutputId"=>OutputId); aws_config=aws_config)
DeleteApplicationOutput(ApplicationName, CurrentApplicationVersionId, OutputId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationOutput", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "OutputId"=>OutputId), args)); aws_config=aws_config)

"""
    DeleteApplicationReferenceDataSource()

Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation. 

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `CurrentApplicationVersionId`: The current application version. You can use the DescribeApplication operation to get the current application version. If the version specified is not the current version, the ConcurrentModificationException is returned.
- `ReferenceId`: The ID of the reference data source. When you add a reference data source to your application using the AddApplicationReferenceDataSource, Kinesis Data Analytics assigns an ID. You can use the DescribeApplication operation to get the reference ID. 

"""

DeleteApplicationReferenceDataSource(ApplicationName, CurrentApplicationVersionId, ReferenceId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationReferenceDataSource", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "ReferenceId"=>ReferenceId); aws_config=aws_config)
DeleteApplicationReferenceDataSource(ApplicationName, CurrentApplicationVersionId, ReferenceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationReferenceDataSource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "ReferenceId"=>ReferenceId), args)); aws_config=aws_config)

"""
    DeleteApplicationSnapshot()

Deletes a snapshot of application state.

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `SnapshotCreationTimestamp`: The creation timestamp of the application snapshot to delete. You can retrieve this value using or .
- `SnapshotName`: The identifier for the snapshot delete.

"""

DeleteApplicationSnapshot(ApplicationName, SnapshotCreationTimestamp, SnapshotName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationSnapshot", Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotCreationTimestamp"=>SnapshotCreationTimestamp, "SnapshotName"=>SnapshotName); aws_config=aws_config)
DeleteApplicationSnapshot(ApplicationName, SnapshotCreationTimestamp, SnapshotName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationSnapshot", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotCreationTimestamp"=>SnapshotCreationTimestamp, "SnapshotName"=>SnapshotName), args)); aws_config=aws_config)

"""
    DeleteApplicationVpcConfiguration()

Removes a VPC configuration from a Kinesis Data Analytics application.

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `CurrentApplicationVersionId`: The current application version ID. You can retrieve the application version ID using DescribeApplication.
- `VpcConfigurationId`: The ID of the VPC configuration to delete.

"""

DeleteApplicationVpcConfiguration(ApplicationName, CurrentApplicationVersionId, VpcConfigurationId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationVpcConfiguration", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "VpcConfigurationId"=>VpcConfigurationId); aws_config=aws_config)
DeleteApplicationVpcConfiguration(ApplicationName, CurrentApplicationVersionId, VpcConfigurationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DeleteApplicationVpcConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId, "VpcConfigurationId"=>VpcConfigurationId), args)); aws_config=aws_config)

"""
    DescribeApplication()

Returns information about a specific Amazon Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.

# Required Parameters
- `ApplicationName`: The name of the application.

# Optional Parameters
- `IncludeAdditionalDetails`: Displays verbose information about a Kinesis Data Analytics application, including the application's job plan.
"""

DescribeApplication(ApplicationName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DescribeApplication", Dict{String, Any}("ApplicationName"=>ApplicationName); aws_config=aws_config)
DescribeApplication(ApplicationName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DescribeApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName), args)); aws_config=aws_config)

"""
    DescribeApplicationSnapshot()

Returns information about a snapshot of application state data.

# Required Parameters
- `ApplicationName`: The name of an existing application.
- `SnapshotName`: The identifier of an application snapshot. You can retrieve this value using .

"""

DescribeApplicationSnapshot(ApplicationName, SnapshotName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DescribeApplicationSnapshot", Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotName"=>SnapshotName); aws_config=aws_config)
DescribeApplicationSnapshot(ApplicationName, SnapshotName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DescribeApplicationSnapshot", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "SnapshotName"=>SnapshotName), args)); aws_config=aws_config)

"""
    DiscoverInputSchema()

Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 

# Required Parameters
- `ServiceExecutionRole`: The ARN of the role that is used to access the streaming source.

# Optional Parameters
- `InputProcessingConfiguration`: The InputProcessingConfiguration to use to preprocess the records before discovering the schema of the records.
- `InputStartingPositionConfiguration`: The point at which you want Kinesis Data Analytics to start reading records from the specified streaming source discovery purposes.
- `ResourceARN`: The Amazon Resource Name (ARN) of the streaming source.
- `S3Configuration`: Specify this parameter to discover a schema from data in an Amazon S3 object.
"""

DiscoverInputSchema(ServiceExecutionRole; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DiscoverInputSchema", Dict{String, Any}("ServiceExecutionRole"=>ServiceExecutionRole); aws_config=aws_config)
DiscoverInputSchema(ServiceExecutionRole, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("DiscoverInputSchema", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceExecutionRole"=>ServiceExecutionRole), args)); aws_config=aws_config)

"""
    ListApplicationSnapshots()

Lists information about the current application snapshots.

# Required Parameters
- `ApplicationName`: The name of an existing application.

# Optional Parameters
- `Limit`: The maximum number of application snapshots to list.
- `NextToken`: Use this parameter if you receive a NextToken response in a previous request that indicates that there is more output available. Set it to the value of the previous call's NextToken response to indicate where the output should continue from. 
"""

ListApplicationSnapshots(ApplicationName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListApplicationSnapshots", Dict{String, Any}("ApplicationName"=>ApplicationName); aws_config=aws_config)
ListApplicationSnapshots(ApplicationName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListApplicationSnapshots", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName), args)); aws_config=aws_config)

"""
    ListApplications()

Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.

# Optional Parameters
- `Limit`: The maximum number of applications to list.
- `NextToken`: If a previous command returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see Using the AWS Command Line Interface's Pagination Options.
"""

ListApplications(; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListApplications"; aws_config=aws_config)
ListApplications(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListApplications", args; aws_config=aws_config)

"""
    ListTagsForResource()

Retrieves the list of key-value tags assigned to the application. For more information, see Using Tagging.

# Required Parameters
- `ResourceARN`: The ARN of the application for which to retrieve tags.

"""

ListTagsForResource(ResourceARN; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
ListTagsForResource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    StartApplication()

Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.

# Required Parameters
- `ApplicationName`: The name of the application.
- `RunConfiguration`: Identifies the run configuration (start parameters) of a Kinesis Data Analytics application.

"""

StartApplication(ApplicationName, RunConfiguration; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("StartApplication", Dict{String, Any}("ApplicationName"=>ApplicationName, "RunConfiguration"=>RunConfiguration); aws_config=aws_config)
StartApplication(ApplicationName, RunConfiguration, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("StartApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "RunConfiguration"=>RunConfiguration), args)); aws_config=aws_config)

"""
    StopApplication()

Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. 

# Required Parameters
- `ApplicationName`: The name of the running application to stop.

"""

StopApplication(ApplicationName; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("StopApplication", Dict{String, Any}("ApplicationName"=>ApplicationName); aws_config=aws_config)
StopApplication(ApplicationName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("StopApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName), args)); aws_config=aws_config)

"""
    TagResource()

Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging.

# Required Parameters
- `ResourceARN`: The ARN of the application to assign the tags.
- `Tags`: The key-value tags to assign to the application.

"""

TagResource(ResourceARN, Tags; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
TagResource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes one or more tags from a Kinesis Analytics application. For more information, see Using Tagging.

# Required Parameters
- `ResourceARN`: The ARN of the Kinesis Analytics application from which to remove the tags.
- `TagKeys`: A list of keys of tags to remove from the specified application.

"""

UntagResource(ResourceARN, TagKeys; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
UntagResource(ResourceARN, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdateApplication()

Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application. 

# Required Parameters
- `ApplicationName`: The name of the application to update.
- `CurrentApplicationVersionId`: The current application version ID. You can retrieve the application version ID using DescribeApplication.

# Optional Parameters
- `ApplicationConfigurationUpdate`: Describes application configuration updates.
- `CloudWatchLoggingOptionUpdates`: Describes application Amazon CloudWatch logging option updates. You can only update existing CloudWatch logging options with this action. To add a new CloudWatch logging option, use AddApplicationCloudWatchLoggingOption.
- `RunConfigurationUpdate`: Describes updates to the application's starting parameters.
- `ServiceExecutionRoleUpdate`: Describes updates to the service execution role.
"""

UpdateApplication(ApplicationName, CurrentApplicationVersionId; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("UpdateApplication", Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId); aws_config=aws_config)
UpdateApplication(ApplicationName, CurrentApplicationVersionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = kinesis_analytics_v2("UpdateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ApplicationName"=>ApplicationName, "CurrentApplicationVersionId"=>CurrentApplicationVersionId), args)); aws_config=aws_config)
