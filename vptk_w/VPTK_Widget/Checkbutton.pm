package vptk_w::VPTK_Widget::Checkbutton;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'flat',-indicatoron=>1] }
sub TkClassName   { 'Tk::Checkbutton' }
sub PrintTitle    { 'Checkbutton' }
sub AssociatedIcon{ 'checkbutton' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-width=>'int+',-onvalue=>'text',
    -justify=>'justify',-padx=>'int+',-pady=>'int+',-offvalue=>'text',-command=>'callback',
    -relief=>'relief',-text=>'text',-underline=>'int+',-variable=>'text',
    -anchor=>'anchor',-indicatoron=>'menu(0|1)',-selectcolor=>'color',
    -state=>'menu(normal|active|disabled)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  return $parent->Checkbutton(@args);
}

1;#)
