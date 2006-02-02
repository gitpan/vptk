package vptk_w::VPTK_Widget::LabEntry;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'sunken'] }
sub HelpId        { 'Tk::LabEntry' }
sub PrintTitle    { 'LabEntry' }
sub AssociatedIcon{ 'labentry' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',
    -width=>'int+',-justify=>'justify',-labelPack=>'lpack',
    -textvariable=>'text',-relief=>'relief',-label=>'text',-padx=>'int+',
    -pady=>'int+',-width=>'int+',-state=>'menu(normal|disabled)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  my (%args)=@args;
  my $lpack= delete $args{'-labelPack'};
  $lpack=~s/[\[\]']//g;
  return $parent->LabEntry(%args,-labelPack=>[split(/\s*(?:,|=>)\s*/,$lpack)]);
}

1;#)
