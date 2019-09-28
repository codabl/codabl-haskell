{-
   Brainrex API Explorer

   Welcome to the Brainrex API explorer, we make analytics tools for crypto and blockchain. Our currently propiertary models offer sentiment analysis, market making, blockchain monitoring and face-id verification. This AI models can be consumed from this API. We also offer integrations to open data and propietary data providers, as well as free test data we collect. There is a collection of data transformation tools. Join our Telegram group to get the latest news and ask questions [https://t.me/brainrex, #brainrex](https://t.me/brainrex). More about Brainrex at [https://brainrex.com](http://brainrex.com). Full Documentation can be found at [https://brainrexapi.github.io/docs](https://brainrexapi.github.io/docs)

   OpenAPI spec version: 2.0
   Brainrex API Explorer API version: 0.1.1
   Contact: support@brainrex.com
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : BrainrexAPIExplorer.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module BrainrexAPIExplorer.Model where

import BrainrexAPIExplorer.Core
import BrainrexAPIExplorer.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- * Models


-- ** InlineResponse200
-- | InlineResponse200
data InlineResponse200 = InlineResponse200
  { inlineResponse200Ename :: !(Maybe Text) -- ^ "ename"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON InlineResponse200
instance A.FromJSON InlineResponse200 where
  parseJSON = A.withObject "InlineResponse200" $ \o ->
    InlineResponse200
      <$> (o .:? "ename")

-- | ToJSON InlineResponse200
instance A.ToJSON InlineResponse200 where
  toJSON InlineResponse200 {..} =
   _omitNulls
      [ "ename" .= inlineResponse200Ename
      ]


-- | Construct a value of type 'InlineResponse200' (by applying it's required fields, if any)
mkInlineResponse200
  :: InlineResponse200
mkInlineResponse200 =
  InlineResponse200
  { inlineResponse200Ename = Nothing
  }

-- ** InlineResponse2001
-- | InlineResponse2001
data InlineResponse2001 = InlineResponse2001
  { inlineResponse2001Currencypair :: !(Maybe Text) -- ^ "currencypair"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON InlineResponse2001
instance A.FromJSON InlineResponse2001 where
  parseJSON = A.withObject "InlineResponse2001" $ \o ->
    InlineResponse2001
      <$> (o .:? "currencypair")

-- | ToJSON InlineResponse2001
instance A.ToJSON InlineResponse2001 where
  toJSON InlineResponse2001 {..} =
   _omitNulls
      [ "currencypair" .= inlineResponse2001Currencypair
      ]


-- | Construct a value of type 'InlineResponse2001' (by applying it's required fields, if any)
mkInlineResponse2001
  :: InlineResponse2001
mkInlineResponse2001 =
  InlineResponse2001
  { inlineResponse2001Currencypair = Nothing
  }

-- ** InlineResponse2002
-- | InlineResponse2002
data InlineResponse2002 = InlineResponse2002
  { inlineResponse2002Blockchain :: !(Maybe Text) -- ^ "blockchain"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON InlineResponse2002
instance A.FromJSON InlineResponse2002 where
  parseJSON = A.withObject "InlineResponse2002" $ \o ->
    InlineResponse2002
      <$> (o .:? "blockchain")

-- | ToJSON InlineResponse2002
instance A.ToJSON InlineResponse2002 where
  toJSON InlineResponse2002 {..} =
   _omitNulls
      [ "blockchain" .= inlineResponse2002Blockchain
      ]


-- | Construct a value of type 'InlineResponse2002' (by applying it's required fields, if any)
mkInlineResponse2002
  :: InlineResponse2002
mkInlineResponse2002 =
  InlineResponse2002
  { inlineResponse2002Blockchain = Nothing
  }

-- ** InlineResponse201
-- | InlineResponse201
data InlineResponse201 = InlineResponse201
  { inlineResponse201StartDate :: !(Maybe Date) -- ^ "start_date" - Start date in YYYY/MM/DD
  , inlineResponse201EndDate :: !(Maybe Date) -- ^ "end_date" - End date in YYYY/MM/DD
  , inlineResponse201Open :: !(Maybe Float) -- ^ "open" - Opening price quote of the time frame with two decimal points
  , inlineResponse201Close :: !(Maybe Float) -- ^ "close" - Closing price quote of the time frame with two decimal points
  , inlineResponse201High :: !(Maybe Float) -- ^ "high" - Highest price of the time frame with two decimal points
  , inlineResponse201Vol :: !(Maybe Float) -- ^ "vol" - Volume of currency exchanged in the time frame with two decimal points
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON InlineResponse201
instance A.FromJSON InlineResponse201 where
  parseJSON = A.withObject "InlineResponse201" $ \o ->
    InlineResponse201
      <$> (o .:? "start_date")
      <*> (o .:? "end_date")
      <*> (o .:? "open")
      <*> (o .:? "close")
      <*> (o .:? "high")
      <*> (o .:? "vol")

-- | ToJSON InlineResponse201
instance A.ToJSON InlineResponse201 where
  toJSON InlineResponse201 {..} =
   _omitNulls
      [ "start_date" .= inlineResponse201StartDate
      , "end_date" .= inlineResponse201EndDate
      , "open" .= inlineResponse201Open
      , "close" .= inlineResponse201Close
      , "high" .= inlineResponse201High
      , "vol" .= inlineResponse201Vol
      ]


-- | Construct a value of type 'InlineResponse201' (by applying it's required fields, if any)
mkInlineResponse201
  :: InlineResponse201
mkInlineResponse201 =
  InlineResponse201
  { inlineResponse201StartDate = Nothing
  , inlineResponse201EndDate = Nothing
  , inlineResponse201Open = Nothing
  , inlineResponse201Close = Nothing
  , inlineResponse201High = Nothing
  , inlineResponse201Vol = Nothing
  }

-- ** InlineResponse2011
-- | InlineResponse2011
data InlineResponse2011 = InlineResponse2011
  { inlineResponse2011StartDate :: !(Maybe Text) -- ^ "start_date" - Start date in YYYY/MM/DD
  , inlineResponse2011EndDate :: !(Maybe Text) -- ^ "end_date" - End date in YYYY/MM/DD
  , inlineResponse2011Open :: !(Maybe Text) -- ^ "open" - Opening price quote of the time frame with two decimal points
  , inlineResponse2011Close :: !(Maybe Text) -- ^ "close" - Closing price quote of the time frame with two decimal points
  , inlineResponse2011High :: !(Maybe Text) -- ^ "high" - Highest price of the time frame with two decimal points
  , inlineResponse2011Vol :: !(Maybe Text) -- ^ "vol" - Volume of currency exchanged in the time frame with two decimal points
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON InlineResponse2011
instance A.FromJSON InlineResponse2011 where
  parseJSON = A.withObject "InlineResponse2011" $ \o ->
    InlineResponse2011
      <$> (o .:? "start_date")
      <*> (o .:? "end_date")
      <*> (o .:? "open")
      <*> (o .:? "close")
      <*> (o .:? "high")
      <*> (o .:? "vol")

-- | ToJSON InlineResponse2011
instance A.ToJSON InlineResponse2011 where
  toJSON InlineResponse2011 {..} =
   _omitNulls
      [ "start_date" .= inlineResponse2011StartDate
      , "end_date" .= inlineResponse2011EndDate
      , "open" .= inlineResponse2011Open
      , "close" .= inlineResponse2011Close
      , "high" .= inlineResponse2011High
      , "vol" .= inlineResponse2011Vol
      ]


-- | Construct a value of type 'InlineResponse2011' (by applying it's required fields, if any)
mkInlineResponse2011
  :: InlineResponse2011
mkInlineResponse2011 =
  InlineResponse2011
  { inlineResponse2011StartDate = Nothing
  , inlineResponse2011EndDate = Nothing
  , inlineResponse2011Open = Nothing
  , inlineResponse2011Close = Nothing
  , inlineResponse2011High = Nothing
  , inlineResponse2011Vol = Nothing
  }

-- ** ModelText
-- | ModelText
data ModelText = ModelText
  { modelTextText :: !(Maybe Text) -- ^ "text" - Text to be analyzed
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON ModelText
instance A.FromJSON ModelText where
  parseJSON = A.withObject "ModelText" $ \o ->
    ModelText
      <$> (o .:? "text")

-- | ToJSON ModelText
instance A.ToJSON ModelText where
  toJSON ModelText {..} =
   _omitNulls
      [ "text" .= modelTextText
      ]


-- | Construct a value of type 'ModelText' (by applying it's required fields, if any)
mkModelText
  :: ModelText
mkModelText =
  ModelText
  { modelTextText = Nothing
  }

-- ** Request
-- | Request
data Request = Request
  { requestBlockchain :: !(Maybe Text) -- ^ "blockchain" - Name of the exchange
  , requestMarket :: !(Maybe Text) -- ^ "market" - Name of the currency pair
  , requestDataFormat :: !(Maybe Text) -- ^ "data_format" - Name of the data format availables (standard)
  , requestOrient :: !(Maybe Text) -- ^ "orient" - Name of the market
  , requestStartDate :: !(Maybe Text) -- ^ "start_date" - Start date in YYYY/MM/DD
  , requestEndDate :: !(Maybe Text) -- ^ "end_date" - End date YYYY/MM/DD
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Request
instance A.FromJSON Request where
  parseJSON = A.withObject "Request" $ \o ->
    Request
      <$> (o .:? "blockchain")
      <*> (o .:? "market")
      <*> (o .:? "data_format")
      <*> (o .:? "orient")
      <*> (o .:? "start_date")
      <*> (o .:? "end_date")

-- | ToJSON Request
instance A.ToJSON Request where
  toJSON Request {..} =
   _omitNulls
      [ "blockchain" .= requestBlockchain
      , "market" .= requestMarket
      , "data_format" .= requestDataFormat
      , "orient" .= requestOrient
      , "start_date" .= requestStartDate
      , "end_date" .= requestEndDate
      ]


-- | Construct a value of type 'Request' (by applying it's required fields, if any)
mkRequest
  :: Request
mkRequest =
  Request
  { requestBlockchain = Nothing
  , requestMarket = Nothing
  , requestDataFormat = Nothing
  , requestOrient = Nothing
  , requestStartDate = Nothing
  , requestEndDate = Nothing
  }

-- ** Request1
-- | Request1
data Request1 = Request1
  { request1Exchange :: !(Maybe Text) -- ^ "exchange" - Name of the exchange
  , request1Market :: !(Maybe Text) -- ^ "market" - Name of the currency pair
  , request1DataFormat :: !(Maybe Text) -- ^ "data_format" - Name of the data format availables (standard)
  , request1Orient :: !(Maybe Text) -- ^ "orient" - Name of the market
  , request1StartDate :: !(Maybe Text) -- ^ "start_date" - Start date in YYYY/MM/DD
  , request1EndDate :: !(Maybe Text) -- ^ "end_date" - End date YYYY/MM/DD
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Request1
instance A.FromJSON Request1 where
  parseJSON = A.withObject "Request1" $ \o ->
    Request1
      <$> (o .:? "exchange")
      <*> (o .:? "market")
      <*> (o .:? "data_format")
      <*> (o .:? "orient")
      <*> (o .:? "start_date")
      <*> (o .:? "end_date")

-- | ToJSON Request1
instance A.ToJSON Request1 where
  toJSON Request1 {..} =
   _omitNulls
      [ "exchange" .= request1Exchange
      , "market" .= request1Market
      , "data_format" .= request1DataFormat
      , "orient" .= request1Orient
      , "start_date" .= request1StartDate
      , "end_date" .= request1EndDate
      ]


-- | Construct a value of type 'Request1' (by applying it's required fields, if any)
mkRequest1
  :: Request1
mkRequest1 =
  Request1
  { request1Exchange = Nothing
  , request1Market = Nothing
  , request1DataFormat = Nothing
  , request1Orient = Nothing
  , request1StartDate = Nothing
  , request1EndDate = Nothing
  }

-- ** Request2
-- | Request2
data Request2 = Request2
  { request2Exchange :: !(Maybe Text) -- ^ "exchange" - Name of the exchange
  , request2Market :: !(Maybe Text) -- ^ "market" - Name of the currency pair
  , request2DataFormat :: !(Maybe Text) -- ^ "data_format" - Name of the data format availables (standard)
  , request2Orient :: !(Maybe Text) -- ^ "orient" - Name of the market
  , request2CandleSize :: !(Maybe Text) -- ^ "candle_size" - Name of the market
  , request2StartDate :: !(Maybe Text) -- ^ "start_date" - Start date in YYYY/MM/DD
  , request2EndDate :: !(Maybe Text) -- ^ "end_date" - End date YYYY/MM/DD
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Request2
instance A.FromJSON Request2 where
  parseJSON = A.withObject "Request2" $ \o ->
    Request2
      <$> (o .:? "exchange")
      <*> (o .:? "market")
      <*> (o .:? "data_format")
      <*> (o .:? "orient")
      <*> (o .:? "candle_size")
      <*> (o .:? "start_date")
      <*> (o .:? "end_date")

-- | ToJSON Request2
instance A.ToJSON Request2 where
  toJSON Request2 {..} =
   _omitNulls
      [ "exchange" .= request2Exchange
      , "market" .= request2Market
      , "data_format" .= request2DataFormat
      , "orient" .= request2Orient
      , "candle_size" .= request2CandleSize
      , "start_date" .= request2StartDate
      , "end_date" .= request2EndDate
      ]


-- | Construct a value of type 'Request2' (by applying it's required fields, if any)
mkRequest2
  :: Request2
mkRequest2 =
  Request2
  { request2Exchange = Nothing
  , request2Market = Nothing
  , request2DataFormat = Nothing
  , request2Orient = Nothing
  , request2CandleSize = Nothing
  , request2StartDate = Nothing
  , request2EndDate = Nothing
  }

-- ** Request3
-- | Request3
data Request3 = Request3
  { request3Exchange :: !(Maybe Text) -- ^ "exchange" - Name of the exchange
  , request3Market :: !(Maybe Text) -- ^ "market" - Name of the currency pair
  , request3DataFormat :: !(Maybe Text) -- ^ "data_format" - Name of the data format availables (standard, OHCLV, VWAP, ticker, raw)
  , request3StartDate :: !(Maybe Text) -- ^ "start_date" - Start date in YYYY/MM/DD
  , request3EndDate :: !(Maybe Text) -- ^ "end_date" - End date YYYY/MM/DD
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Request3
instance A.FromJSON Request3 where
  parseJSON = A.withObject "Request3" $ \o ->
    Request3
      <$> (o .:? "exchange")
      <*> (o .:? "market")
      <*> (o .:? "data_format")
      <*> (o .:? "start_date")
      <*> (o .:? "end_date")

-- | ToJSON Request3
instance A.ToJSON Request3 where
  toJSON Request3 {..} =
   _omitNulls
      [ "exchange" .= request3Exchange
      , "market" .= request3Market
      , "data_format" .= request3DataFormat
      , "start_date" .= request3StartDate
      , "end_date" .= request3EndDate
      ]


-- | Construct a value of type 'Request3' (by applying it's required fields, if any)
mkRequest3
  :: Request3
mkRequest3 =
  Request3
  { request3Exchange = Nothing
  , request3Market = Nothing
  , request3DataFormat = Nothing
  , request3StartDate = Nothing
  , request3EndDate = Nothing
  }

-- ** Text1
-- | Text1
data Text1 = Text1
  { text1Text :: !(Maybe Text) -- ^ "text" - Text to be analyzed
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON Text1
instance A.FromJSON Text1 where
  parseJSON = A.withObject "Text1" $ \o ->
    Text1
      <$> (o .:? "text")

-- | ToJSON Text1
instance A.ToJSON Text1 where
  toJSON Text1 {..} =
   _omitNulls
      [ "text" .= text1Text
      ]


-- | Construct a value of type 'Text1' (by applying it's required fields, if any)
mkText1
  :: Text1
mkText1 =
  Text1
  { text1Text = Nothing
  }




