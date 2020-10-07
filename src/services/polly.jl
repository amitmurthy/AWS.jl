# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: polly
using AWS.Compat
using AWS.UUIDs

"""
    DeleteLexicon()

Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the GetLexicon or ListLexicon APIs. For more information, see Managing Lexicons.

# Required Parameters
- `LexiconName`: The name of the lexicon to delete. Must be an existing lexicon in the region.

"""
<<<<<<< HEAD
delete_lexicon(LexiconName; aws_config::AWSConfig=global_aws_config()) = polly("DELETE", "/v1/lexicons/$(LexiconName)"; aws_config=aws_config)
delete_lexicon(LexiconName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("DELETE", "/v1/lexicons/$(LexiconName)", args; aws_config=aws_config)
=======

delete_lexicon(LexiconName; aws_config::AbstractAWSConfig=global_aws_config()) = polly("DELETE", "/v1/lexicons/$(LexiconName)"; aws_config=aws_config)
delete_lexicon(LexiconName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("DELETE", "/v1/lexicons/$(LexiconName)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    DescribeVoices()

Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.  When synthesizing speech ( SynthesizeSpeech ), you provide the voice ID for the voice you want from the list of voices returned by DescribeVoices. For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the DescribeVoices operation you can provide the user with a list of available voices to select from.  You can optionally specify a language code to filter the available voices. For example, if you specify en-US, the operation returns a list of all available US English voices.  This operation requires permissions to perform the polly:DescribeVoices action.

# Optional Parameters
- `Engine`: Specifies the engine (standard or neural) used by Amazon Polly when processing input text for speech synthesis. 
- `IncludeAdditionalLanguageCodes`: Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify yes but not if you specify no.
- `LanguageCode`:  The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. 
- `NextToken`: An opaque pagination token returned from the previous DescribeVoices operation. If present, this indicates where to continue the listing.
"""
<<<<<<< HEAD
describe_voices(; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/voices"; aws_config=aws_config)
describe_voices(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/voices", args; aws_config=aws_config)
=======

describe_voices(; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/voices"; aws_config=aws_config)
describe_voices(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/voices", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetLexicon()

Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see Managing Lexicons.

# Required Parameters
- `LexiconName`: Name of the lexicon.

"""
<<<<<<< HEAD
get_lexicon(LexiconName; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons/$(LexiconName)"; aws_config=aws_config)
get_lexicon(LexiconName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons/$(LexiconName)", args; aws_config=aws_config)
=======

get_lexicon(LexiconName; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons/$(LexiconName)"; aws_config=aws_config)
get_lexicon(LexiconName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons/$(LexiconName)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    GetSpeechSynthesisTask()

Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.

# Required Parameters
- `TaskId`: The Amazon Polly generated identifier for a speech synthesis task.

"""
<<<<<<< HEAD
get_speech_synthesis_task(TaskId; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks/$(TaskId)"; aws_config=aws_config)
get_speech_synthesis_task(TaskId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks/$(TaskId)", args; aws_config=aws_config)
=======

get_speech_synthesis_task(TaskId; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks/$(TaskId)"; aws_config=aws_config)
get_speech_synthesis_task(TaskId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks/$(TaskId)", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListLexicons()

Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see Managing Lexicons.

# Optional Parameters
- `NextToken`: An opaque pagination token returned from previous ListLexicons operation. If present, indicates where to continue the list of lexicons.
"""
<<<<<<< HEAD
list_lexicons(; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons"; aws_config=aws_config)
list_lexicons(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons", args; aws_config=aws_config)
=======

list_lexicons(; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons"; aws_config=aws_config)
list_lexicons(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/lexicons", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    ListSpeechSynthesisTasks()

Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.

# Optional Parameters
- `MaxResults`: Maximum number of speech synthesis tasks returned in a List operation.
- `NextToken`: The pagination token to use in the next request to continue the listing of speech synthesis tasks. 
- `Status`: Status of the speech synthesis tasks returned in a List operation
"""
<<<<<<< HEAD
list_speech_synthesis_tasks(; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks"; aws_config=aws_config)
list_speech_synthesis_tasks(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks", args; aws_config=aws_config)
=======

list_speech_synthesis_tasks(; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks"; aws_config=aws_config)
list_speech_synthesis_tasks(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("GET", "/v1/synthesisTasks", args; aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    PutLexicon()

Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation. For more information, see Managing Lexicons.

# Required Parameters
- `Content`: Content of the PLS lexicon as string data.
- `LexiconName`: Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. 

"""
<<<<<<< HEAD
put_lexicon(Content, LexiconName; aws_config::AWSConfig=global_aws_config()) = polly("PUT", "/v1/lexicons/$(LexiconName)", Dict{String, Any}("Content"=>Content); aws_config=aws_config)
put_lexicon(Content, LexiconName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("PUT", "/v1/lexicons/$(LexiconName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Content"=>Content), args)); aws_config=aws_config)
=======

put_lexicon(Content, LexiconName; aws_config::AbstractAWSConfig=global_aws_config()) = polly("PUT", "/v1/lexicons/$(LexiconName)", Dict{String, Any}("Content"=>Content); aws_config=aws_config)
put_lexicon(Content, LexiconName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("PUT", "/v1/lexicons/$(LexiconName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Content"=>Content), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    StartSpeechSynthesisTask()

Allows the creation of an asynchronous synthesis task, by starting a new SpeechSynthesisTask. This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.

# Required Parameters
- `OutputFormat`: The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
- `OutputS3BucketName`: Amazon S3 bucket name to which the output file will be saved.
- `Text`: The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
- `VoiceId`: Voice ID to use for the synthesis. 

# Optional Parameters
- `Engine`: Specifies the engine (standard or neural) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
- `LanguageCode`: Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
- `LexiconNames`: List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. 
- `OutputS3KeyPrefix`: The Amazon S3 key prefix for the output speech file.
- `SampleRate`: The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The default value for standard voices is \"22050\". The default value for neural voices is \"24000\". Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". 
- `SnsTopicArn`: ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
- `SpeechMarkTypes`: The type of speech marks returned for the input text.
- `TextType`: Specifies whether the input text is plain text or SSML. The default value is plain text. 
"""
<<<<<<< HEAD
start_speech_synthesis_task(OutputFormat, OutputS3BucketName, Text, VoiceId; aws_config::AWSConfig=global_aws_config()) = polly("POST", "/v1/synthesisTasks", Dict{String, Any}("OutputFormat"=>OutputFormat, "OutputS3BucketName"=>OutputS3BucketName, "Text"=>Text, "VoiceId"=>VoiceId); aws_config=aws_config)
start_speech_synthesis_task(OutputFormat, OutputS3BucketName, Text, VoiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("POST", "/v1/synthesisTasks", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OutputFormat"=>OutputFormat, "OutputS3BucketName"=>OutputS3BucketName, "Text"=>Text, "VoiceId"=>VoiceId), args)); aws_config=aws_config)
=======

start_speech_synthesis_task(OutputFormat, OutputS3BucketName, Text, VoiceId; aws_config::AbstractAWSConfig=global_aws_config()) = polly("POST", "/v1/synthesisTasks", Dict{String, Any}("OutputFormat"=>OutputFormat, "OutputS3BucketName"=>OutputS3BucketName, "Text"=>Text, "VoiceId"=>VoiceId); aws_config=aws_config)
start_speech_synthesis_task(OutputFormat, OutputS3BucketName, Text, VoiceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("POST", "/v1/synthesisTasks", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OutputFormat"=>OutputFormat, "OutputS3BucketName"=>OutputS3BucketName, "Text"=>Text, "VoiceId"=>VoiceId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype

"""
    SynthesizeSpeech()

Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see How it Works.

# Required Parameters
- `OutputFormat`:  The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
- `Text`:  Input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
- `VoiceId`:  Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the DescribeVoices operation. 

# Optional Parameters
- `Engine`: Specifies the engine (standard or neural) for Amazon Polly to use when processing input text for speech synthesis. For information on Amazon Polly voices and which voices are available in standard-only, NTTS-only, and both standard and NTTS formats, see Available Voices.  NTTS-only voices  When using NTTS-only voices such as Kevin (en-US), this parameter is required and must be set to neural. If the engine is not specified, or is set to standard, this will result in an error.  Type: String Valid Values: standard | neural  Required: Yes  Standard voices  For standard voices, this is not required; the engine parameter defaults to standard. If the engine is not specified, or is set to standard and an NTTS-only voice is selected, this will result in an error. 
- `LanguageCode`: Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
- `LexiconNames`: List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon.
- `SampleRate`: The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The default value for standard voices is \"22050\". The default value for neural voices is \"24000\". Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". 
- `SpeechMarkTypes`: The type of speech marks returned for the input text.
- `TextType`:  Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see Using SSML.
"""
<<<<<<< HEAD
synthesize_speech(OutputFormat, Text, VoiceId; aws_config::AWSConfig=global_aws_config()) = polly("POST", "/v1/speech", Dict{String, Any}("OutputFormat"=>OutputFormat, "Text"=>Text, "VoiceId"=>VoiceId); aws_config=aws_config)
synthesize_speech(OutputFormat, Text, VoiceId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = polly("POST", "/v1/speech", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OutputFormat"=>OutputFormat, "Text"=>Text, "VoiceId"=>VoiceId), args)); aws_config=aws_config)
=======

synthesize_speech(OutputFormat, Text, VoiceId; aws_config::AbstractAWSConfig=global_aws_config()) = polly("POST", "/v1/speech", Dict{String, Any}("OutputFormat"=>OutputFormat, "Text"=>Text, "VoiceId"=>VoiceId); aws_config=aws_config)
synthesize_speech(OutputFormat, Text, VoiceId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = polly("POST", "/v1/speech", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OutputFormat"=>OutputFormat, "Text"=>Text, "VoiceId"=>VoiceId), args)); aws_config=aws_config)
>>>>>>> Give AWSConfig an abstract supertype
