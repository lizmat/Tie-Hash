use v6.*;

class Tie::Hash:ver<0.0.8>:auth<zef:lizmat> {

    method EXISTS($) { die self.^name ~ " doesn't define an EXISTS method" }

    method CLEAR(*@args) {
        my @keys;

        my $key = self.FIRSTKEY;
        while $key.defined {
            push @keys, $key;
            $key = self.NEXTKEY($key);
        }
        self.DELETE($_) for @keys;
        ()
    }
    method UNTIE()   { }
    method DESTROY() { }
}

=begin pod

=head1 NAME

Raku port of Perl's Tie::Hash module

=head1 SYNOPSIS

  use P5tie;
  use Tie::Hash;

=head1 DESCRIPTION

This module tries to mimic the behaviour of Perl's C<Tie::Hash> module
as closely as possible in the Raku Programming Language.

Tie::Hash is a module intended to be subclassed by classes using the
L<P5tie|tie()> interface.  It provides implementations of the C<CLEAR>,
C<UNTIE> and C<DESTROY> methods.  It also provides a stub for the C<EXISTS>
method, but one needs to supply an C<EXISTS> method for real C<exists>
functionality.  All other C<tie> methods should be provided.

=head1 SEE ALSO

L<P5tie>, L<Tie::StdHash>

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Tie-Hash . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018, 2019, 2020, 2021 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
