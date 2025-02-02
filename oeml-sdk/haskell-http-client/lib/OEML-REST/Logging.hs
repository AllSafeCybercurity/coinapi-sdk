{-
   OEML - REST API

   This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

   OpenAPI Version: 3.0.0
   OEML - REST API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : OEML-REST.Logging
Logging functions
-}
{-# LANGUAGE CPP #-}

#ifdef USE_KATIP

module OEML-REST.Logging
  ( module OEML-REST.LoggingKatip
  ) where

import OEML-REST.LoggingKatip

#else

module OEML-REST.Logging
  ( module OEML-REST.LoggingMonadLogger
  ) where

import OEML-REST.LoggingMonadLogger

#endif
