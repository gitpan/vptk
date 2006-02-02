package vptk_w::VPTK_Widget::Listbox;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'sunken'] }
sub HelpId        { 'Tk::Listbox' }
sub PrintTitle    { 'Listbox' }
sub AssociatedIcon{ 'listbox' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',
    -width=>'int+',-height=>'int+',-setgrid=>'menu(0|1)',-relief=>'relief',
    -selectmode=>'menu(single|browse|multiple|extended)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  my $result = $parent->Listbox(@args);
  $result->insert('end', qw/item1 item2 item3/);
  return $result;
}

1;#)
