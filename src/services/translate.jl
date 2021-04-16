# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: translate
using AWS.Compat
using AWS.UUIDs

"""
    create_parallel_data(client_token, name, parallel_data_config)
    create_parallel_data(client_token, name, parallel_data_config, params::Dict{String,<:Any})

Creates a parallel data resource in Amazon Translate by importing an input file from Amazon
S3. Parallel data files contain examples of source phrases and their translations from your
translation memory. By adding parallel data, you can influence the style, tone, and word
choice in your translation output.

# Arguments
- `client_token`: A unique identifier for the request. This token is automatically
  generated when you use Amazon Translate through an AWS SDK.
- `name`: A custom name for the parallel data resource in Amazon Translate. You must assign
  a name that is unique in the account and region.
- `parallel_data_config`: Specifies the format and S3 location of the parallel data input
  file.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A custom description for the parallel data resource in Amazon Translate.
- `"EncryptionKey"`:
"""
create_parallel_data(ClientToken, Name, ParallelDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = translate("CreateParallelData", Dict{String, Any}("ClientToken"=>ClientToken, "Name"=>Name, "ParallelDataConfig"=>ParallelDataConfig); aws_config=aws_config)
create_parallel_data(ClientToken, Name, ParallelDataConfig, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("CreateParallelData", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientToken"=>ClientToken, "Name"=>Name, "ParallelDataConfig"=>ParallelDataConfig), params)); aws_config=aws_config)

"""
    delete_parallel_data(name)
    delete_parallel_data(name, params::Dict{String,<:Any})

Deletes a parallel data resource in Amazon Translate.

# Arguments
- `name`: The name of the parallel data resource that is being deleted.

"""
delete_parallel_data(Name; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DeleteParallelData", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
delete_parallel_data(Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DeleteParallelData", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    delete_terminology(name)
    delete_terminology(name, params::Dict{String,<:Any})

A synchronous action that deletes a custom terminology.

# Arguments
- `name`: The name of the custom terminology being deleted.

"""
delete_terminology(Name; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DeleteTerminology", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
delete_terminology(Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DeleteTerminology", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    describe_text_translation_job(job_id)
    describe_text_translation_job(job_id, params::Dict{String,<:Any})

Gets the properties associated with an asycnhronous batch translation job including name,
ID, status, source and target languages, input/output S3 buckets, and so on.

# Arguments
- `job_id`: The identifier that Amazon Translate generated for the job. The
  StartTextTranslationJob operation returns this identifier in its response.

"""
describe_text_translation_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DescribeTextTranslationJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
describe_text_translation_job(JobId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("DescribeTextTranslationJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    get_parallel_data(name)
    get_parallel_data(name, params::Dict{String,<:Any})

Provides information about a parallel data resource.

# Arguments
- `name`: The name of the parallel data resource that is being retrieved.

"""
get_parallel_data(Name; aws_config::AbstractAWSConfig=global_aws_config()) = translate("GetParallelData", Dict{String, Any}("Name"=>Name); aws_config=aws_config)
get_parallel_data(Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("GetParallelData", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name), params)); aws_config=aws_config)

"""
    get_terminology(name, terminology_data_format)
    get_terminology(name, terminology_data_format, params::Dict{String,<:Any})

Retrieves a custom terminology.

# Arguments
- `name`: The name of the custom terminology being retrieved.
- `terminology_data_format`: The data format of the custom terminology being retrieved,
  either CSV or TMX.

"""
get_terminology(Name, TerminologyDataFormat; aws_config::AbstractAWSConfig=global_aws_config()) = translate("GetTerminology", Dict{String, Any}("Name"=>Name, "TerminologyDataFormat"=>TerminologyDataFormat); aws_config=aws_config)
get_terminology(Name, TerminologyDataFormat, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("GetTerminology", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "TerminologyDataFormat"=>TerminologyDataFormat), params)); aws_config=aws_config)

"""
    import_terminology(merge_strategy, name, terminology_data)
    import_terminology(merge_strategy, name, terminology_data, params::Dict{String,<:Any})

Creates or updates a custom terminology, depending on whether or not one already exists for
the given terminology name. Importing a terminology with the same name as an existing one
will merge the terminologies based on the chosen merge strategy. Currently, the only
supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an
existing terminology of the same name. If you import a terminology that overwrites an
existing one, the new terminology take up to 10 minutes to fully propagate and be available
for use in a translation due to cache policies with the DataPlane service that performs the
translations.

# Arguments
- `merge_strategy`: The merge strategy of the custom terminology being imported. Currently,
  only the OVERWRITE merge strategy is supported. In this case, the imported terminology will
  overwrite an existing terminology of the same name.
- `name`: The name of the custom terminology being imported.
- `terminology_data`: The terminology data for the custom terminology being imported.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: The description of the custom terminology being imported.
- `"EncryptionKey"`: The encryption key for the custom terminology being imported.
"""
import_terminology(MergeStrategy, Name, TerminologyData; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ImportTerminology", Dict{String, Any}("MergeStrategy"=>MergeStrategy, "Name"=>Name, "TerminologyData"=>TerminologyData); aws_config=aws_config)
import_terminology(MergeStrategy, Name, TerminologyData, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ImportTerminology", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("MergeStrategy"=>MergeStrategy, "Name"=>Name, "TerminologyData"=>TerminologyData), params)); aws_config=aws_config)

"""
    list_parallel_data()
    list_parallel_data(params::Dict{String,<:Any})

Provides a list of your parallel data resources in Amazon Translate.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of parallel data resources returned for each request.
- `"NextToken"`: A string that specifies the next page of results to return in a paginated
  response.
"""
list_parallel_data(; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListParallelData"; aws_config=aws_config)
list_parallel_data(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListParallelData", params; aws_config=aws_config)

"""
    list_terminologies()
    list_terminologies(params::Dict{String,<:Any})

Provides a list of custom terminologies associated with your account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of custom terminologies returned per list request.
- `"NextToken"`: If the result of the request to ListTerminologies was truncated, include
  the NextToken to fetch the next group of custom terminologies.
"""
list_terminologies(; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListTerminologies"; aws_config=aws_config)
list_terminologies(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListTerminologies", params; aws_config=aws_config)

"""
    list_text_translation_jobs()
    list_text_translation_jobs(params::Dict{String,<:Any})

Gets a list of the batch translation jobs that you have submitted.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: The parameters that specify which batch translation jobs to retrieve. Filters
  include job name, job status, and submission time. You can only set one filter at a time.
- `"MaxResults"`: The maximum number of results to return in each page. The default value
  is 100.
- `"NextToken"`: The token to request the next page of results.
"""
list_text_translation_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListTextTranslationJobs"; aws_config=aws_config)
list_text_translation_jobs(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("ListTextTranslationJobs", params; aws_config=aws_config)

"""
    start_text_translation_job(client_token, data_access_role_arn, input_data_config, output_data_config, source_language_code, target_language_codes)
    start_text_translation_job(client_token, data_access_role_arn, input_data_config, output_data_config, source_language_code, target_language_codes, params::Dict{String,<:Any})

Starts an asynchronous batch translation job. Batch translation jobs can be used to
translate large volumes of text across multiple documents at once. For more information,
see async. Batch translation jobs can be described with the DescribeTextTranslationJob
operation, listed with the ListTextTranslationJobs operation, and stopped with the
StopTextTranslationJob operation.  Amazon Translate does not support batch translation of
multiple source languages at once.

# Arguments
- `client_token`: A unique identifier for the request. This token is auto-generated when
  using the Amazon Translate SDK.
- `data_access_role_arn`: The Amazon Resource Name (ARN) of an AWS Identity Access and
  Management (IAM) role that grants Amazon Translate read access to your input data. For more
  nformation, see identity-and-access-management.
- `input_data_config`: Specifies the format and S3 location of the input documents for the
  translation job.
- `output_data_config`: Specifies the S3 folder to which your job output will be saved.
- `source_language_code`: The language code of the input language. For a list of language
  codes, see what-is-languages. Amazon Translate does not automatically detect a source
  language during batch translation jobs.
- `target_language_codes`: The language code of the output language.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"JobName"`: The name of the batch translation job to be performed.
- `"ParallelDataNames"`: The names of the parallel data resources to use in the batch
  translation job. For a list of available parallel data resources, use the ListParallelData
  operation.
- `"TerminologyNames"`: The name of the terminology to use in the batch translation job.
  For a list of available terminologies, use the ListTerminologies operation.
"""
start_text_translation_job(ClientToken, DataAccessRoleArn, InputDataConfig, OutputDataConfig, SourceLanguageCode, TargetLanguageCodes; aws_config::AbstractAWSConfig=global_aws_config()) = translate("StartTextTranslationJob", Dict{String, Any}("ClientToken"=>ClientToken, "DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "OutputDataConfig"=>OutputDataConfig, "SourceLanguageCode"=>SourceLanguageCode, "TargetLanguageCodes"=>TargetLanguageCodes); aws_config=aws_config)
start_text_translation_job(ClientToken, DataAccessRoleArn, InputDataConfig, OutputDataConfig, SourceLanguageCode, TargetLanguageCodes, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("StartTextTranslationJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientToken"=>ClientToken, "DataAccessRoleArn"=>DataAccessRoleArn, "InputDataConfig"=>InputDataConfig, "OutputDataConfig"=>OutputDataConfig, "SourceLanguageCode"=>SourceLanguageCode, "TargetLanguageCodes"=>TargetLanguageCodes), params)); aws_config=aws_config)

"""
    stop_text_translation_job(job_id)
    stop_text_translation_job(job_id, params::Dict{String,<:Any})

Stops an asynchronous batch translation job that is in progress. If the job's state is
IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state.
If the job completes before it can be stopped, it is put into the COMPLETED state.
Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are
started with the StartTextTranslationJob operation. You can use the
DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation
job's JobId.

# Arguments
- `job_id`: The job ID of the job to be stopped.

"""
stop_text_translation_job(JobId; aws_config::AbstractAWSConfig=global_aws_config()) = translate("StopTextTranslationJob", Dict{String, Any}("JobId"=>JobId); aws_config=aws_config)
stop_text_translation_job(JobId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("StopTextTranslationJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("JobId"=>JobId), params)); aws_config=aws_config)

"""
    translate_text(source_language_code, target_language_code, text)
    translate_text(source_language_code, target_language_code, text, params::Dict{String,<:Any})

Translates input text from the source language to the target language. For a list of
available languages and language codes, see what-is-languages.

# Arguments
- `source_language_code`: The language code for the language of the source text. The
  language must be a language supported by Amazon Translate. For a list of language codes,
  see what-is-languages. To have Amazon Translate determine the source language of your text,
  you can specify auto in the SourceLanguageCode field. If you specify auto, Amazon Translate
  will call Amazon Comprehend to determine the source language.
- `target_language_code`: The language code requested for the language of the target text.
  The language must be a language supported by Amazon Translate.
- `text`: The text to translate. The text string can be a maximum of 5,000 bytes long.
  Depending on your character set, this may be fewer than 5,000 characters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"TerminologyNames"`: The name of the terminology list file to be used in the
  TranslateText request. You can use 1 terminology list at most in a TranslateText request.
  Terminology lists can contain a maximum of 256 terms.
"""
translate_text(SourceLanguageCode, TargetLanguageCode, Text; aws_config::AbstractAWSConfig=global_aws_config()) = translate("TranslateText", Dict{String, Any}("SourceLanguageCode"=>SourceLanguageCode, "TargetLanguageCode"=>TargetLanguageCode, "Text"=>Text); aws_config=aws_config)
translate_text(SourceLanguageCode, TargetLanguageCode, Text, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("TranslateText", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("SourceLanguageCode"=>SourceLanguageCode, "TargetLanguageCode"=>TargetLanguageCode, "Text"=>Text), params)); aws_config=aws_config)

"""
    update_parallel_data(client_token, name, parallel_data_config)
    update_parallel_data(client_token, name, parallel_data_config, params::Dict{String,<:Any})

Updates a previously created parallel data resource by importing a new input file from
Amazon S3.

# Arguments
- `client_token`: A unique identifier for the request. This token is automatically
  generated when you use Amazon Translate through an AWS SDK.
- `name`: The name of the parallel data resource being updated.
- `parallel_data_config`: Specifies the format and S3 location of the parallel data input
  file.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A custom description for the parallel data resource in Amazon Translate.
"""
update_parallel_data(ClientToken, Name, ParallelDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = translate("UpdateParallelData", Dict{String, Any}("ClientToken"=>ClientToken, "Name"=>Name, "ParallelDataConfig"=>ParallelDataConfig); aws_config=aws_config)
update_parallel_data(ClientToken, Name, ParallelDataConfig, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = translate("UpdateParallelData", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientToken"=>ClientToken, "Name"=>Name, "ParallelDataConfig"=>ParallelDataConfig), params)); aws_config=aws_config)
