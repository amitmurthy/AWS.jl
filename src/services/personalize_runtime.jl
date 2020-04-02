include("../AWSServices.jl")
using .AWSServices: personalize_runtime

"""
    GetRecommendations()

Returns a list of recommended items. The required input depends on the recipe type used to create the solution backing the campaign, as follows:   RELATED_ITEMS - itemId required, userId not used   USER_PERSONALIZATION - itemId optional, userId required    Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the API. 

Required Parameters
{
  "campaignArn": "The Amazon Resource Name (ARN) of the campaign to use for getting recommendations."
}

Optional Parameters
{
  "itemId": "The item ID to provide recommendations for. Required for RELATED_ITEMS recipe type.",
  "userId": "The user ID to provide recommendations for. Required for USER_PERSONALIZATION recipe type.",
  "numResults": "The number of results to return. The default is 25. The maximum is 500.",
  "context": "The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type. For more information, see Contextual Metadata."
}
"""
GetRecommendations(args) = personalize_runtime("POST", "/recommendations", args)

"""
    GetPersonalizedRanking()

Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.  The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING. 

Required Parameters
{
  "userId": "The user for which you want the campaign to provide a personalized ranking.",
  "campaignArn": "The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.",
  "inputList": "A list of items (itemId's) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list. The maximum is 500."
}

Optional Parameters
{
  "context": "The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type. For more information, see Contextual Metadata."
}
"""
GetPersonalizedRanking(args) = personalize_runtime("POST", "/personalize-ranking", args)