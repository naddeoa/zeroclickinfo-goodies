package DDG::Goodie::WeeksUntil::naddeoa;
# ABSTRACT: Calculate the amount of weeks between now and a date in the future.

use DDG::Goodie;

zci answer_type => "weeks_until_naddeoa";
zci is_cached   => 1;

# Metadata.  See https://duck.co/duckduckhack/metadata for help in filling out this section.
name "WeeksUntil naddeoa";
description "Calculate the amount of weeks between now and a date in the future.";
category "utility";
primary_example_queries "weeksuntil May 8th", "weeksuntil 1/20/2016", "weeksuntil may eight";
secondary_example_queries "";
# Uncomment and complete: https://duck.co/duckduckhack/metadata#category
# category "";
# Uncomment and complete: https://duck.co/duckduckhack/metadata#topics
# topics "";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/WeeksUntil/naddeoa.pm";
attribution github => ["naddeoa", "Anthony Naddeo"],
            twitter => "antman8969";

# Triggers
triggers any => "weeksuntil";

# Handle statement
handle remainder => sub {
    return if $_;

	# optional - regex guard
	# return unless qr/^\w+/;
    return "Calculate the amount of weeks between now and a date in the future.";
};

1;
