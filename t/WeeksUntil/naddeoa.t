#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "weeks_until_naddeoa";
zci is_cached   => 1;

ddg_goodie_test(
    [qw( DDG::Goodie::WeeksUntil::naddeoa )],
    
    # At a minimum, be sure to include tests for all:
    # - primary_example_queries
    # - secondary_example_queries
    'weeksuntil' => test_zci('Calculate the amount of weeks between now and a date in the future.'),
    # Try to include some examples of queries on which it might
    # appear that your answer will trigger, but does not.
    'bad example query' => undef,
);

done_testing;
