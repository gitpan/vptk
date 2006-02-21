package vptk_w::VPTK_Widget::Pane;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [] }
sub HelpId        { 'Tk::Pane' }
sub PrintTitle    { 'Pane' }
sub AssociatedIcon{ 'frame' }
sub EditorProperties {
  return {
    -scrollbars=>'scrolled',-sticky=>'',
    -gridded => 'menu(|x|y|xy)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Pane(@args);
}

1;
