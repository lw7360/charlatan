#!/usr/bin/env bash

TOKENIZED=()

tokenize () {
  # Convert a string of characters into an array of tokens.
  chars=$1
  chars=${chars/"("/" ( "}
  chars=${chars/")"/" ) "}

  split_chars=()
  for word in $chars
  do
    split_chars+=($word)
  done
  TOKENIZED=( "${split_chars[@]}" )
}

