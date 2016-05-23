package Data::Sah::Coerce::perl::array::str_comma_sep;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 2,
        enable_by_default => 0,
        prio => 60, # a bit lower than normal
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_match} = "!ref($dt)";

    $res->{expr_coerce} = "[split /\\s*,\\s*/, $dt]";

    $res;
}

1;
# ABSTRACT: Coerce array from a comma-separated items in a string

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

The rule is not enabled by default. You can enable it in a schema using e.g.:

 ["array*", of=>"int", "x.coerce_rules"=>["str_comma_sep"]]
