{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Home where

import Import
--import Network.HTTP.Types.Status
import Database.Persist.Postgresql

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        toWidgetHead [julius|
            function ola(){
                alert("TA CURIOSO?? KKKKKJ");
            }
        |]
        toWidgetHead [lucius|
            h1{
                color:blue;
            }
        |]
        [whamlet|
            <h1>
                NAUM SEEI!
            <button onclick="ola()">
                OK!
        |]
