use IO::Handle;
use POSIX strftime;

$imageURL = "https://tuoitre.uit.edu.vn/wp-content/uploads/2015/07/logo-uit.png";

$|=1;
$pid = $$;

while (<>) {
   chomp $_;
   if ($_ =~ m/.*$imageURL/) 
   {
      print "$imageURL\n";
   }
   elsif ($_ =~ /(.*\.(gif|png|bmp|tiff|ico|jpg|jpeg))/i) 
   {
      print "$imageURL\n";
   }
   else {
      print "$_\n";
   }
}
