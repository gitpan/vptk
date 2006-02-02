package vptk_w::VPTK_Widget::Menubutton;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'flat'] }
sub HelpId        { 'Tk::Menubutton' }
sub PrintTitle    { 'Menubutton' }
sub AssociatedIcon{ 'menubutton' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-width=>'int+',
    -justify=>'justify',-padx=>'int+',-pady=>'int+',-borderwidth=>'int+',
    -relief=>'relief',-text=>'text',-underline=>'int+',-anchor=>'anchor',
    -state=>'menu(normal|active|disabled)',-textvariable=>'text'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Menubutton(@args);
}

1;#)
