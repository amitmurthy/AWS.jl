# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: simpledb

using Compat
using UUIDs
"""
    BatchDeleteAttributes()

 Performs multiple DeleteAttributes operations in a single call, which reduces round trips and latencies. This enables Amazon SimpleDB to optimize requests, which generally yields better throughput.    If you specify BatchDeleteAttributes without attributes or values, all the attributes for the item are deleted.   BatchDeleteAttributes is an idempotent operation; running it multiple times on the same item or attribute doesn't result in an error.   The BatchDeleteAttributes operation succeeds or fails in its entirety. There are no partial deletes. You can execute multiple BatchDeleteAttributes operations and other operations in parallel. However, large numbers of concurrent BatchDeleteAttributes calls can result in Service Unavailable (503) responses.   This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method.   This operation does not support conditions using Expected.X.Name, Expected.X.Value, or Expected.X.Exists.    The following limitations are enforced for this operation:  1 MB request size 25 item limit per BatchDeleteAttributes operation  

# Required Parameters
- `DomainName`: The name of the domain in which the attributes are being deleted.
- `Item`: A list of items on which to perform the operation.

# Optional Parameters
- `Items`: A list of items on which to perform the operation.
"""

BatchDeleteAttributes(DomainName, Item; aws_config::AWSConfig=AWS.aws_config) = simpledb("BatchDeleteAttributes", Dict{String, Any}("DomainName"=>DomainName, "Item"=>Item); aws_config=aws_config)
BatchDeleteAttributes(DomainName, Item, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("BatchDeleteAttributes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName, "Item"=>Item), args)); aws_config=aws_config)

"""
    BatchPutAttributes()

 The BatchPutAttributes operation creates or replaces attributes within one or more items. By using this operation, the client can perform multiple PutAttribute operation with a single call. This helps yield savings in round trips and latencies, enabling Amazon SimpleDB to optimize requests and generally produce better throughput.   The client may specify the item name with the Item.X.ItemName parameter. The client may specify new attributes using a combination of the Item.X.Attribute.Y.Name and Item.X.Attribute.Y.Value parameters. The client may specify the first attribute for the first item using the parameters Item.0.Attribute.0.Name and Item.0.Attribute.0.Value, and for the second attribute for the first item by the parameters Item.0.Attribute.1.Name and Item.0.Attribute.1.Value, and so on.   Attributes are uniquely identified within an item by their name/value combination. For example, a single item can have the attributes { \"first_name\", \"first_value\" } and { \"first_name\", \"second_value\" }. However, it cannot have two attribute instances where both the Item.X.Attribute.Y.Name and Item.X.Attribute.Y.Value are the same.   Optionally, the requester can supply the Replace parameter for each individual value. Setting this value to true will cause the new attribute values to replace the existing attribute values. For example, if an item I has the attributes { 'a', '1' }, { 'b', '2'} and { 'b', '3' } and the requester does a BatchPutAttributes of {'I', 'b', '4' } with the Replace parameter set to true, the final attributes of the item will be { 'a', '1' } and { 'b', '4' }, replacing the previous values of the 'b' attribute with the new value.   You cannot specify an empty string as an item or as an attribute name. The BatchPutAttributes operation succeeds or fails in its entirety. There are no partial puts.   This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method. This operation does not support conditions using Expected.X.Name, Expected.X.Value, or Expected.X.Exists.   You can execute multiple BatchPutAttributes operations and other operations in parallel. However, large numbers of concurrent BatchPutAttributes calls can result in Service Unavailable (503) responses.   The following limitations are enforced for this operation:  256 attribute name-value pairs per item 1 MB request size 1 billion attributes per domain 10 GB of total user data storage per domain 25 item limit per BatchPutAttributes operation  

# Required Parameters
- `DomainName`: The name of the domain in which the attributes are being stored.
- `Item`: A list of items on which to perform the operation.

# Optional Parameters
- `Items`: A list of items on which to perform the operation.
"""

BatchPutAttributes(DomainName, Item; aws_config::AWSConfig=AWS.aws_config) = simpledb("BatchPutAttributes", Dict{String, Any}("DomainName"=>DomainName, "Item"=>Item); aws_config=aws_config)
BatchPutAttributes(DomainName, Item, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("BatchPutAttributes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName, "Item"=>Item), args)); aws_config=aws_config)

"""
    CreateDomain()

 The CreateDomain operation creates a new domain. The domain name should be unique among the domains associated with the Access Key ID provided in the request. The CreateDomain operation may take 10 or more seconds to complete.   CreateDomain is an idempotent operation; running it multiple times using the same domain name will not result in an error response.   The client can create up to 100 domains per account.   If the client requires additional domains, go to  http://aws.amazon.com/contact-us/simpledb-limit-request/. 

# Required Parameters
- `DomainName`: The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'.

"""

CreateDomain(DomainName; aws_config::AWSConfig=AWS.aws_config) = simpledb("CreateDomain", Dict{String, Any}("DomainName"=>DomainName); aws_config=aws_config)
CreateDomain(DomainName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("CreateDomain", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName), args)); aws_config=aws_config)

"""
    DeleteAttributes()

 Deletes one or more attributes associated with an item. If all attributes of the item are deleted, the item is deleted.   If DeleteAttributes is called without being passed any attributes or values specified, all the attributes for the item are deleted.   DeleteAttributes is an idempotent operation; running it multiple times on the same item or attribute does not result in an error response.   Because Amazon SimpleDB makes multiple copies of item data and uses an eventual consistency update model, performing a GetAttributes or Select operation (read) immediately after a DeleteAttributes or PutAttributes operation (write) might not return updated item data. 

# Required Parameters
- `DomainName`: The name of the domain in which to perform the operation.
- `ItemName`: The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs.

# Optional Parameters
- `Attributes`: A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items.
- `Expected`: The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted.
"""

DeleteAttributes(DomainName, ItemName; aws_config::AWSConfig=AWS.aws_config) = simpledb("DeleteAttributes", Dict{String, Any}("DomainName"=>DomainName, "ItemName"=>ItemName); aws_config=aws_config)
DeleteAttributes(DomainName, ItemName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("DeleteAttributes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName, "ItemName"=>ItemName), args)); aws_config=aws_config)

"""
    DeleteDomain()

 The DeleteDomain operation deletes a domain. Any items (and their attributes) in the domain are deleted as well. The DeleteDomain operation might take 10 or more seconds to complete.   Running DeleteDomain on a domain that does not exist or running the function multiple times using the same domain name will not result in an error response. 

# Required Parameters
- `DomainName`: The name of the domain to delete.

"""

DeleteDomain(DomainName; aws_config::AWSConfig=AWS.aws_config) = simpledb("DeleteDomain", Dict{String, Any}("DomainName"=>DomainName); aws_config=aws_config)
DeleteDomain(DomainName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("DeleteDomain", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName), args)); aws_config=aws_config)

"""
    DomainMetadata()

 Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values. 

# Required Parameters
- `DomainName`: The name of the domain for which to display the metadata of.

"""

DomainMetadata(DomainName; aws_config::AWSConfig=AWS.aws_config) = simpledb("DomainMetadata", Dict{String, Any}("DomainName"=>DomainName); aws_config=aws_config)
DomainMetadata(DomainName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("DomainMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName), args)); aws_config=aws_config)

"""
    GetAttributes()

 Returns all of the attributes associated with the specified item. Optionally, the attributes returned can be limited to one or more attributes by specifying an attribute name parameter.   If the item does not exist on the replica that was accessed for this operation, an empty set is returned. The system does not return an error as it cannot guarantee the item does not exist on other replicas.   If GetAttributes is called without being passed any attribute names, all the attributes for the item are returned. 

# Required Parameters
- `DomainName`: The name of the domain in which to perform the operation.
- `ItemName`: The name of the item.

# Optional Parameters
- `AttributeNames`: The names of the attributes.
- `ConsistentRead`: Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
"""

GetAttributes(DomainName, ItemName; aws_config::AWSConfig=AWS.aws_config) = simpledb("GetAttributes", Dict{String, Any}("DomainName"=>DomainName, "ItemName"=>ItemName); aws_config=aws_config)
GetAttributes(DomainName, ItemName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("GetAttributes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DomainName"=>DomainName, "ItemName"=>ItemName), args)); aws_config=aws_config)

"""
    ListDomains()

 The ListDomains operation lists all domains associated with the Access Key ID. It returns domain names up to the limit set by MaxNumberOfDomains. A NextToken is returned if there are more than MaxNumberOfDomains domains. Calling ListDomains successive times with the NextToken provided by the operation returns up to MaxNumberOfDomains more domain names with each successive operation call. 

# Optional Parameters
- `MaxNumberOfDomains`: The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100.
- `NextToken`: A string informing Amazon SimpleDB where to start the next list of domain names.
"""

ListDomains(; aws_config::AWSConfig=AWS.aws_config) = simpledb("ListDomains"; aws_config=aws_config)
ListDomains(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("ListDomains", args; aws_config=aws_config)

"""
    PutAttributes()

 The PutAttributes operation creates or replaces attributes in an item. The client may specify new attributes using a combination of the Attribute.X.Name and Attribute.X.Value parameters. The client specifies the first attribute by the parameters Attribute.0.Name and Attribute.0.Value, the second attribute by the parameters Attribute.1.Name and Attribute.1.Value, and so on.   Attributes are uniquely identified in an item by their name/value combination. For example, a single item can have the attributes { \"first_name\", \"first_value\" } and { \"first_name\", second_value\" }. However, it cannot have two attribute instances where both the Attribute.X.Name and Attribute.X.Value are the same.   Optionally, the requestor can supply the Replace parameter for each individual attribute. Setting this value to true causes the new attribute value to replace the existing attribute value(s). For example, if an item has the attributes { 'a', '1' }, { 'b', '2'} and { 'b', '3' } and the requestor calls PutAttributes using the attributes { 'b', '4' } with the Replace parameter set to true, the final attributes of the item are changed to { 'a', '1' } and { 'b', '4' }, which replaces the previous values of the 'b' attribute with the new value.   Using PutAttributes to replace attribute values that do not exist will not result in an error response.   You cannot specify an empty string as an attribute name.   Because Amazon SimpleDB makes multiple copies of client data and uses an eventual consistency update model, an immediate GetAttributes or Select operation (read) immediately after a PutAttributes or DeleteAttributes operation (write) might not return the updated data.   The following limitations are enforced for this operation:  256 total attribute name-value pairs per item One billion attributes per domain 10 GB of total user data storage per domain  

# Required Parameters
- `Attribute`: The list of attributes.
- `DomainName`: The name of the domain in which to perform the operation.
- `ItemName`: The name of the item.

# Optional Parameters
- `Attributes`: The list of attributes.
- `Expected`: The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated.
"""

PutAttributes(Attribute, DomainName, ItemName; aws_config::AWSConfig=AWS.aws_config) = simpledb("PutAttributes", Dict{String, Any}("Attribute"=>Attribute, "DomainName"=>DomainName, "ItemName"=>ItemName); aws_config=aws_config)
PutAttributes(Attribute, DomainName, ItemName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("PutAttributes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Attribute"=>Attribute, "DomainName"=>DomainName, "ItemName"=>ItemName), args)); aws_config=aws_config)

"""
    Select()

 The Select operation returns a set of attributes for ItemNames that match the select expression. Select is similar to the standard SQL SELECT statement.   The total size of the response cannot exceed 1 MB in total size. Amazon SimpleDB automatically adjusts the number of items returned per page to enforce this limit. For example, if the client asks to retrieve 2500 items, but each individual item is 10 kB in size, the system returns 100 items and an appropriate NextToken so the client can access the next page of results.   For information on how to construct select expressions, see Using Select to Create Amazon SimpleDB Queries in the Developer Guide. 

# Required Parameters
- `SelectExpression`: The expression used to query the domain.

# Optional Parameters
- `ConsistentRead`: Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If true, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
- `NextToken`: A string informing Amazon SimpleDB where to start the next list of ItemNames.
"""

Select(SelectExpression; aws_config::AWSConfig=AWS.aws_config) = simpledb("Select", Dict{String, Any}("SelectExpression"=>SelectExpression); aws_config=aws_config)
Select(SelectExpression, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=AWS.aws_config) = simpledb("Select", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("SelectExpression"=>SelectExpression), args)); aws_config=aws_config)
