package Data::Sah::CoerceRule::array::str_comma_sep;

# DATE
# VERSION

1;
# ABSTRACT: Coerce array from a comma-separated items in a string

=head1 DESCRIPTION

This distribution contains Data::Sah coercion rule to coerce array from a
comma-separated items in a string. The rule is not enabled by default. You can
enable it in a schema using e.g.:

 ["array*", of=>"int", "x.coerce_from"=>"str_comma_sep"]


=head1 SEE ALSO

L<Data::Sah::Coerce>

L<Data::Sah>
