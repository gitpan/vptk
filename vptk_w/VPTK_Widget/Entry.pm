package vptk_w::VPTK_Widget::Entry;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'sunken'] }
sub TkClassName   { 'Tk::Entry' }
sub PrintTitle    { 'Entry' }
sub AssociatedIcon{ 'entry' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',
    -width=>'int+',-justify=>'justify',-relief=>'relief',-show=>'text',
    -textvariable=>'variable',-state=>'menu(normal|disabled|readonly)'
  }
}

sub JustDraw {
  my ($this,$parent,%args) = @_;
  undef($args{'-textvariable'}) if exists $args{'-textvariable'};
  return $parent->Entry(%args);
}

1;#)
