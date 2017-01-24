module Bingo exposing (..)

import Html


playerInfo name gameNumber =
  name ++ " - Game #" ++ (toString gameNumber)


playerInfoText name gameNumber =
  playerInfo name gameNumber
    |> String.toUpper
    |> Html.text


main =
  playerInfoText "Sid" 3
