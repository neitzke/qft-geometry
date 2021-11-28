@cus_dep_list = (@cus_dep_list, "svg pdf 0 svg2pdf");
sub svg2pdf {
   my $curdir = cwd();
   system("inkscape --export-area-page --export-text-to-path --export-pdf=\"$curdir/$_[0].pdf\" \"$curdir/$_[0].svg\""); }
$pdf_mode = 1;
$pdflatex = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
do './gitinfo2.pm'
