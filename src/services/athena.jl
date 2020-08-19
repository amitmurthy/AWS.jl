# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: athena

using Compat
using UUIDs
"""
    BatchGetNamedQuery()

Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use ListNamedQueriesInput to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under UnprocessedNamedQueryId. Named queries differ from executed queries. Use BatchGetQueryExecutionInput to get details about each unique query execution, and ListQueryExecutionsInput to get a list of query execution IDs.

# Required Parameters
- `NamedQueryIds`: An array of query IDs.

"""

BatchGetNamedQuery(NamedQueryIds; aws_config::AWSConfig=AWS.aws_config) = athena("BatchGetNamedQuery", Dict{String, Any}("NamedQueryIds"=>NamedQueryIds); aws_config=aws_config)
BatchGetNamedQuery(NamedQueryIds, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("BatchGetNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryIds"=>NamedQueryIds), args)); aws_config=aws_config)

"""
    BatchGetQueryExecution()

Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use ListQueryExecutionsInput WorkGroup. Query executions differ from named (saved) queries. Use BatchGetNamedQueryInput to get details about named queries.

# Required Parameters
- `QueryExecutionIds`: An array of query execution IDs.

"""

BatchGetQueryExecution(QueryExecutionIds; aws_config::AWSConfig=AWS.aws_config) = athena("BatchGetQueryExecution", Dict{String, Any}("QueryExecutionIds"=>QueryExecutionIds); aws_config=aws_config)
BatchGetQueryExecution(QueryExecutionIds, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("BatchGetQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionIds"=>QueryExecutionIds), args)); aws_config=aws_config)

"""
    CreateDataCatalog()

Creates (registers) a data catalog with the specified name and properties. Catalogs created are visible to all users of the same AWS account.

# Required Parameters
- `Name`: The name of the data catalog to create. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
- `Type`: The type of data catalog to create: LAMBDA for a federated catalog, GLUE for AWS Glue Catalog, or HIVE for an external hive metastore.

# Optional Parameters
- `Description`: A description of the data catalog to be created.
- `Parameters`: Specifies the Lambda function or functions to use for creating the data catalog. This is a mapping whose values depend on the catalog type.    For the HIVE data catalog type, use the following syntax. The metadata-function parameter is required. The sdk-version parameter is optional and defaults to the currently supported version.  metadata-function=lambda_arn, sdk-version=version_number     For the LAMBDA data catalog type, use one of the following sets of required parameters, but not both.   If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required.  metadata-function=lambda_arn, record-function=lambda_arn      If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function.  function=lambda_arn       The GLUE type has no parameters.  
- `Tags`: A list of comma separated tags to add to the data catalog that is created.
"""

CreateDataCatalog(Name, Type; aws_config::AWSConfig=AWS.aws_config) = athena("CreateDataCatalog", Dict{String, Any}("Name"=>Name, "Type"=>Type); aws_config=aws_config)
CreateDataCatalog(Name, Type, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("CreateDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Type"=>Type), args)); aws_config=aws_config)

"""
    CreateNamedQuery()

Creates a named query in the specified workgroup. Requires that you have access to the workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Required Parameters
- `Database`: The database to which the query belongs.
- `Name`: The query name.
- `QueryString`: The contents of the query with all query statements.

# Optional Parameters
- `ClientRequestToken`: A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another CreateNamedQuery request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the QueryString, an error is returned.  This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail. 
- `Description`: The query description.
- `WorkGroup`: The name of the workgroup in which the named query is being created.
"""

CreateNamedQuery(Database, Name, QueryString; aws_config::AWSConfig=AWS.aws_config) = athena("CreateNamedQuery", Dict{String, Any}("Database"=>Database, "Name"=>Name, "QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
CreateNamedQuery(Database, Name, QueryString, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("CreateNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Database"=>Database, "Name"=>Name, "QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    CreateWorkGroup()

Creates a workgroup with the specified name.

# Required Parameters
- `Name`: The workgroup name.

# Optional Parameters
- `Configuration`: The configuration for the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption configuration, if any, used for encrypting query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the limit for the amount of bytes scanned (cutoff) per query, if it is specified, and whether workgroup's settings (specified with EnforceWorkGroupConfiguration) in the WorkGroupConfiguration override client-side settings. See WorkGroupConfiguration EnforceWorkGroupConfiguration.
- `Description`: The workgroup description.
- `Tags`: A list of comma separated tags to add to the workgroup that is created.
"""

CreateWorkGroup(Name; aws_config::AWSConfig=AWS.aws_config) = athena("CreateWorkGroup", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
CreateWorkGroup(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("CreateWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), args)); aws_config=aws_config)

"""
    DeleteDataCatalog()

Deletes a data catalog.

# Required Parameters
- `Name`: The name of the data catalog to delete.

"""

DeleteDataCatalog(Name; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteDataCatalog", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
DeleteDataCatalog(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), args)); aws_config=aws_config)

"""
    DeleteNamedQuery()

Deletes the named query if you have access to the workgroup in which the query was saved. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Required Parameters
- `NamedQueryId`: The unique ID of the query to delete.

"""

DeleteNamedQuery(NamedQueryId; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteNamedQuery", Dict{String, Any}("NamedQueryId"=>NamedQueryId); aws_config=aws_config)
DeleteNamedQuery(NamedQueryId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryId"=>NamedQueryId), args)); aws_config=aws_config)

"""
    DeleteWorkGroup()

Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.

# Required Parameters
- `WorkGroup`: The unique name of the workgroup to delete.

# Optional Parameters
- `RecursiveDeleteOption`: The option to delete the workgroup and its contents even if the workgroup contains any named queries.
"""

DeleteWorkGroup(WorkGroup; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
DeleteWorkGroup(WorkGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("DeleteWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), args)); aws_config=aws_config)

"""
    GetDataCatalog()

Returns the specified data catalog.

# Required Parameters
- `Name`: The name of the data catalog to return.

"""

GetDataCatalog(Name; aws_config::AWSConfig=AWS.aws_config) = athena("GetDataCatalog", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
GetDataCatalog(Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), args)); aws_config=aws_config)

"""
    GetDatabase()

Returns a database object for the specfied database and data catalog.

# Required Parameters
- `CatalogName`: The name of the data catalog that contains the database to return.
- `DatabaseName`: The name of the database to return.

"""

GetDatabase(CatalogName, DatabaseName; aws_config::AWSConfig=AWS.aws_config) = athena("GetDatabase", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName); aws_config=aws_config)
GetDatabase(CatalogName, DatabaseName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetDatabase", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName), args)); aws_config=aws_config)

"""
    GetNamedQuery()

Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.

# Required Parameters
- `NamedQueryId`: The unique ID of the query. Use ListNamedQueries to get query IDs.

"""

GetNamedQuery(NamedQueryId; aws_config::AWSConfig=AWS.aws_config) = athena("GetNamedQuery", Dict{String, Any}("NamedQueryId"=>NamedQueryId); aws_config=aws_config)
GetNamedQuery(NamedQueryId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetNamedQuery", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("NamedQueryId"=>NamedQueryId), args)); aws_config=aws_config)

"""
    GetQueryExecution()

Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.

# Required Parameters
- `QueryExecutionId`: The unique ID of the query execution.

"""

GetQueryExecution(QueryExecutionId; aws_config::AWSConfig=AWS.aws_config) = athena("GetQueryExecution", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
GetQueryExecution(QueryExecutionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), args)); aws_config=aws_config)

"""
    GetQueryResults()

Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied. 

# Required Parameters
- `QueryExecutionId`: The unique ID of the query execution.

# Optional Parameters
- `MaxResults`: The maximum number of results (rows) to return in this request.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
"""

GetQueryResults(QueryExecutionId; aws_config::AWSConfig=AWS.aws_config) = athena("GetQueryResults", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
GetQueryResults(QueryExecutionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetQueryResults", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), args)); aws_config=aws_config)

"""
    GetTableMetadata()

Returns table metadata for the specified catalog, database, and table.

# Required Parameters
- `CatalogName`: The name of the data catalog that contains the database and table metadata to return.
- `DatabaseName`: The name of the database that contains the table metadata to return.
- `TableName`: The name of the table for which metadata is returned.

"""

GetTableMetadata(CatalogName, DatabaseName, TableName; aws_config::AWSConfig=AWS.aws_config) = athena("GetTableMetadata", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName, "TableName"=>TableName); aws_config=aws_config)
GetTableMetadata(CatalogName, DatabaseName, TableName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetTableMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName, "TableName"=>TableName), args)); aws_config=aws_config)

"""
    GetWorkGroup()

Returns information about the workgroup with the specified name.

# Required Parameters
- `WorkGroup`: The name of the workgroup.

"""

GetWorkGroup(WorkGroup; aws_config::AWSConfig=AWS.aws_config) = athena("GetWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
GetWorkGroup(WorkGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("GetWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), args)); aws_config=aws_config)

"""
    ListDataCatalogs()

Lists the data catalogs in the current AWS account.

# Optional Parameters
- `MaxResults`: Specifies the maximum number of data catalogs to return.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
"""

ListDataCatalogs(; aws_config::AWSConfig=AWS.aws_config) = athena("ListDataCatalogs"; aws_config=aws_config)
ListDataCatalogs(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListDataCatalogs", args; aws_config=aws_config)

"""
    ListDatabases()

Lists the databases in the specified data catalog.

# Required Parameters
- `CatalogName`: The name of the data catalog that contains the databases to return.

# Optional Parameters
- `MaxResults`: Specifies the maximum number of results to return.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
"""

ListDatabases(CatalogName; aws_config::AWSConfig=AWS.aws_config) = athena("ListDatabases", Dict{String, Any}("CatalogName"=>CatalogName); aws_config=aws_config)
ListDatabases(CatalogName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListDatabases", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName), args)); aws_config=aws_config)

"""
    ListNamedQueries()

Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Optional Parameters
- `MaxResults`: The maximum number of queries to return in this request.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
- `WorkGroup`: The name of the workgroup from which the named queries are being returned. If a workgroup is not specified, the saved queries for the primary workgroup are returned.
"""

ListNamedQueries(; aws_config::AWSConfig=AWS.aws_config) = athena("ListNamedQueries"; aws_config=aws_config)
ListNamedQueries(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListNamedQueries", args; aws_config=aws_config)

"""
    ListQueryExecutions()

Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Optional Parameters
- `MaxResults`: The maximum number of query executions to return in this request.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
- `WorkGroup`: The name of the workgroup from which queries are being returned. If a workgroup is not specified, a list of available query execution IDs for the queries in the primary workgroup is returned.
"""

ListQueryExecutions(; aws_config::AWSConfig=AWS.aws_config) = athena("ListQueryExecutions"; aws_config=aws_config)
ListQueryExecutions(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListQueryExecutions", args; aws_config=aws_config)

"""
    ListTableMetadata()

Lists the metadata for the tables in the specified data catalog database.

# Required Parameters
- `CatalogName`: The name of the data catalog for which table metadata should be returned.
- `DatabaseName`: The name of the database for which table metadata should be returned.

# Optional Parameters
- `Expression`: A regex filter that pattern-matches table names. If no expression is supplied, metadata for all tables are listed.
- `MaxResults`: Specifies the maximum number of results to return.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
"""

ListTableMetadata(CatalogName, DatabaseName; aws_config::AWSConfig=AWS.aws_config) = athena("ListTableMetadata", Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName); aws_config=aws_config)
ListTableMetadata(CatalogName, DatabaseName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListTableMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CatalogName"=>CatalogName, "DatabaseName"=>DatabaseName), args)); aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags associated with an Athena workgroup or data catalog resource.

# Required Parameters
- `ResourceARN`: Lists the tags for the resource with the specified ARN.

# Optional Parameters
- `MaxResults`: The maximum number of results to be returned per request that lists the tags for the resource.
- `NextToken`: The token for the next set of results, or null if there are no additional results for this request, where the request lists the tags for the resource with the specified ARN.
"""

ListTagsForResource(ResourceARN; aws_config::AWSConfig=AWS.aws_config) = athena("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
ListTagsForResource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    ListWorkGroups()

Lists available workgroups for the account.

# Optional Parameters
- `MaxResults`: The maximum number of workgroups to return in this request.
- `NextToken`: A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
"""

ListWorkGroups(; aws_config::AWSConfig=AWS.aws_config) = athena("ListWorkGroups"; aws_config=aws_config)
ListWorkGroups(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("ListWorkGroups", args; aws_config=aws_config)

"""
    StartQueryExecution()

Runs the SQL query statements contained in the Query. Requires you to have access to the workgroup in which the query ran. Running queries against an external catalog requires GetDataCatalog permission to the catalog. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Required Parameters
- `QueryString`: The SQL query statements to be executed.

# Optional Parameters
- `ClientRequestToken`: A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another StartQueryExecution request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the QueryString, an error is returned.  This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail. 
- `QueryExecutionContext`: The database within which the query executes.
- `ResultConfiguration`: Specifies information about where and how to save the results of the query execution. If the query runs in a workgroup, then workgroup's settings may override query settings. This affects the query results location. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See WorkGroupConfiguration EnforceWorkGroupConfiguration.
- `WorkGroup`: The name of the workgroup in which the query is being started.
"""

StartQueryExecution(QueryString; aws_config::AWSConfig=AWS.aws_config) = athena("StartQueryExecution", Dict{String, Any}("QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())); aws_config=aws_config)
StartQueryExecution(QueryString, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("StartQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryString"=>QueryString, "ClientRequestToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    StopQueryExecution()

Stops a query execution. Requires you to have access to the workgroup in which the query ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.

# Required Parameters
- `QueryExecutionId`: The unique ID of the query execution to stop.

"""

StopQueryExecution(QueryExecutionId; aws_config::AWSConfig=AWS.aws_config) = athena("StopQueryExecution", Dict{String, Any}("QueryExecutionId"=>QueryExecutionId); aws_config=aws_config)
StopQueryExecution(QueryExecutionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("StopQueryExecution", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QueryExecutionId"=>QueryExecutionId), args)); aws_config=aws_config)

"""
    TagResource()

Adds one or more tags to an Athena resource. A tag is a label that you assign to a resource. In Athena, a resource can be a workgroup or data catalog. Each tag consists of a key and an optional value, both of which you define. For example, you can use tags to categorize Athena workgroups or data catalogs by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups or data catalogs in your account. For best practices, see Tagging Best Practices. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one tag, separate them by commas.

# Required Parameters
- `ResourceARN`: Specifies the ARN of the Athena resource (workgroup or data catalog) to which tags are to be added.
- `Tags`: A collection of one or more tags, separated by commas, to be added to an Athena workgroup or data catalog resource.

"""

TagResource(ResourceARN, Tags; aws_config::AWSConfig=AWS.aws_config) = athena("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
TagResource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes one or more tags from a data catalog or workgroup resource.

# Required Parameters
- `ResourceARN`: Specifies the ARN of the resource from which tags are to be removed.
- `TagKeys`: A comma-separated list of one or more tag keys whose tags are to be removed from the specified resource.

"""

UntagResource(ResourceARN, TagKeys; aws_config::AWSConfig=AWS.aws_config) = athena("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
UntagResource(ResourceARN, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdateDataCatalog()

Updates the data catalog that has the specified name.

# Required Parameters
- `Name`: The name of the data catalog to update. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
- `Type`: Specifies the type of data catalog to update. Specify LAMBDA for a federated catalog, GLUE for AWS Glue Catalog, or HIVE for an external hive metastore.

# Optional Parameters
- `Description`: New or modified text that describes the data catalog.
- `Parameters`: Specifies the Lambda function or functions to use for updating the data catalog. This is a mapping whose values depend on the catalog type.    For the HIVE data catalog type, use the following syntax. The metadata-function parameter is required. The sdk-version parameter is optional and defaults to the currently supported version.  metadata-function=lambda_arn, sdk-version=version_number     For the LAMBDA data catalog type, use one of the following sets of required parameters, but not both.   If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required.  metadata-function=lambda_arn, record-function=lambda_arn      If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function.  function=lambda_arn       The GLUE type has no parameters.  
"""

UpdateDataCatalog(Name, Type; aws_config::AWSConfig=AWS.aws_config) = athena("UpdateDataCatalog", Dict{String, Any}("Name"=>Name, "Type"=>Type); aws_config=aws_config)
UpdateDataCatalog(Name, Type, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("UpdateDataCatalog", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Type"=>Type), args)); aws_config=aws_config)

"""
    UpdateWorkGroup()

Updates the workgroup with the specified name. The workgroup's name cannot be changed.

# Required Parameters
- `WorkGroup`: The specified workgroup that will be updated.

# Optional Parameters
- `ConfigurationUpdates`: The workgroup configuration that will be updated for the given workgroup.
- `Description`: The workgroup description.
- `State`: The workgroup state that will be updated for the given workgroup.
"""

UpdateWorkGroup(WorkGroup; aws_config::AWSConfig=AWS.aws_config) = athena("UpdateWorkGroup", Dict{String, Any}("WorkGroup"=>WorkGroup); aws_config=aws_config)
UpdateWorkGroup(WorkGroup, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = athena("UpdateWorkGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("WorkGroup"=>WorkGroup), args)); aws_config=aws_config)
