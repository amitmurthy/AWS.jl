include("../AWSServices.jl")
using .AWSServices: glue

"""
    StartCrawlerSchedule()

Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED.

Required Parameters
{
  "CrawlerName": "Name of the crawler to schedule."
}
"""
StartCrawlerSchedule(args) = glue("StartCrawlerSchedule", args)

"""
    GetMLTransform()

Gets an AWS Glue machine learning transform artifact and all its corresponding metadata. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. You can retrieve their metadata by calling GetMLTransform.

Required Parameters
{
  "TransformId": "The unique identifier of the transform, generated at the time that the transform was created."
}
"""
GetMLTransform(args) = glue("GetMLTransform", args)

"""
    GetWorkflowRunProperties()

Retrieves the workflow run properties which were set during the run.

Required Parameters
{
  "RunId": "The ID of the workflow run whose run properties should be returned.",
  "Name": "Name of the workflow which was run."
}
"""
GetWorkflowRunProperties(args) = glue("GetWorkflowRunProperties", args)

"""
    GetMapping()

Creates mappings.

Required Parameters
{
  "Source": "Specifies the source table."
}

Optional Parameters
{
  "Sinks": "A list of target tables.",
  "Location": "Parameters for the mapping."
}
"""
GetMapping(args) = glue("GetMapping", args)

"""
    UpdateDatabase()

Updates an existing database definition in a Data Catalog.

Required Parameters
{
  "DatabaseInput": "A DatabaseInput object specifying the new definition of the metadata database in the catalog.",
  "Name": "The name of the database to update in the catalog. For Hive compatibility, this is folded to lowercase."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the metadata database resides. If none is provided, the AWS account ID is used by default."
}
"""
UpdateDatabase(args) = glue("UpdateDatabase", args)

"""
    PutDataCatalogEncryptionSettings()

Sets the security configuration for a specified catalog. After the configuration has been set, the specified encryption is applied to every catalog write thereafter.

Required Parameters
{
  "DataCatalogEncryptionSettings": "The security configuration to set."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default."
}
"""
PutDataCatalogEncryptionSettings(args) = glue("PutDataCatalogEncryptionSettings", args)

"""
    BatchGetPartition()

Retrieves partitions in a batch request.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the partitions reside.",
  "TableName": "The name of the partitions' table.",
  "PartitionsToGet": "A list of partition values identifying the partitions to retrieve."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default."
}
"""
BatchGetPartition(args) = glue("BatchGetPartition", args)

"""
    GetTables()

Retrieves the definitions of some or all of the tables in a given Database.

Required Parameters
{
  "DatabaseName": "The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase."
}

Optional Parameters
{
  "MaxResults": "The maximum number of tables to return in a single response.",
  "NextToken": "A continuation token, included if this is a continuation call.",
  "CatalogId": "The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.",
  "Expression": "A regular expression pattern. If present, only those tables whose names match the pattern are returned."
}
"""
GetTables(args) = glue("GetTables", args)

"""
    UpdateClassifier()

Modifies an existing classifier (a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field is present).

Optional Parameters
{
  "JsonClassifier": "A JsonClassifier object with updated fields.",
  "CsvClassifier": "A CsvClassifier object with updated fields.",
  "GrokClassifier": "A GrokClassifier object with updated fields.",
  "XMLClassifier": "An XMLClassifier object with updated fields."
}
"""
UpdateClassifier() = glue("UpdateClassifier")
UpdateClassifier(args) = glue("UpdateClassifier", args)

"""
    GetSecurityConfigurations()

Retrieves a list of all security configurations.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetSecurityConfigurations() = glue("GetSecurityConfigurations")
GetSecurityConfigurations(args) = glue("GetSecurityConfigurations", args)

"""
    CancelMLTaskRun()

Cancels (stops) a task run. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can cancel a machine learning task run at any time by calling CancelMLTaskRun with a task run's parent transform's TransformID and the task run's TaskRunId. 

Required Parameters
{
  "TaskRunId": "A unique identifier for the task run.",
  "TransformId": "The unique identifier of the machine learning transform."
}
"""
CancelMLTaskRun(args) = glue("CancelMLTaskRun", args)

"""
    GetTrigger()

Retrieves the definition of a trigger.

Required Parameters
{
  "Name": "The name of the trigger to retrieve."
}
"""
GetTrigger(args) = glue("GetTrigger", args)

"""
    GetJobRuns()

Retrieves metadata for all runs of a given job definition.

Required Parameters
{
  "JobName": "The name of the job definition for which to retrieve all job runs."
}

Optional Parameters
{
  "MaxResults": "The maximum size of the response.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetJobRuns(args) = glue("GetJobRuns", args)

"""
    PutWorkflowRunProperties()

Puts the specified workflow run properties for the given workflow run. If a property already exists for the specified run, then it overrides the value otherwise adds the property to existing properties.

Required Parameters
{
  "RunProperties": "The properties to put for the specified run.",
  "RunId": "The ID of the workflow run for which the run properties should be updated.",
  "Name": "Name of the workflow which was run."
}
"""
PutWorkflowRunProperties(args) = glue("PutWorkflowRunProperties", args)

"""
    BatchGetDevEndpoints()

Returns a list of resource metadata for a given list of development endpoint names. After calling the ListDevEndpoints operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters
{
  "DevEndpointNames": "The list of DevEndpoint names, which might be the names returned from the ListDevEndpoint operation."
}
"""
BatchGetDevEndpoints(args) = glue("BatchGetDevEndpoints", args)

"""
    TagResource()

Adds tags to a resource. A tag is a label you can assign to an AWS resource. In AWS Glue, you can tag only certain resources. For information about what resources you can tag, see AWS Tags in AWS Glue.

Required Parameters
{
  "TagsToAdd": "Tags to add to this resource.",
  "ResourceArn": "The ARN of the AWS Glue resource to which to add the tags. For more information about AWS Glue resource ARNs, see the AWS Glue ARN string pattern."
}
"""
TagResource(args) = glue("TagResource", args)

"""
    CreateTable()

Creates a new table definition in the Data Catalog.

Required Parameters
{
  "DatabaseName": "The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.",
  "TableInput": "The TableInput object that defines the metadata table to create in the catalog."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which to create the Table. If none is supplied, the AWS account ID is used by default."
}
"""
CreateTable(args) = glue("CreateTable", args)

"""
    GetDataCatalogEncryptionSettings()

Retrieves the security configuration for a specified catalog.

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog to retrieve the security configuration for. If none is provided, the AWS account ID is used by default."
}
"""
GetDataCatalogEncryptionSettings() = glue("GetDataCatalogEncryptionSettings")
GetDataCatalogEncryptionSettings(args) = glue("GetDataCatalogEncryptionSettings", args)

"""
    GetMLTransforms()

Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling GetMLTransforms.

Optional Parameters
{
  "MaxResults": "The maximum number of results to return.",
  "Sort": "The sorting criteria.",
  "NextToken": "A paginated token to offset the results.",
  "Filter": "The filter transformation criteria."
}
"""
GetMLTransforms() = glue("GetMLTransforms")
GetMLTransforms(args) = glue("GetMLTransforms", args)

"""
    BatchGetTriggers()

Returns a list of resource metadata for a given list of trigger names. After calling the ListTriggers operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters
{
  "TriggerNames": "A list of trigger names, which may be the names returned from the ListTriggers operation."
}
"""
BatchGetTriggers(args) = glue("BatchGetTriggers", args)

"""
    GetMLTaskRuns()

Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling GetMLTaskRuns with their parent transform's TransformID and other optional parameters as documented in this section. This operation returns a list of historic runs and must be paginated.

Required Parameters
{
  "TransformId": "The unique identifier of the machine learning transform."
}

Optional Parameters
{
  "MaxResults": "The maximum number of results to return. ",
  "Sort": "The sorting criteria, in the TaskRunSortCriteria structure, for the task run.",
  "NextToken": "A token for pagination of the results. The default is empty.",
  "Filter": "The filter criteria, in the TaskRunFilterCriteria structure, for the task run."
}
"""
GetMLTaskRuns(args) = glue("GetMLTaskRuns", args)

"""
    SearchTables()

Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.  You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search. 

Optional Parameters
{
  "MaxResults": "The maximum number of tables to return in a single response.",
  "NextToken": "A continuation token, included if this is a continuation call.",
  "SortCriteria": "A list of criteria for sorting the results by a field name, in an ascending or descending order.",
  "SearchText": "A string used for a text search. Specifying a value in quotes filters based on an exact match to the value.",
  "CatalogId": "A unique identifier, consisting of  account_id/datalake.",
  "Filters": "A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate."
}
"""
SearchTables() = glue("SearchTables")
SearchTables(args) = glue("SearchTables", args)

"""
    UpdateJob()

Updates an existing job definition.

Required Parameters
{
  "JobName": "The name of the job definition to update.",
  "JobUpdate": "Specifies the values with which to update the job definition."
}
"""
UpdateJob(args) = glue("UpdateJob", args)

"""
    DeleteDatabase()

Removes a specified database from a Data Catalog.  After completing this operation, you no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling DeleteDatabase, use DeleteTableVersion or BatchDeleteTableVersion, DeletePartition or BatchDeletePartition, DeleteUserDefinedFunction, and DeleteTable or BatchDeleteTable, to delete any resources that belong to the database. 

Required Parameters
{
  "Name": "The name of the database to delete. For Hive compatibility, this must be all lowercase."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default."
}
"""
DeleteDatabase(args) = glue("DeleteDatabase", args)

"""
    StopCrawler()

If the specified crawler is running, stops the crawl.

Required Parameters
{
  "Name": "Name of the crawler to stop."
}
"""
StopCrawler(args) = glue("StopCrawler", args)

"""
    BatchCreatePartition()

Creates one or more partitions in a batch operation.

Required Parameters
{
  "DatabaseName": "The name of the metadata database in which the partition is to be created.",
  "TableName": "The name of the metadata table in which the partition is to be created.",
  "PartitionInputList": "A list of PartitionInput structures that define the partitions to be created."
}

Optional Parameters
{
  "CatalogId": "The ID of the catalog in which the partition is to be created. Currently, this should be the AWS account ID."
}
"""
BatchCreatePartition(args) = glue("BatchCreatePartition", args)

"""
    StopTrigger()

Stops a specified trigger.

Required Parameters
{
  "Name": "The name of the trigger to stop."
}
"""
StopTrigger(args) = glue("StopTrigger", args)

"""
    UpdateConnection()

Updates a connection definition in the Data Catalog.

Required Parameters
{
  "Name": "The name of the connection definition to update.",
  "ConnectionInput": "A ConnectionInput object that redefines the connection in question."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default."
}
"""
UpdateConnection(args) = glue("UpdateConnection", args)

"""
    DeleteUserDefinedFunction()

Deletes an existing function definition from the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the function is located.",
  "FunctionName": "The name of the function definition to be deleted."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the function to be deleted is located. If none is supplied, the AWS account ID is used by default."
}
"""
DeleteUserDefinedFunction(args) = glue("DeleteUserDefinedFunction", args)

"""
    GetTableVersions()

Retrieves a list of strings that identify available versions of a specified table.

Required Parameters
{
  "DatabaseName": "The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "TableName": "The name of the table. For Hive compatibility, this name is entirely lowercase."
}

Optional Parameters
{
  "MaxResults": "The maximum number of table versions to return in one response.",
  "NextToken": "A continuation token, if this is not the first call.",
  "CatalogId": "The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default."
}
"""
GetTableVersions(args) = glue("GetTableVersions", args)

"""
    GetCrawlerMetrics()

Retrieves metrics about specified crawlers.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "CrawlerNameList": "A list of the names of crawlers about which to retrieve metrics.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetCrawlerMetrics() = glue("GetCrawlerMetrics")
GetCrawlerMetrics(args) = glue("GetCrawlerMetrics", args)

"""
    DeleteSecurityConfiguration()

Deletes a specified security configuration.

Required Parameters
{
  "Name": "The name of the security configuration to delete."
}
"""
DeleteSecurityConfiguration(args) = glue("DeleteSecurityConfiguration", args)

"""
    UpdateCrawler()

Updates a crawler. If a crawler is running, you must stop it using StopCrawler before updating it.

Required Parameters
{
  "Name": "Name of the new crawler."
}

Optional Parameters
{
  "DatabaseName": "The AWS Glue database where results are stored, such as: arn:aws:daylight:us-east-1::database/sometable/*.",
  "SchemaChangePolicy": "The policy for the crawler's update and deletion behavior.",
  "Schedule": "A cron expression used to specify the schedule. For more information, see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, specify cron(15 12 * * ? *).",
  "Configuration": "The crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see Configuring a Crawler.",
  "CrawlerSecurityConfiguration": "The name of the SecurityConfiguration structure to be used by this crawler.",
  "Description": "A description of the new crawler.",
  "TablePrefix": "The table prefix used for catalog tables that are created.",
  "Targets": "A list of targets to crawl.",
  "Role": "The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler to access customer resources.",
  "Classifiers": "A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification."
}
"""
UpdateCrawler(args) = glue("UpdateCrawler", args)

"""
    UpdatePartition()

Updates a partition.

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the table in question resides.",
  "PartitionValueList": "A list of the values defining the partition.",
  "PartitionInput": "The new partition object to update the partition to.",
  "TableName": "The name of the table in which the partition to be updated is located."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the partition to be updated resides. If none is provided, the AWS account ID is used by default."
}
"""
UpdatePartition(args) = glue("UpdatePartition", args)

"""
    GetDatabases()

Retrieves all databases defined in a given Data Catalog.

Optional Parameters
{
  "MaxResults": "The maximum number of databases to return in one response.",
  "NextToken": "A continuation token, if this is a continuation call.",
  "CatalogId": "The ID of the Data Catalog from which to retrieve Databases. If none is provided, the AWS account ID is used by default."
}
"""
GetDatabases() = glue("GetDatabases")
GetDatabases(args) = glue("GetDatabases", args)

"""
    StopCrawlerSchedule()

Sets the schedule state of the specified crawler to NOT_SCHEDULED, but does not stop the crawler if it is already running.

Required Parameters
{
  "CrawlerName": "Name of the crawler whose schedule state to set."
}
"""
StopCrawlerSchedule(args) = glue("StopCrawlerSchedule", args)

"""
    GetWorkflow()

Retrieves resource metadata for a workflow.

Required Parameters
{
  "Name": "The name of the workflow to retrieve."
}

Optional Parameters
{
  "IncludeGraph": "Specifies whether to include a graph when returning the workflow resource metadata."
}
"""
GetWorkflow(args) = glue("GetWorkflow", args)

"""
    GetClassifiers()

Lists all classifier objects in the Data Catalog.

Optional Parameters
{
  "MaxResults": "The size of the list to return (optional).",
  "NextToken": "An optional continuation token."
}
"""
GetClassifiers() = glue("GetClassifiers")
GetClassifiers(args) = glue("GetClassifiers", args)

"""
    GetUserDefinedFunctions()

Retrieves multiple function definitions from the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the functions are located.",
  "Pattern": "An optional function-name pattern string that filters the function definitions returned."
}

Optional Parameters
{
  "MaxResults": "The maximum number of functions to return in one response.",
  "NextToken": "A continuation token, if this is a continuation call.",
  "CatalogId": "The ID of the Data Catalog where the functions to be retrieved are located. If none is provided, the AWS account ID is used by default."
}
"""
GetUserDefinedFunctions(args) = glue("GetUserDefinedFunctions", args)

"""
    UpdateUserDefinedFunction()

Updates an existing function definition in the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the function to be updated is located.",
  "FunctionName": "The name of the function.",
  "FunctionInput": "A FunctionInput object that redefines the function in the Data Catalog."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the function to be updated is located. If none is provided, the AWS account ID is used by default."
}
"""
UpdateUserDefinedFunction(args) = glue("UpdateUserDefinedFunction", args)

"""
    GetWorkflowRun()

Retrieves the metadata for a given workflow run. 

Required Parameters
{
  "RunId": "The ID of the workflow run.",
  "Name": "Name of the workflow being run."
}

Optional Parameters
{
  "IncludeGraph": "Specifies whether to include the workflow graph in response or not."
}
"""
GetWorkflowRun(args) = glue("GetWorkflowRun", args)

"""
    StartMLEvaluationTaskRun()

Starts a task to estimate the quality of the transform.  When you provide label sets as examples of truth, AWS Glue machine learning uses some of those examples to learn from them. The rest of the labels are used as a test to estimate quality. Returns a unique identifier for the run. You can call GetMLTaskRun to get more information about the stats of the EvaluationTaskRun.

Required Parameters
{
  "TransformId": "The unique identifier of the machine learning transform."
}
"""
StartMLEvaluationTaskRun(args) = glue("StartMLEvaluationTaskRun", args)

"""
    GetSecurityConfiguration()

Retrieves a specified security configuration.

Required Parameters
{
  "Name": "The name of the security configuration to retrieve."
}
"""
GetSecurityConfiguration(args) = glue("GetSecurityConfiguration", args)

"""
    GetPartition()

Retrieves information about a specified partition.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the partition resides.",
  "TableName": "The name of the partition's table.",
  "PartitionValues": "The values that define the partition."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the partition in question resides. If none is provided, the AWS account ID is used by default."
}
"""
GetPartition(args) = glue("GetPartition", args)

"""
    CreateCrawler()

Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the s3Targets field, the jdbcTargets field, or the DynamoDBTargets field.

Required Parameters
{
  "Targets": "A list of collection of targets to crawl.",
  "Name": "Name of the new crawler.",
  "Role": "The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new crawler to access customer resources."
}

Optional Parameters
{
  "DatabaseName": "The AWS Glue database where results are written, such as: arn:aws:daylight:us-east-1::database/sometable/*.",
  "SchemaChangePolicy": "The policy for the crawler's update and deletion behavior.",
  "Schedule": "A cron expression used to specify the schedule. For more information, see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, specify cron(15 12 * * ? *).",
  "Configuration": "The crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see Configuring a Crawler.",
  "Tags": "The tags to use with this crawler request. You can use tags to limit access to the crawler. For more information, see AWS Tags in AWS Glue.",
  "CrawlerSecurityConfiguration": "The name of the SecurityConfiguration structure to be used by this crawler.",
  "Description": "A description of the new crawler.",
  "TablePrefix": "The table prefix used for catalog tables that are created.",
  "Classifiers": "A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification."
}
"""
CreateCrawler(args) = glue("CreateCrawler", args)

"""
    GetPlan()

Gets code to perform a specified mapping.

Required Parameters
{
  "Source": "The source table.",
  "Mapping": "The list of mappings from a source table to target tables."
}

Optional Parameters
{
  "Sinks": "The target tables.",
  "Location": "The parameters for the mapping.",
  "Language": "The programming language of the code to perform the mapping."
}
"""
GetPlan(args) = glue("GetPlan", args)

"""
    CreateDevEndpoint()

Creates a new development endpoint.

Required Parameters
{
  "EndpointName": "The name to be assigned to the new DevEndpoint.",
  "RoleArn": "The IAM role for the DevEndpoint."
}

Optional Parameters
{
  "NumberOfWorkers": "The number of workers of a defined workerType that are allocated to the development endpoint. The maximum number of workers you can define are 299 for G.1X, and 149 for G.2X. ",
  "NumberOfNodes": "The number of AWS Glue Data Processing Units (DPUs) to allocate to this DevEndpoint.",
  "SecurityConfiguration": "The name of the SecurityConfiguration structure to be used with this DevEndpoint.",
  "Arguments": "A map of arguments used to configure the DevEndpoint.",
  "Tags": "The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in AWS Glue, see AWS Tags in AWS Glue in the developer guide.",
  "ExtraJarsS3Path": "The path to one or more Java .jar files in an S3 bucket that should be loaded in your DevEndpoint.",
  "GlueVersion": "Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see Glue version in the developer guide. Development endpoints that are created without specifying a Glue version default to Glue 0.9. You can specify a version of Python support for development endpoints by using the Arguments parameter in the CreateDevEndpoint or UpdateDevEndpoint APIs. If no arguments are provided, the version defaults to Python 2.",
  "SecurityGroupIds": "Security group IDs for the security groups to be used by the new DevEndpoint.",
  "SubnetId": "The subnet ID for the new DevEndpoint to use.",
  "PublicKey": "The public key to be used by this DevEndpoint for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.",
  "WorkerType": "The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.   For the Standard worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.   For the G.1X worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.   For the G.2X worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.   Known issue: when a development endpoint is created with the G.2X WorkerType configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. ",
  "PublicKeys": "A list of public keys to be used by the development endpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.  If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys. Call the UpdateDevEndpoint API with the public key content in the deletePublicKeys attribute, and the list of new keys in the addPublicKeys attribute. ",
  "ExtraPythonLibsS3Path": "The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.  You can only use pure Python libraries with a DevEndpoint. Libraries that rely on C extensions, such as the pandas Python data analysis library, are not yet supported. "
}
"""
CreateDevEndpoint(args) = glue("CreateDevEndpoint", args)

"""
    BatchDeleteTableVersion()

Deletes a specified batch of versions of a table.

Required Parameters
{
  "DatabaseName": "The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "TableName": "The name of the table. For Hive compatibility, this name is entirely lowercase.",
  "VersionIds": "A list of the IDs of versions to be deleted. A VersionId is a string representation of an integer. Each version is incremented by 1."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default."
}
"""
BatchDeleteTableVersion(args) = glue("BatchDeleteTableVersion", args)

"""
    UntagResource()

Removes tags from a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource from which to remove the tags.",
  "TagsToRemove": "Tags to remove from this resource."
}
"""
UntagResource(args) = glue("UntagResource", args)

"""
    BatchDeleteConnection()

Deletes a list of connection definitions from the Data Catalog.

Required Parameters
{
  "ConnectionNameList": "A list of names of the connections to delete."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default."
}
"""
BatchDeleteConnection(args) = glue("BatchDeleteConnection", args)

"""
    CreateDatabase()

Creates a new database in a Data Catalog.

Required Parameters
{
  "DatabaseInput": "The metadata for the database."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which to create the database. If none is provided, the AWS account ID is used by default."
}
"""
CreateDatabase(args) = glue("CreateDatabase", args)

"""
    DeleteTableVersion()

Deletes a specified version of a table.

Required Parameters
{
  "DatabaseName": "The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "TableName": "The name of the table. For Hive compatibility, this name is entirely lowercase.",
  "VersionId": "The ID of the table version to be deleted. A VersionID is a string representation of an integer. Each version is incremented by 1."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default."
}
"""
DeleteTableVersion(args) = glue("DeleteTableVersion", args)

"""
    BatchGetWorkflows()

Returns a list of resource metadata for a given list of workflow names. After calling the ListWorkflows operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters
{
  "Names": "A list of workflow names, which may be the names returned from the ListWorkflows operation."
}

Optional Parameters
{
  "IncludeGraph": "Specifies whether to include a graph when returning the workflow resource metadata."
}
"""
BatchGetWorkflows(args) = glue("BatchGetWorkflows", args)

"""
    GetDataflowGraph()

Transforms a Python script into a directed acyclic graph (DAG). 

Optional Parameters
{
  "PythonScript": "The Python script to transform."
}
"""
GetDataflowGraph() = glue("GetDataflowGraph")
GetDataflowGraph(args) = glue("GetDataflowGraph", args)

"""
    CreateConnection()

Creates a connection definition in the Data Catalog.

Required Parameters
{
  "ConnectionInput": "A ConnectionInput object defining the connection to create."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which to create the connection. If none is provided, the AWS account ID is used by default."
}
"""
CreateConnection(args) = glue("CreateConnection", args)

"""
    BatchDeletePartition()

Deletes one or more partitions in a batch operation.

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the table in question resides.",
  "PartitionsToDelete": "A list of PartitionInput structures that define the partitions to be deleted.",
  "TableName": "The name of the table that contains the partitions to be deleted."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the partition to be deleted resides. If none is provided, the AWS account ID is used by default."
}
"""
BatchDeletePartition(args) = glue("BatchDeletePartition", args)

"""
    CreateScript()

Transforms a directed acyclic graph (DAG) into code.

Optional Parameters
{
  "DagEdges": "A list of the edges in the DAG.",
  "DagNodes": "A list of the nodes in the DAG.",
  "Language": "The programming language of the resulting code from the DAG."
}
"""
CreateScript() = glue("CreateScript")
CreateScript(args) = glue("CreateScript", args)

"""
    StartMLLabelingSetGenerationTaskRun()

Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels. When the StartMLLabelingSetGenerationTaskRun finishes, AWS Glue will have generated a "labeling set" or a set of questions for humans to answer. In the case of the FindMatches transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?”  After the labeling process is finished, you can upload your labels with a call to StartImportLabelsTaskRun. After StartImportLabelsTaskRun finishes, all future runs of the machine learning transform will use the new and improved labels and perform a higher-quality transformation.

Required Parameters
{
  "OutputS3Path": "The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling set.",
  "TransformId": "The unique identifier of the machine learning transform."
}
"""
StartMLLabelingSetGenerationTaskRun(args) = glue("StartMLLabelingSetGenerationTaskRun", args)

"""
    DeletePartition()

Deletes a specified partition.

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the table in question resides.",
  "TableName": "The name of the table that contains the partition to be deleted.",
  "PartitionValues": "The values that define the partition."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the partition to be deleted resides. If none is provided, the AWS account ID is used by default."
}
"""
DeletePartition(args) = glue("DeletePartition", args)

"""
    GetMLTaskRun()

Gets details for a specific task run on a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can check the stats of any task run by calling GetMLTaskRun with the TaskRunID and its parent transform's TransformID.

Required Parameters
{
  "TaskRunId": "The unique identifier of the task run.",
  "TransformId": "The unique identifier of the machine learning transform."
}
"""
GetMLTaskRun(args) = glue("GetMLTaskRun", args)

"""
    GetCrawlers()

Retrieves metadata for all crawlers defined in the customer account.

Optional Parameters
{
  "MaxResults": "The number of crawlers to return on each call.",
  "NextToken": "A continuation token, if this is a continuation request."
}
"""
GetCrawlers() = glue("GetCrawlers")
GetCrawlers(args) = glue("GetCrawlers", args)

"""
    GetConnections()

Retrieves a list of connection definitions from the Data Catalog.

Optional Parameters
{
  "MaxResults": "The maximum number of connections to return in one response.",
  "NextToken": "A continuation token, if this is a continuation call.",
  "Filter": "A filter that controls which connections are returned.",
  "HidePassword": "Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.",
  "CatalogId": "The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default."
}
"""
GetConnections() = glue("GetConnections")
GetConnections(args) = glue("GetConnections", args)

"""
    ListDevEndpoints()

Retrieves the names of all DevEndpoint resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "NextToken": "A continuation token, if this is a continuation request.",
  "Tags": "Specifies to return only these tagged resources."
}
"""
ListDevEndpoints() = glue("ListDevEndpoints")
ListDevEndpoints(args) = glue("ListDevEndpoints", args)

"""
    DeleteDevEndpoint()

Deletes a specified development endpoint.

Required Parameters
{
  "EndpointName": "The name of the DevEndpoint."
}
"""
DeleteDevEndpoint(args) = glue("DeleteDevEndpoint", args)

"""
    StartJobRun()

Starts a job run using a job definition.

Required Parameters
{
  "JobName": "The name of the job definition to use."
}

Optional Parameters
{
  "WorkerType": "The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.   For the Standard worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.   For the G.1X worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.   For the G.2X worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.  ",
  "NotificationProperty": "Specifies configuration properties of a job run notification.",
  "NumberOfWorkers": "The number of workers of a defined workerType that are allocated when a job runs. The maximum number of workers you can define are 299 for G.1X, and 149 for G.2X. ",
  "Timeout": "The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters TIMEOUT status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.",
  "JobRunId": "The ID of a previous JobRun to retry.",
  "AllocatedCapacity": "This field is deprecated. Use MaxCapacity instead. The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page.",
  "MaxCapacity": "The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page. Do not set Max Capacity if using WorkerType and NumberOfWorkers. The value that can be allocated for MaxCapacity depends on whether you are running a Python shell job, or an Apache Spark ETL job:   When you specify a Python shell job (JobCommand.Name=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.   When you specify an Apache Spark ETL job (JobCommand.Name=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.  ",
  "SecurityConfiguration": "The name of the SecurityConfiguration structure to be used with this job run.",
  "Arguments": "The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide."
}
"""
StartJobRun(args) = glue("StartJobRun", args)

"""
    BatchDeleteTable()

Deletes multiple tables at once.  After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling BatchDeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the tables to delete reside. For Hive compatibility, this name is entirely lowercase.",
  "TablesToDelete": "A list of the table to delete."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default."
}
"""
BatchDeleteTable(args) = glue("BatchDeleteTable", args)

"""
    GetResourcePolicy()

Retrieves a specified resource policy.
"""
GetResourcePolicy() = glue("GetResourcePolicy")
GetResourcePolicy(args) = glue("GetResourcePolicy", args)

"""
    GetWorkflowRuns()

Retrieves metadata for all runs of a given workflow.

Required Parameters
{
  "Name": "Name of the workflow whose metadata of runs should be returned."
}

Optional Parameters
{
  "MaxResults": "The maximum number of workflow runs to be included in the response.",
  "NextToken": "The maximum size of the response.",
  "IncludeGraph": "Specifies whether to include the workflow graph in response or not."
}
"""
GetWorkflowRuns(args) = glue("GetWorkflowRuns", args)

"""
    ListMLTransforms()

 Retrieves a sortable, filterable list of existing AWS Glue machine learning transforms in this AWS account, or the resources with the specified tag. This operation takes the optional Tags field, which you can use as a filter of the responses so that tagged resources can be retrieved as a group. If you choose to use tag filtering, only resources with the tags are retrieved. 

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "Sort": "A TransformSortCriteria used to sort the machine learning transforms.",
  "NextToken": "A continuation token, if this is a continuation request.",
  "Tags": "Specifies to return only these tagged resources.",
  "Filter": "A TransformFilterCriteria used to filter the machine learning transforms."
}
"""
ListMLTransforms() = glue("ListMLTransforms")
ListMLTransforms(args) = glue("ListMLTransforms", args)

"""
    GetClassifier()

Retrieve a classifier by name.

Required Parameters
{
  "Name": "Name of the classifier to retrieve."
}
"""
GetClassifier(args) = glue("GetClassifier", args)

"""
    GetCatalogImportStatus()

Retrieves the status of a migration operation.

Optional Parameters
{
  "CatalogId": "The ID of the catalog to migrate. Currently, this should be the AWS account ID."
}
"""
GetCatalogImportStatus() = glue("GetCatalogImportStatus")
GetCatalogImportStatus(args) = glue("GetCatalogImportStatus", args)

"""
    DeleteCrawler()

Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is RUNNING.

Required Parameters
{
  "Name": "The name of the crawler to remove."
}
"""
DeleteCrawler(args) = glue("DeleteCrawler", args)

"""
    GetTags()

Retrieves a list of tags associated with a resource.

Required Parameters
{
  "ResourceArn": "The Amazon Resource Name (ARN) of the resource for which to retrieve tags."
}
"""
GetTags(args) = glue("GetTags", args)

"""
    PutResourcePolicy()

Sets the Data Catalog resource policy for access control.

Required Parameters
{
  "PolicyInJson": "Contains the policy document to set, in JSON format."
}

Optional Parameters
{
  "PolicyExistsCondition": "A value of MUST_EXIST is used to update a policy. A value of NOT_EXIST is used to create a new policy. If a value of NONE or a null value is used, the call will not depend on the existence of a policy.",
  "PolicyHashCondition": "The hash value returned when the previous policy was set using PutResourcePolicy. Its purpose is to prevent concurrent modifications of a policy. Do not use this parameter if no previous policy has been set."
}
"""
PutResourcePolicy(args) = glue("PutResourcePolicy", args)

"""
    UpdateDevEndpoint()

Updates a specified development endpoint.

Required Parameters
{
  "EndpointName": "The name of the DevEndpoint to be updated."
}

Optional Parameters
{
  "DeletePublicKeys": "The list of public keys to be deleted from the DevEndpoint.",
  "AddPublicKeys": "The list of public keys for the DevEndpoint to use.",
  "CustomLibraries": "Custom Python or Java libraries to be loaded in the DevEndpoint.",
  "DeleteArguments": "The list of argument keys to be deleted from the map of arguments used to configure the DevEndpoint.",
  "UpdateEtlLibraries": " True if the list of custom libraries to be loaded in the development endpoint needs to be updated, or False if otherwise.",
  "PublicKey": "The public key for the DevEndpoint to use.",
  "AddArguments": "The map of arguments to add the map of arguments used to configure the DevEndpoint. Valid arguments are:    \"--enable-glue-datacatalog\": \"\"     \"GLUE_PYTHON_VERSION\": \"3\"     \"GLUE_PYTHON_VERSION\": \"2\"    You can specify a version of Python support for development endpoints by using the Arguments parameter in the CreateDevEndpoint or UpdateDevEndpoint APIs. If no arguments are provided, the version defaults to Python 2."
}
"""
UpdateDevEndpoint(args) = glue("UpdateDevEndpoint", args)

"""
    UpdateTable()

Updates a metadata table in the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "TableInput": "An updated TableInput object to define the metadata table in the catalog."
}

Optional Parameters
{
  "SkipArchive": "By default, UpdateTable always creates an archived version of the table before updating it. However, if skipArchive is set to true, UpdateTable does not create the archived version.",
  "CatalogId": "The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default."
}
"""
UpdateTable(args) = glue("UpdateTable", args)

"""
    UpdateTrigger()

Updates a trigger definition.

Required Parameters
{
  "TriggerUpdate": "The new values with which to update the trigger.",
  "Name": "The name of the trigger to update."
}
"""
UpdateTrigger(args) = glue("UpdateTrigger", args)

"""
    BatchGetCrawlers()

Returns a list of resource metadata for a given list of crawler names. After calling the ListCrawlers operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.

Required Parameters
{
  "CrawlerNames": "A list of crawler names, which might be the names returned from the ListCrawlers operation."
}
"""
BatchGetCrawlers(args) = glue("BatchGetCrawlers", args)

"""
    StartExportLabelsTaskRun()

Begins an asynchronous task to export all labeled data for a particular transform. This task is the only label-related API call that is not part of the typical active learning workflow. You typically use StartExportLabelsTaskRun when you want to work with all of your existing labels at the same time, such as when you want to remove or change labels that were previously submitted as truth. This API operation accepts the TransformId whose labels you want to export and an Amazon Simple Storage Service (Amazon S3) path to export the labels to. The operation returns a TaskRunId. You can check on the status of your task run by calling the GetMLTaskRun API.

Required Parameters
{
  "OutputS3Path": "The Amazon S3 path where you export the labels.",
  "TransformId": "The unique identifier of the machine learning transform."
}
"""
StartExportLabelsTaskRun(args) = glue("StartExportLabelsTaskRun", args)

"""
    UpdateWorkflow()

Updates an existing workflow.

Required Parameters
{
  "Name": "Name of the workflow to be updated."
}

Optional Parameters
{
  "Description": "The description of the workflow.",
  "DefaultRunProperties": "A collection of properties to be used as part of each execution of the workflow."
}
"""
UpdateWorkflow(args) = glue("UpdateWorkflow", args)

"""
    CreateJob()

Creates a new job definition.

Required Parameters
{
  "Command": "The JobCommand that executes this job.",
  "Name": "The name you assign to this job definition. It must be unique in your account.",
  "Role": "The name or Amazon Resource Name (ARN) of the IAM role associated with this job."
}

Optional Parameters
{
  "DefaultArguments": "The default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide.",
  "NumberOfWorkers": "The number of workers of a defined workerType that are allocated when a job runs. The maximum number of workers you can define are 299 for G.1X, and 149 for G.2X. ",
  "ExecutionProperty": "An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.",
  "SecurityConfiguration": "The name of the SecurityConfiguration structure to be used with this job.",
  "Connections": "The connections used for this job.",
  "NotificationProperty": "Specifies configuration properties of a job notification.",
  "Tags": "The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see AWS Tags in AWS Glue in the developer guide.",
  "GlueVersion": "Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see Glue version in the developer guide. Jobs that are created without specifying a Glue version default to Glue 0.9.",
  "Timeout": "The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters TIMEOUT status. The default is 2,880 minutes (48 hours).",
  "MaxCapacity": "The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page. Do not set Max Capacity if using WorkerType and NumberOfWorkers. The value that can be allocated for MaxCapacity depends on whether you are running a Python shell job or an Apache Spark ETL job:   When you specify a Python shell job (JobCommand.Name=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.   When you specify an Apache Spark ETL job (JobCommand.Name=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.  ",
  "WorkerType": "The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.   For the Standard worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.   For the G.1X worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.   For the G.2X worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.  ",
  "Description": "Description of the job being defined.",
  "NonOverridableArguments": "Non-overridable arguments for this job, specified as name-value pairs.",
  "AllocatedCapacity": "This parameter is deprecated. Use MaxCapacity instead. The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page.",
  "LogUri": "This field is reserved for future use.",
  "MaxRetries": "The maximum number of times to retry this job if it fails."
}
"""
CreateJob(args) = glue("CreateJob", args)

"""
    GetJobRun()

Retrieves the metadata for a given job run.

Required Parameters
{
  "RunId": "The ID of the job run.",
  "JobName": "Name of the job definition being run."
}

Optional Parameters
{
  "PredecessorsIncluded": "True if a list of predecessor runs should be returned."
}
"""
GetJobRun(args) = glue("GetJobRun", args)

"""
    GetTableVersion()

Retrieves a specified version of a table.

Required Parameters
{
  "DatabaseName": "The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "TableName": "The name of the table. For Hive compatibility, this name is entirely lowercase."
}

Optional Parameters
{
  "VersionId": "The ID value of the table version to be retrieved. A VersionID is a string representation of an integer. Each version is incremented by 1. ",
  "CatalogId": "The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default."
}
"""
GetTableVersion(args) = glue("GetTableVersion", args)

"""
    GetUserDefinedFunction()

Retrieves a specified function definition from the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the function is located.",
  "FunctionName": "The name of the function."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the function to be retrieved is located. If none is provided, the AWS account ID is used by default."
}
"""
GetUserDefinedFunction(args) = glue("GetUserDefinedFunction", args)

"""
    GetDevEndpoint()

Retrieves information about a specified development endpoint.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address, and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 

Required Parameters
{
  "EndpointName": "Name of the DevEndpoint to retrieve information for."
}
"""
GetDevEndpoint(args) = glue("GetDevEndpoint", args)

"""
    BatchGetJobs()

Returns a list of resource metadata for a given list of job names. After calling the ListJobs operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags. 

Required Parameters
{
  "JobNames": "A list of job names, which might be the names returned from the ListJobs operation."
}
"""
BatchGetJobs(args) = glue("BatchGetJobs", args)

"""
    GetDevEndpoints()

Retrieves all the development endpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 

Optional Parameters
{
  "MaxResults": "The maximum size of information to return.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetDevEndpoints() = glue("GetDevEndpoints")
GetDevEndpoints(args) = glue("GetDevEndpoints", args)

"""
    CreateTrigger()

Creates a new trigger.

Required Parameters
{
  "Actions": "The actions initiated by this trigger when it fires.",
  "Type": "The type of the new trigger.",
  "Name": "The name of the trigger."
}

Optional Parameters
{
  "Schedule": "A cron expression used to specify the schedule (see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, you would specify: cron(15 12 * * ? *). This field is required when the trigger type is SCHEDULED.",
  "Predicate": "A predicate to specify when the new trigger should fire. This field is required when the trigger type is CONDITIONAL.",
  "Description": "A description of the new trigger.",
  "StartOnCreation": "Set to true to start SCHEDULED and CONDITIONAL triggers when created. True is not supported for ON_DEMAND triggers.",
  "Tags": "The tags to use with this trigger. You may use tags to limit access to the trigger. For more information about tags in AWS Glue, see AWS Tags in AWS Glue in the developer guide. ",
  "WorkflowName": "The name of the workflow associated with the trigger."
}
"""
CreateTrigger(args) = glue("CreateTrigger", args)

"""
    GetPartitions()

Retrieves information about the partitions in a table.

Required Parameters
{
  "DatabaseName": "The name of the catalog database where the partitions reside.",
  "TableName": "The name of the partitions' table."
}

Optional Parameters
{
  "MaxResults": "The maximum number of partitions to return in a single response.",
  "NextToken": "A continuation token, if this is not the first call to retrieve these partitions.",
  "Segment": "The segment of the table's partitions to scan in this request.",
  "CatalogId": "The ID of the Data Catalog where the partitions in question reside. If none is provided, the AWS account ID is used by default.",
  "Expression": "An expression that filters the partitions to be returned. The expression uses SQL syntax similar to the SQL WHERE filter clause. The SQL statement parser JSQLParser parses the expression.   Operators: The following are the operators that you can use in the Expression API call:  =  Checks whether the values of the two operands are equal; if yes, then the condition becomes true. Example: Assume 'variable a' holds 10 and 'variable b' holds 20.  (a = b) is not true.  &lt; &gt;  Checks whether the values of two operands are equal; if the values are not equal, then the condition becomes true. Example: (a &lt; &gt; b) is true.  &gt;  Checks whether the value of the left operand is greater than the value of the right operand; if yes, then the condition becomes true. Example: (a &gt; b) is not true.  &lt;  Checks whether the value of the left operand is less than the value of the right operand; if yes, then the condition becomes true. Example: (a &lt; b) is true.  &gt;=  Checks whether the value of the left operand is greater than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a &gt;= b) is not true.  &lt;=  Checks whether the value of the left operand is less than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a &lt;= b) is true.  AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL  Logical operators.    Supported Partition Key Types: The following are the supported partition keys.    string     date     timestamp     int     bigint     long     tinyint     smallint     decimal    If an invalid type is encountered, an exception is thrown.  The following list shows the valid operators on each type. When you define a crawler, the partitionKey type is created as a STRING, to be compatible with the catalog partitions.   Sample API Call: "
}
"""
GetPartitions(args) = glue("GetPartitions", args)

"""
    UpdateMLTransform()

Updates an existing machine learning transform. Call this operation to tune the algorithm parameters to achieve better results. After calling this operation, you can call the StartMLEvaluationTaskRun operation to assess how well your new parameters achieved your goals (such as improving the quality of your machine learning transform, or making it more cost-effective).

Required Parameters
{
  "TransformId": "A unique identifier that was generated when the transform was created."
}

Optional Parameters
{
  "WorkerType": "The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.   For the Standard worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.   For the G.1X worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.   For the G.2X worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.  ",
  "NumberOfWorkers": "The number of workers of a defined workerType that are allocated when this task runs.",
  "Description": "A description of the transform. The default is an empty string.",
  "Timeout": "The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters TIMEOUT status. The default is 2,880 minutes (48 hours).",
  "MaxCapacity": "The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page.  When the WorkerType field is set to a value other than Standard, the MaxCapacity field is set automatically and becomes read-only.",
  "Parameters": "The configuration parameters that are specific to the transform type (algorithm) used. Conditionally dependent on the transform type.",
  "MaxRetries": "The maximum number of times to retry a task for this transform after a task run fails.",
  "Name": "The unique name that you gave the transform when you created it.",
  "GlueVersion": "This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see AWS Glue Versions in the developer guide.",
  "Role": "The name or Amazon Resource Name (ARN) of the IAM role with the required permissions."
}
"""
UpdateMLTransform(args) = glue("UpdateMLTransform", args)

"""
    DeleteConnection()

Deletes a connection from the Data Catalog.

Required Parameters
{
  "ConnectionName": "The name of the connection to delete."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default."
}
"""
DeleteConnection(args) = glue("DeleteConnection", args)

"""
    BatchStopJobRun()

Stops one or more job runs for a specified job definition.

Required Parameters
{
  "JobRunIds": "A list of the JobRunIds that should be stopped for that job definition.",
  "JobName": "The name of the job definition for which to stop job runs."
}
"""
BatchStopJobRun(args) = glue("BatchStopJobRun", args)

"""
    DeleteClassifier()

Removes a classifier from the Data Catalog.

Required Parameters
{
  "Name": "Name of the classifier to remove."
}
"""
DeleteClassifier(args) = glue("DeleteClassifier", args)

"""
    DeleteMLTransform()

Deletes an AWS Glue machine learning transform. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. If you no longer need a transform, you can delete it by calling DeleteMLTransforms. However, any AWS Glue jobs that still reference the deleted transform will no longer succeed.

Required Parameters
{
  "TransformId": "The unique identifier of the transform to delete."
}
"""
DeleteMLTransform(args) = glue("DeleteMLTransform", args)

"""
    DeleteJob()

Deletes a specified job definition. If the job definition is not found, no exception is thrown.

Required Parameters
{
  "JobName": "The name of the job definition to delete."
}
"""
DeleteJob(args) = glue("DeleteJob", args)

"""
    ListWorkflows()

Lists names of workflows created in the account.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "NextToken": "A continuation token, if this is a continuation request."
}
"""
ListWorkflows() = glue("ListWorkflows")
ListWorkflows(args) = glue("ListWorkflows", args)

"""
    CreateMLTransform()

Creates an AWS Glue machine learning transform. This operation creates the transform and all the necessary parameters to train it. Call this operation as the first step in the process of using a machine learning transform (such as the FindMatches transform) for deduplicating data. You can provide an optional Description, in addition to the parameters that you want to use for your algorithm. You must also specify certain parameters for the tasks that AWS Glue runs on your behalf as part of learning from your data and creating a high-quality machine learning transform. These parameters include Role, and optionally, AllocatedCapacity, Timeout, and MaxRetries. For more information, see Jobs.

Required Parameters
{
  "InputRecordTables": "A list of AWS Glue table definitions used by the transform.",
  "Parameters": "The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type.",
  "Name": "The unique name that you give the transform when you create it.",
  "Role": "The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform.    This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See Attach a Policy to IAM Users That Access AWS Glue.   This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.  "
}

Optional Parameters
{
  "WorkerType": "The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.   For the Standard worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.   For the G.1X worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.   For the G.2X worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.    MaxCapacity is a mutually exclusive option with NumberOfWorkers and WorkerType.   If either NumberOfWorkers or WorkerType is set, then MaxCapacity cannot be set.   If MaxCapacity is set then neither NumberOfWorkers or WorkerType can be set.   If WorkerType is set, then NumberOfWorkers is required (and vice versa).    MaxCapacity and NumberOfWorkers must both be at least 1.  ",
  "NumberOfWorkers": "The number of workers of a defined workerType that are allocated when this task runs. If WorkerType is set, then NumberOfWorkers is required (and vice versa).",
  "Description": "A description of the machine learning transform that is being defined. The default is an empty string.",
  "Tags": "The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in AWS Glue, see AWS Tags in AWS Glue in the developer guide.",
  "Timeout": "The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters TIMEOUT status. The default is 2,880 minutes (48 hours).",
  "MaxCapacity": "The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the AWS Glue pricing page.   MaxCapacity is a mutually exclusive option with NumberOfWorkers and WorkerType.   If either NumberOfWorkers or WorkerType is set, then MaxCapacity cannot be set.   If MaxCapacity is set then neither NumberOfWorkers or WorkerType can be set.   If WorkerType is set, then NumberOfWorkers is required (and vice versa).    MaxCapacity and NumberOfWorkers must both be at least 1.   When the WorkerType field is set to a value other than Standard, the MaxCapacity field is set automatically and becomes read-only. When the WorkerType field is set to a value other than Standard, the MaxCapacity field is set automatically and becomes read-only.",
  "MaxRetries": "The maximum number of times to retry a task for this transform after a task run fails.",
  "GlueVersion": "This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see AWS Glue Versions in the developer guide."
}
"""
CreateMLTransform(args) = glue("CreateMLTransform", args)

"""
    StartImportLabelsTaskRun()

Enables you to provide additional labels (examples of truth) to be used to teach the machine learning transform and improve its quality. This API operation is generally used as part of the active learning workflow that starts with the StartMLLabelingSetGenerationTaskRun call and that ultimately results in improving the quality of your machine learning transform.  After the StartMLLabelingSetGenerationTaskRun finishes, AWS Glue machine learning will have generated a series of questions for humans to answer. (Answering these questions is often called 'labeling' in the machine learning workflows). In the case of the FindMatches transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?” After the labeling process is finished, users upload their answers/labels with a call to StartImportLabelsTaskRun. After StartImportLabelsTaskRun finishes, all future runs of the machine learning transform use the new and improved labels and perform a higher-quality transformation. By default, StartMLLabelingSetGenerationTaskRun continually learns from and combines all labels that you upload unless you set Replace to true. If you set Replace to true, StartImportLabelsTaskRun deletes and forgets all previously uploaded labels and learns only from the exact set that you upload. Replacing labels can be helpful if you realize that you previously uploaded incorrect labels, and you believe that they are having a negative effect on your transform quality. You can check on the status of your task run by calling the GetMLTaskRun operation. 

Required Parameters
{
  "InputS3Path": "The Amazon Simple Storage Service (Amazon S3) path from where you import the labels.",
  "TransformId": "The unique identifier of the machine learning transform."
}

Optional Parameters
{
  "ReplaceAllLabels": "Indicates whether to overwrite your existing labels."
}
"""
StartImportLabelsTaskRun(args) = glue("StartImportLabelsTaskRun", args)

"""
    CreateSecurityConfiguration()

Creates a new security configuration. A security configuration is a set of security properties that can be used by AWS Glue. You can use a security configuration to encrypt data at rest. For information about using security configurations in AWS Glue, see Encrypting Data Written by Crawlers, Jobs, and Development Endpoints.

Required Parameters
{
  "EncryptionConfiguration": "The encryption configuration for the new security configuration.",
  "Name": "The name for the new security configuration."
}
"""
CreateSecurityConfiguration(args) = glue("CreateSecurityConfiguration", args)

"""
    CreateWorkflow()

Creates a new workflow.

Required Parameters
{
  "Name": "The name to be assigned to the workflow. It should be unique within your account."
}

Optional Parameters
{
  "Description": "A description of the workflow.",
  "Tags": "The tags to be used with this workflow.",
  "DefaultRunProperties": "A collection of properties to be used as part of each execution of the workflow."
}
"""
CreateWorkflow(args) = glue("CreateWorkflow", args)

"""
    GetDatabase()

Retrieves the definition of a specified database.

Required Parameters
{
  "Name": "The name of the database to retrieve. For Hive compatibility, this should be all lowercase."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default."
}
"""
GetDatabase(args) = glue("GetDatabase", args)

"""
    DeleteResourcePolicy()

Deletes a specified policy.

Optional Parameters
{
  "PolicyHashCondition": "The hash value returned when this policy was set."
}
"""
DeleteResourcePolicy() = glue("DeleteResourcePolicy")
DeleteResourcePolicy(args) = glue("DeleteResourcePolicy", args)

"""
    DeleteWorkflow()

Deletes a workflow.

Required Parameters
{
  "Name": "Name of the workflow to be deleted."
}
"""
DeleteWorkflow(args) = glue("DeleteWorkflow", args)

"""
    GetJobs()

Retrieves all current job definitions.

Optional Parameters
{
  "MaxResults": "The maximum size of the response.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetJobs() = glue("GetJobs")
GetJobs(args) = glue("GetJobs", args)

"""
    CreateClassifier()

Creates a classifier in the user's account. This can be a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field of the request is present.

Optional Parameters
{
  "JsonClassifier": "A JsonClassifier object specifying the classifier to create.",
  "CsvClassifier": "A CsvClassifier object specifying the classifier to create.",
  "GrokClassifier": "A GrokClassifier object specifying the classifier to create.",
  "XMLClassifier": "An XMLClassifier object specifying the classifier to create."
}
"""
CreateClassifier() = glue("CreateClassifier")
CreateClassifier(args) = glue("CreateClassifier", args)

"""
    DeleteTable()

Removes a table definition from the Data Catalog.  After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these "orphaned" resources asynchronously in a timely manner, at the discretion of the service. To ensure the immediate deletion of all related resources, before calling DeleteTable, use DeleteTableVersion or BatchDeleteTableVersion, and DeletePartition or BatchDeletePartition, to delete any resources that belong to the table. 

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "Name": "The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default."
}
"""
DeleteTable(args) = glue("DeleteTable", args)

"""
    ListCrawlers()

Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "NextToken": "A continuation token, if this is a continuation request.",
  "Tags": "Specifies to return only these tagged resources."
}
"""
ListCrawlers() = glue("ListCrawlers")
ListCrawlers(args) = glue("ListCrawlers", args)

"""
    ResetJobBookmark()

Resets a bookmark entry.

Required Parameters
{
  "JobName": "The name of the job in question."
}

Optional Parameters
{
  "RunId": "The unique run identifier associated with this job run."
}
"""
ResetJobBookmark(args) = glue("ResetJobBookmark", args)

"""
    UpdateCrawlerSchedule()

Updates the schedule of a crawler using a cron expression. 

Required Parameters
{
  "CrawlerName": "The name of the crawler whose schedule to update."
}

Optional Parameters
{
  "Schedule": "The updated cron expression used to specify the schedule. For more information, see Time-Based Schedules for Jobs and Crawlers. For example, to run something every day at 12:15 UTC, specify cron(15 12 * * ? *)."
}
"""
UpdateCrawlerSchedule(args) = glue("UpdateCrawlerSchedule", args)

"""
    StartWorkflowRun()

Starts a new run of the specified workflow.

Required Parameters
{
  "Name": "The name of the workflow to start."
}
"""
StartWorkflowRun(args) = glue("StartWorkflowRun", args)

"""
    GetJob()

Retrieves an existing job definition.

Required Parameters
{
  "JobName": "The name of the job definition to retrieve."
}
"""
GetJob(args) = glue("GetJob", args)

"""
    GetConnection()

Retrieves a connection definition from the Data Catalog.

Required Parameters
{
  "Name": "The name of the connection definition to retrieve."
}

Optional Parameters
{
  "HidePassword": "Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.",
  "CatalogId": "The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default."
}
"""
GetConnection(args) = glue("GetConnection", args)

"""
    GetJobBookmark()

Returns information on a job bookmark entry.

Required Parameters
{
  "JobName": "The name of the job in question."
}

Optional Parameters
{
  "RunId": "The unique run identifier associated with this job run."
}
"""
GetJobBookmark(args) = glue("GetJobBookmark", args)

"""
    GetCrawler()

Retrieves metadata for a specified crawler.

Required Parameters
{
  "Name": "The name of the crawler to retrieve metadata for."
}
"""
GetCrawler(args) = glue("GetCrawler", args)

"""
    ListTriggers()

Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "DependentJobName": " The name of the job for which to retrieve triggers. The trigger that can start this job is returned. If there is no such trigger, all triggers are returned.",
  "NextToken": "A continuation token, if this is a continuation request.",
  "Tags": "Specifies to return only these tagged resources."
}
"""
ListTriggers() = glue("ListTriggers")
ListTriggers(args) = glue("ListTriggers", args)

"""
    GetTriggers()

Gets all the triggers associated with a job.

Optional Parameters
{
  "MaxResults": "The maximum size of the response.",
  "DependentJobName": "The name of the job to retrieve triggers for. The trigger that can start this job is returned, and if there is no such trigger, all triggers are returned.",
  "NextToken": "A continuation token, if this is a continuation call."
}
"""
GetTriggers() = glue("GetTriggers")
GetTriggers(args) = glue("GetTriggers", args)

"""
    DeleteTrigger()

Deletes a specified trigger. If the trigger is not found, no exception is thrown.

Required Parameters
{
  "Name": "The name of the trigger to delete."
}
"""
DeleteTrigger(args) = glue("DeleteTrigger", args)

"""
    GetTable()

Retrieves the Table definition in a Data Catalog for a specified table.

Required Parameters
{
  "DatabaseName": "The name of the database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.",
  "Name": "The name of the table for which to retrieve the definition. For Hive compatibility, this name is entirely lowercase."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default."
}
"""
GetTable(args) = glue("GetTable", args)

"""
    ImportCatalogToGlue()

Imports an existing Amazon Athena Data Catalog to AWS Glue

Optional Parameters
{
  "CatalogId": "The ID of the catalog to import. Currently, this should be the AWS account ID."
}
"""
ImportCatalogToGlue() = glue("ImportCatalogToGlue")
ImportCatalogToGlue(args) = glue("ImportCatalogToGlue", args)

"""
    ListJobs()

Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.

Optional Parameters
{
  "MaxResults": "The maximum size of a list to return.",
  "NextToken": "A continuation token, if this is a continuation request.",
  "Tags": "Specifies to return only these tagged resources."
}
"""
ListJobs() = glue("ListJobs")
ListJobs(args) = glue("ListJobs", args)

"""
    StartTrigger()

Starts an existing trigger. See Triggering Jobs for information about how different types of trigger are started.

Required Parameters
{
  "Name": "The name of the trigger to start."
}
"""
StartTrigger(args) = glue("StartTrigger", args)

"""
    CreatePartition()

Creates a new partition.

Required Parameters
{
  "DatabaseName": "The name of the metadata database in which the partition is to be created.",
  "PartitionInput": "A PartitionInput structure defining the partition to be created.",
  "TableName": "The name of the metadata table in which the partition is to be created."
}

Optional Parameters
{
  "CatalogId": "The AWS account ID of the catalog in which the partition is to be created."
}
"""
CreatePartition(args) = glue("CreatePartition", args)

"""
    CreateUserDefinedFunction()

Creates a new function definition in the Data Catalog.

Required Parameters
{
  "DatabaseName": "The name of the catalog database in which to create the function.",
  "FunctionInput": "A FunctionInput object that defines the function to create in the Data Catalog."
}

Optional Parameters
{
  "CatalogId": "The ID of the Data Catalog in which to create the function. If none is provided, the AWS account ID is used by default."
}
"""
CreateUserDefinedFunction(args) = glue("CreateUserDefinedFunction", args)

"""
    StartCrawler()

Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a CrawlerRunningException.

Required Parameters
{
  "Name": "Name of the crawler to start."
}
"""
StartCrawler(args) = glue("StartCrawler", args)