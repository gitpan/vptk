package vptk_w::VPTK_Widget::BrowseEntry;

use strict;
use base qw(vptk_w::VPTK_Widget);

sub HaveGeometry  { 1 }
sub DefaultParams { [-relief=>'sunken',-labelPack=>"[-side=>'left']"] }
sub HelpId        { 'Tk::BrowseEntry' }
sub PrintTitle    { 'BrowseEntry' }
sub AssociatedIcon{ 'browseentry' }
sub EditorProperties {
  return {
    -background=>'color',-foreground=>'color',-borderwidth=>'int+',
    -width=>'int+',-justify=>'justify',-labelPack=>'lpack',-variable=>'text',
    -relief=>'relief',-label=>'text',-padx=>'int+',-pady=>'int+',-width=>'int+',
    -listwidth=>'int+',-state=>'menu(normal|readonly|disabled)'
  }
}

sub JustDraw {
  my ($this,$parent,@args) = @_;
  my (%args)=@args;
  my $lpack= delete $args{'-labelPack'};
  $lpack=~s/[\[\]']//g;
  return $parent->BrowseEntry(%args,
    -choices=>[qw/one two three/],
    -labelPack=>[split(/\s*(?:,|=>)\s*/,$lpack)]);
}

1;#)
