[![Actions Status](https://github.com/lizmat/Tie-Hash/workflows/test/badge.svg)](https://github.com/lizmat/Tie-Hash/actions)

NAME
====

Raku port of Perl's Tie::Hash module

SYNOPSIS
========

    use P5tie;
    use Tie::Hash;

DESCRIPTION
===========

This module tries to mimic the behaviour of Perl's `Tie::Hash` module as closely as possible in the Raku Programming Language.

Tie::Hash is a module intended to be subclassed by classes using the [P5tie](tie()) interface. It provides implementations of the `CLEAR`, `UNTIE` and `DESTROY` methods. It also provides a stub for the `EXISTS` method, but one needs to supply an `EXISTS` method for real `exists` functionality. All other `tie` methods should be provided.

SEE ALSO
========

[P5tie](P5tie), [Tie::StdHash](Tie::StdHash)

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Tie-Hash . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2019, 2020, 2021 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

