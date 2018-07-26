# subshift [![Build Status](https://travis-ci.com/ukrmap/subshift.svg?branch=master)](https://travis-ci.com/ukrmap/subshift)

SRT Subtitles Re-synchronise CLI Tool

## Installation

Copy ruby script into `/usr/local/bin/` and make it executable:

    $ curl https://raw.githubusercontent.com/ukrmap/subshift/master/ruby/subshift>/usr/local/bin/subshift;chmod +x /usr/local/bin/subshift

## Usage

Move all subtitles after 00:09:53 timepoint 10 seconds earlier:

    $ subshift --file="Movie.srt" --from="00:09:53" --shift=-10000
    Shifted file: Movie_shifted.srt

## Options

    $ subshift --help
    Usage: subshift [options]
            --file FILE                  Subtitles *.srt file
            --from TIME                  Time point from which to shift
            --shift DURATION             Time shift in milliseconds
