#!/usr/bin/perl

print "Content-Type: text/html\n\n";
print "<HTML><HEAD><TITLE>CGI-Variables</TITLE></HEAD>\n<BODY>\n";
print "Enter here something:<ISINDEX><BR>\n<HR>Variables:<BR>\n";
foreach $var (sort keys %ENV) {
	print "<I><B>$var</B></I> = $ENV{$var}<BR>\n";
}
print "</BODY></HTML>\n";

sub urldecode {
	local($val) = @_;
	$val =~ s/\+/ /g;
	$val =~ s/%([0-9A-H]{2})/pack('C',hex($1))/ge;
	return $val;
}
