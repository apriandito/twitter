# Load library
library(rtweet)
library(tidyverse)

# Set Parameter
file_name <- "example"
keyword <- "example"
number_of_tweet <- 1000
language <- "en"
take_retweet <- FALSE

# Auth. (Fill it with your API Key)
token <- create_token(
  app = "____",
  consumer_key = "____",
  consumer_secret = "____",
  access_token = "____",
  access_secret = "____"
)

# Collect Tweet
tweet <- search_tweets(keyword,
  n = number_of_tweet,
  include_rts = take_retweet,
  lang = language,
  retryonratelimit = FALSE,
  token = token
)

# Save Data as RDS
write_rds(tweet, paste0("data/tweet-", file_name, ".rds"))
