# BEGIN LICENSE BLOCK
# 
# Copyright (c) 1996-2002 Jesse Vincent <jesse@bestpractical.com>
# 
# (Except where explictly superceded by other copyright notices)
# 
# This work is made available to you under the terms of Version 2 of
# the GNU General Public License. A copy of that license should have
# been provided with this software, but in any event can be snarfed
# from www.gnu.org
# 
# This work is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# 
# Unless otherwise specified, all modifications, corrections or
# extensions to this work which alter its source code become the
# property of Best Practical Solutions, LLC when submitted for
# inclusion in the work.
# 
# 
# END LICENSE BLOCK
# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#

use strict;


=head1 NAME

RT::Link


=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

package RT::Link;
use RT::Record; 


use vars qw( @ISA );
@ISA= qw( RT::Record );

sub _Init {
  my $self = shift; 

  $self->Table('Links');
  $self->SUPER::_Init(@_);
}





=item Create PARAMHASH

Create takes a hash of values and creates a row in the database:

  varchar(240) 'Base'.
  varchar(240) 'Target'.
  varchar(20) 'Type'.
  int(11) 'LocalTarget'.
  int(11) 'LocalBase'.

=cut




sub Create {
    my $self = shift;
    my %args = ( 
                Base => '',
                Target => '',
                Type => '',
                LocalTarget => '0',
                LocalBase => '0',

		  @_);
    $self->SUPER::Create(
                         Base => $args{'Base'},
                         Target => $args{'Target'},
                         Type => $args{'Type'},
                         LocalTarget => $args{'LocalTarget'},
                         LocalBase => $args{'LocalBase'},
);

}



=item id

Returns the current value of id. 
(In the database, id is stored as int(11).)


=cut


=item Base

Returns the current value of Base. 
(In the database, Base is stored as varchar(240).)



=item SetBase VALUE


Set Base to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Base will be stored as a varchar(240).)


=cut


=item Target

Returns the current value of Target. 
(In the database, Target is stored as varchar(240).)



=item SetTarget VALUE


Set Target to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Target will be stored as a varchar(240).)


=cut


=item Type

Returns the current value of Type. 
(In the database, Type is stored as varchar(20).)



=item SetType VALUE


Set Type to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Type will be stored as a varchar(20).)


=cut


=item LocalTarget

Returns the current value of LocalTarget. 
(In the database, LocalTarget is stored as int(11).)



=item SetLocalTarget VALUE


Set LocalTarget to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, LocalTarget will be stored as a int(11).)


=cut


=item LocalBase

Returns the current value of LocalBase. 
(In the database, LocalBase is stored as int(11).)



=item SetLocalBase VALUE


Set LocalBase to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, LocalBase will be stored as a int(11).)


=cut


=item LastUpdatedBy

Returns the current value of LastUpdatedBy. 
(In the database, LastUpdatedBy is stored as int(11).)


=cut


=item LastUpdated

Returns the current value of LastUpdated. 
(In the database, LastUpdated is stored as datetime.)


=cut


=item Creator

Returns the current value of Creator. 
(In the database, Creator is stored as int(11).)


=cut


=item Created

Returns the current value of Created. 
(In the database, Created is stored as datetime.)


=cut



sub _ClassAccessible {
    {
     
        id =>
		{read => 1, type => 'int(11)', default => ''},
        Base => 
		{read => 1, write => 1, type => 'varchar(240)', default => ''},
        Target => 
		{read => 1, write => 1, type => 'varchar(240)', default => ''},
        Type => 
		{read => 1, write => 1, type => 'varchar(20)', default => ''},
        LocalTarget => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        LocalBase => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        LastUpdatedBy => 
		{read => 1, auto => 1, type => 'int(11)', default => '0'},
        LastUpdated => 
		{read => 1, auto => 1, type => 'datetime', default => ''},
        Creator => 
		{read => 1, auto => 1, type => 'int(11)', default => '0'},
        Created => 
		{read => 1, auto => 1, type => 'datetime', default => ''},

 }
};


        eval "require RT::Link_Overlay";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };

        eval "require RT::Link_Local";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

If you'll be working with perl 5.6.0 or greater, each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::Link_Overlay, RT::Link_Local

=cut


1;
