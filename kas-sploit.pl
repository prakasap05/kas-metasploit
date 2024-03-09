use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print "##################\nAuthor: prakasap05\n##################\n\n";
print "1. Install materials\n2. Run metaslpoit\n\nEnter your choice: ";
chomp($akas=<STDIN>);
if($akas eq '1'){
print "Anda menginstall pada waktu: $hour:$min:$sec $days[$wdays], $mday-$months[$mon]-$years\n\n";
system('wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh');
system('chmod +x metasploit.sh');
system('bash metasploit.sh');
}if($akas eq '2'){
system('msfconsole');
}
