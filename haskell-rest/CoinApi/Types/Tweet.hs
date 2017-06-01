{-# LANGUAGE OverloadedStrings #-}

module CoinApi.Types.Tweet where

import CoinApi.Types.Internal

data Tweet = Tweet { created_at :: !Text
                   , favorite_count :: !Scientific
                   , favorited :: !Bool
                   , filter_level :: !Text
                   , id :: !Integer
                   , id_str :: !Text
                   , in_reply_to_screen_name :: !Text
                   , in_reply_to_status_id :: !Scientific
                   , in_reply_to_status_id_str :: !Text
                   , in_reply_to_user_id :: !Scientific
                   , in_reply_to_user_id_str :: !Text
                   , lang :: !Text
                   , possibly_sensitive :: !Bool
                   , retweet_count :: !Scientific
                   , retweeted :: !Bool
                   , source :: !Text
                   , text :: !Text
                   , full_text :: !Text
                   , truncated :: !Bool
                   , withheld_copyright :: !Bool
                   , withheld_in_countries :: [Text]
                   , withheld_scope :: !Text
                   , quoted_status_id :: !Scientific
                   , quoted_status_id_str :: !Text }
  deriving (Show, Eq)

instance FromJSON Tweet where
  parseJSON = withObject "Tweet" $ \o -> Tweet
                                         <$> o .:: "created_at"
                                         <*> o .:: "favorite_count"
                                         <*> o .:: "favorited"
                                         <*> o .:: "filter_level"
                                         <*> o .:: "id"
                                         <*> o .:: "id_str"
                                         <*> o .:: "in_reply_to_screen_name"
                                         <*> o .:: "in_reply_to_status_id"
                                         <*> o .:: "in_reply_to_status_id_str"
                                         <*> o .:: "in_reply_to_user_id"
                                         <*> o .:: "in_reply_to_user_id_str"
                                         <*> o .:: "lang"
                                         <*> o .:: "possibly_sensitive"
                                         <*> o .:: "retweet_count"
                                         <*> o .:: "retweeted"
                                         <*> o .:: "source"
                                         <*> o .:: "text"
                                         <*> o .:: "full_text"
                                         <*> o .:: "truncated"
                                         <*> o .:: "withheld_copyright"
                                         <*> o .:: "withheld_in_countries"
                                         <*> o .:: "withheld_scope"
                                         <*> o .:: "quoted_status_id"
                                         <*> o .:: "quoted_status_id_str"
