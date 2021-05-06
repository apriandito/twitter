# Load library
library(rtweet)
library(tidyverse)

# Set Parameter
file_name <- ""
keyword <- ""
number_of_tweet <- 1000
language <- "id"
take_retweet <- FALSE

# Auth.
token <- create_token(
  app = "___",
  consumer_key = "___",
  consumer_secret = "___",
  access_token = "___",
  access_secret = "___"
)

# Collect Tweet
tweet <- search_tweets(keyword,
  number_of_tweet = n,
  include_rts = take_retweet,
  lang = language,
  retryonratelimit = F,
  token = token
)

# Save Data as RDS
write_rds(tweet, paste0("data/tweet-", nama_file, ".rds"))
