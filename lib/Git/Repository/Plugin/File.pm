package Git::Repository::Plugin::File;
our $VERSION = '0.003'; # VERSION: generated by DZP::OurPkgVersion

use base 'Git::Repository::Plugin';

use Git::Repository::File;

sub _keywords { qw(file) }

sub file {
    my $repo = shift;
    my @path = @_;
    return Git::Repository::File->new($repo, @path);
}

1;

__END__

=pod

=head1 NAME

Git::Repository::Plugin::File - Add a file() method to Git::Repository

=head1 VERSION

version 0.003

=head1 SYNOPSIS

    use Git::Repository qw(File);

    my $repo = Git::Repository->new();
    my $file = $repo->file('lib', 'Git', 'Repository', 'Plugin', 'File.pm');

=head1 DESCRIPTION

Adds a C<file> method to the Git::Repository object
that returns a L<Git::Repository::File|Git::Repository::File> object.

=head1 METHODS

L<Git::Repository::Plugin::File|Git::Repository::Plugin::File> adds the
following method:

=head2 file(<dir1>, <dir2>, ..., <file>)

Returns a L<Git::Repository::File|Git::Repository::File> object which behavies
like a L<Path::Class::File|Path::Class::File> with a few additional methods;

=head1 SEE ALSO

L<Git::Repository|Git::Repository>,
L<Git::Repository::File|Git::Repository::File>,
L<Path::Class::File|Path::Class::File>

=head1 AUTHOR

Nathaniel G. Nutter <nnutter@cpan.org>

=head1 COPYRIGHT

Copyright 2013 - Nathaniel G. Nutter

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
