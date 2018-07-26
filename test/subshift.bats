#!/usr/bin/env bats

@test "unknown file" {
  run ./ruby/subshift --file="Unknown.srt" --from="00:09:53" --shift=-10000
  [ "$status" -eq 1 ]
  [ "$output" = "No such file Unknown.srt" ]
}

@test "shift subtitles" {
  run ./ruby/subshift --file="./test/Movie.srt" --from="00:09:53" --shift=-10000
  [ "$status" -eq 0 ]
  [ "$output" = "Shifted file: ./test/Movie_shifted.srt" ]
  [ "$(sed "779q;d" test/Movie_shifted.srt)" = "00:09:43,312 --> 00:09:45,253" ]
  [ "$(sed "784q;d" test/Movie_shifted.srt)" = "00:09:45,324 --> 00:09:48,374" ]
  [ "$(sed "900q;d" test/Movie_shifted.srt)" = "00:10:44,595 --> 00:10:45,948" ]
  [ "$(sed "1941q;d" test/Movie_shifted.srt)" = "00:22:45,833 --> 00:22:47,572" ]
}
