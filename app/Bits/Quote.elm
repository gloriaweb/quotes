module Bits.Quote exposing (render)

import Html exposing (Html, div, text)

import Alias exposing (Renderer)
import CSSModules
import Messages exposing (Msg)
import Model exposing (Model)


render : { quote : String, author : String } -> Model -> Html Msg
render quote model =
  let
    cssmod = \x -> CSSModules.cssmodule model ("Quote." ++ x)

  in
    div
      [ cssmod "component" ]
      [ div
          [ cssmod "quote" ]
          [ text quote.quote ]

      , div
          [ cssmod "author" ]
          [ text quote.author ]
      ]