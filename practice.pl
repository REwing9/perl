#!/usr/bin/perl
use strict;
use warnings;

use DBI;
use DBD::mysql


use DBI;


$db ="List2";

$user = "";

$pass = "";

$host="localhost";

## SQL query
$query = "Contacts";

$dbh = DBI->connect("DBI:mysql:$db:$host", "", "");
$sqlQuery  = $dbh->prepare($query)
or die "Could not connect to database: $DBI::errstr\n";

$rv = $sqlQuery->execute
or die "can't execute: $sqlQuery->errstr";

while (@row= $sqlQuery->fetchrow_array()) {
    my $tables = $row[0];
    print "$tables\n<br>";
}

$rc = $sqlQuery->finish;
exit(0);


