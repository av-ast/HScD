{-# LANGUAGE DeriveGeneric #-}

module Network.SoundCloud.App where

import Data.Aeson (FromJSON, ToJSON, decode)
import qualified Data.ByteString.Lazy.Char8 as BSL
import GHC.Generics (Generic)

data JsonRecord = JsonRecord { id                     :: Int
                             , permalink_url          :: String
                             , external_url           :: String
                             , creator                :: String
                             } deriving (Show, Generic)

instance FromJSON JsonRecord
instance ToJSON   JsonRecord

decodeJSON :: String -> Maybe JsonRecord
decodeJSON dat = decode (BSL.pack dat) :: Maybe JsonRecord

showInfo :: String -> IO ()
showInfo trackUrl = putStrLn "Not Implemented"
