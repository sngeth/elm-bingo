module Bingo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


playerInfo name gameNumber =
  name ++ " - Game #" ++ (toString gameNumber)


playerInfoText name gameNumber =
  playerInfo name gameNumber
    |> String.toUpper
    |> text


viewPlayer name gameNumber =
  let
      playerInfoText =
        playerInfo name gameNumber
          |> String.toUpper
          |> text
  in
      h2 [ id "info", class "classy" ] [ playerInfoText ]

viewHeader title =
  header []
    [ h1 [] [ text title ] ]


viewFooter =
  footer []
    [ a [href "http://elm-lang.org" ]
        [ text "Powered By Elm" ]
    ]


view =
  div [ class "content" ]
    [
      viewHeader "BUZZWORD BINGO",
      viewPlayer "Sid" 4,
      viewFooter
    ]

main =
  view
