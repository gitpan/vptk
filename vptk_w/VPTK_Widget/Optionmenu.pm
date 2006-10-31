package vptk_w::VPTK_Widget::Optionmenu;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [] }
sub TkClassName   { 'Tk::Optionmenu' }
sub PrintTitle    { 'Optionmenu' }
sub AssociatedIcon{ 'optionmenu' }
sub EditorProperties {
  return {
    -variable=>'text',-command=>'callback'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Optionmenu(-options=>[qw/one two three/],@args);
}

1;#)
