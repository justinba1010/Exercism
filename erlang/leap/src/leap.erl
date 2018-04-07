-module(leap).

-export([leap_year/1, test_version/0]).


leap_year(Year) ->
  callYear(Year).

callYear(Year) ->
  case Year rem 400 == 0 of
    true -> true;
    false -> onehundred(Year)
  end.
onehundred(Year) ->
  case Year rem 100 == 0 of
    true -> false;
    false -> four(Year)
  end.
four(Year) ->
  Year rem 4 == 0.

test_version() -> 3.
