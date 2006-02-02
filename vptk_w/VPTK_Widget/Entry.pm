package vptk_w::VPTK_Widget::Entry;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'sunken'] }
sub HelpId        { 'Tk::Entry' }
sub PrintTitle    { 'Entry' }
sub AssociatedIcon{ 'entry' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',
    -width=>'int+',-justify=>'justify',-relief=>'relief',-show=>'text',
    -textvariable=>'text',-state=>'menu(normal|disabled)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Entry(@args);
}

1;#)
