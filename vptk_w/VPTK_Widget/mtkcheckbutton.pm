package vptk_w::VPTK_Widget::mtkcheckbutton;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 0 }
sub DefaultParams { [] }
sub HelpId        { 'Tk::Menu' }
sub PrintTitle    { 'checkbutton' }
sub AssociatedIcon{ 'checkbutton' }
sub EditorProperties {
  return {
    -label=>'text',-accelerator=>'text',-background=>'color',-onvalue=>'text',
    -foreground=>'color',-underline=>'int+',-command=>'callback',
    -variable=>'text',-offvalue=>'text'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->checkbutton(@args);
}

1;#)
