package vptk_w::VPTK_Widget::Button;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [] }
sub HelpId        { 'Tk::Button' }
sub PrintTitle    { 'Button' }
sub AssociatedIcon{ 'button' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',-relief=>'relief',
    -command=>'callback',-text=>'text',-width=>'int+',-height=>'int+',-anchor=>'anchor',
    -padx=>'int+',-pady=>'int+',-textvariable=>'text',-underline=>'int+',
    -state=>'menu(normal|active|disabled)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Button(@args);
}

1;#)
