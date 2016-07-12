#!/usr/bin/perl
use strict;

#
# Parameter Declarations
#
my($inputPS, $inputTCDA, $IFILE_PS, $IFILE_TCDA);
my($lineNo, @fields, %results);
my($dbName, @dbList);

my($dbName, $IFILE, $buf, $value, @fields, @dbList, $ratio);
my($i, $totalDB, $numWin);

#
# Parameter Settings
#
$inputPS   = "../Plane-sweep/123.txt";
$inputTCDA = "../TCDA/bin/456.txt";

open(IFILE_PS,   $inputPS)   || die "Error: unable to open $inputPS\n";
open(IFILE_TCDA, $inputTCDA) || die "Error: unable to open $inputTCDA\n";

$lineNo = 0;
while (defined($buf = <IFILE_PS>))	{
	$lineNo++;

	chomp($buf);
	@fields = split(/\t/, $buf);
	($#fields == 2) || die "Invalid input format at Line $lineNo.\n";	
	$_ = $fields[0];
	($dbName) = /NewFilter\/(\w+)/;	
	$results{$dbName} = $fields[1];
	@dbList = (@dbList, $dbName);
}
close(IFILE_PS);

$lineNo = 0;
while (defined($buf = <IFILE_TCDA>))	{
	$lineNo++;

	chomp($buf);
	@fields = split(/\t/, $buf);
	($#fields == 2) || die "Invalid input format at Line $lineNo.\n";	
	$_ = $fields[0];
	($dbName) = /NewFilter\/(\w+)/;	
	
	$results{$dbName} = $results{$dbName}." ".$fields[1];
}
close(IFILE_TCDA);

#
#	output results
#

$totalDB = $numWin = 0;
for($i=0; $i<79; $i++)	{
	print "=";
}
print "\n";

printf("%-10s %10s %10s %13s\n", "Filter", "Plane", "TCDA", "TCDA vs.   ");printf("%-10s %10s %10s %13s\n", "DB",     "Sweep", "",     "Plane Sweep",  );
for($i=0; $i<79; $i++)	{
  print "-";
}
print "\n";
foreach $dbName (@dbList)
{
	$totalDB++;
  @fields = split(/ /, $results{$dbName});
	($#fields == 1) || die "Missing results in one of the input files.\n";

	($fields[1]/$fields[0] >= 1.0) || $numWin++;
	printf("%-10s %10s %10s %13.2f\n", $dbName, $fields[0], $fields[1], $fields[1]/$fields[0]);
}
for($i=0; $i<79; $i++)	{
  print "-";
}
print "\nNumber of filter databases: $totalDB\n";
print   "time(TCDA) <= time(PS)    : $numWin\n";
printf( "time(TCDA)  > time(PS)    : %d\n", $totalDB-$numWin);

for($i=0; $i<79; $i++)	{
  print "=";
}
print "\n";


