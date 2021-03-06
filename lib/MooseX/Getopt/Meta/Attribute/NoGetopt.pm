
package MooseX::Getopt::Meta::Attribute::NoGetopt;
use Moose;

our $VERSION   = '0.18';
our $AUTHORITY = 'cpan:STEVAN';

extends 'Moose::Meta::Attribute'; # << Moose extending Moose :)
   with 'MooseX::Getopt::Meta::Attribute::Trait::NoGetopt';

no Moose;

# register this as a metaclass alias ...
package # stop confusing PAUSE
    Moose::Meta::Attribute::Custom::NoGetopt;
sub register_implementation { 'MooseX::Getopt::Meta::Attribute::NoGetopt' }

1;

__END__

=pod

=head1 NAME

MooseX::Getopt::Meta::Attribute::NoGetopt - Optional meta attribute for ignoring params

=head1 SYNOPSIS

  package App;
  use Moose;
  
  with 'MooseX::Getopt';
  
  has 'data' => (
      metaclass => 'NoGetopt',  # do not attempt to capture this param  
      is        => 'ro',
      isa       => 'Str',
      default   => 'file.dat',
  );

=head1 DESCRIPTION

This is a custom attribute metaclass which can be used to specify 
that a specific attribute should B<not> be processed by 
C<MooseX::Getopt>. All you need to do is specify the C<NoGetopt> 
metaclass.

  has 'foo' => (metaclass => 'NoGetopt', ... );

=head1 METHODS

=over 4

=item B<meta>

=back

=head1 BUGS

All complex software has bugs lurking in it, and this module is no 
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan@iinteractive.comE<gt>

Chris Prather  C<< <perigrin@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007-2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
