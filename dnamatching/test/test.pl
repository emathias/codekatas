#!/usr/bin/perl

use Test::Unit::Procedural;
use strict;
use warnings;

#indicate where to find dnamatching module
BEGIN {
    my $relativePath = "../";
    unshift(@INC, $relativePath."lib");
    unshift(@INC, "lib");

}

use dnamatching;

sub test1 {
	my @dna = ("AT");
	assert(dnamatching::max_size(@dna) == 1, "Test 1 failed\n");
}

sub test2 {
	my @dna = ("ACGCGCGTA", "GTCGATGCA", "ACGTAGCT", "TACGCGCGT");
	assert(dnamatching::max_size(@dna) == 3, "Test 2 failed\n");
}

sub test3 {
	my @dna = ("A","C","T","G");
	assert(dnamatching::max_size(@dna) == 2, "Test 3 failed\n");
}

sub test4 {
	my @dna = ("ATTA", "ATCG", "CGAT", "ATCGCGAT", "CCCGGG");
	assert(dnamatching::max_size(@dna) == 4, "Test 4 failed\n");	
}

sub test5 {
	my @dna = ("ATCACAACGACGTGGCCCACGA", "GGTAGTGACATGACCT", "TACGCG", "GTGTAAGAGACGGTTTG", "CAGGGGTATGTAAACTGACTTCCTCC", "CCATTAT", "CTTTGTGCAGTAGTTTATTATCAG", "GGAGGAAGTCAGTTTACATACCCCTG", "CGCGTA", "TTGTTTAGTCTGGGGCCCGA", "GTGCCAGGTCTCCGCACCGGGCATGAACAATGTCAGCGTACA", "GACCATCTTGTAGGCAAGAT", "AACCGAAAACATCACCTGCGTTGAGCACTATTA", "TAATAGTGCTCAACGCAGGTGATGTTTTCGGTT", "ATCAGGATCCGGTGACAGGGCGCATAAGATCAAGAATCTATCG", "CGCAATGAATAC", "GACGGGGCGACATATAATCATGAGAACGAGGGGCGTATGGTAGAACACA", "GCTCAGCTAAAGGCTATTCCTAACGCTTTTATGTGGCAT", "CATGTCCTGAGTGGACTAGAGAG", "TCCTCACGCGTGAGCGGCCTACAGT", "ATGCCACATAAAAGCGTTAGGAATAGCCTTTAGCTGAGC", "GGGTGTTACAAGAGCATCCGCTGTGCTCGGATTGACCTCGGCTGAAG", "TGTTAACAGT", "GCACGGAAGTTGATGCTGTCCCAG", "CTGCATTGGTCCGTACAGCT", "CGATAGATTCTTGATCTTATGCGCCCTGTCACCGGATCCTGAT", "CTATCA", "AGGGACCACTTGCG", "CGAAGAACACAGCAGATTACTCGCGAGCATACCATAAT", "ACGGATTGGGATGGTGCTTATTCTCATTCCGCTTATAGCGTCTTAA", "CACCAATATTTGTAAGTCA");
	assert(dnamatching::max_size(@dna) == 26, "Test 5 failed\n");
}

sub test6 {
	my @dna = ("TGGGGAAGTGACCGGCTCACACTGTGAAGGCCTAACACATACGCAGTTAT", "AGGTCCTGGCTAGGCGTGGTAATGTAAAATGACTTTGACTTATCGACCGA", "GTCAGGCATTAGCCTTACCGTTACGCCGTACCTTTCCGCGTTGGGCCAGT", "TCTGCAACGATGGAATTACGTGCCAATTAGCTAGCCACTGTCGCCGGGGA", "GGGAAGTGTGTTCCTGACGGACGGTTGGTGCCTCCGAGTTTCCGTGTTAC", "GAAGAAAGCGCCTATCAGCTAGCATCAGACAGCATTAGCCTTGAGCTGAG", "CACGTACATTCCAACGAGCCGGCCTCAGCACTCGCGGTGCCATCCAACGT", "CATCGCGTACTCTATGGTGTCCGTCCCGGCCACGCCAAGACCTGTAGCGT", "GAGTATGCCACGAGTGAAGTGAGTATAACAGAATTAATTTTGCTTGCGAA", "GTCTCAACCTCAGTGACTTAATGGGGAGTTACATGCTGGGCAGCTGCGCG", "GAACCGATCGATATCTTAAAAGAAGCTCGTATGCGAAGTCTTGTAACTAC", "CGAACCGCCACAATTGTGCACGATCTTTCTTGCTGTGTACTCCGGATTGG", "CTGTCCAGGGATCCGTTCGAAGCTAAGAGGTACTTTGTCGCCCTTAAATG", "CGCGTGCACACGGGTTCCGGAAGACTACATACTTCACTCTTTCTTAAGCG", "ATCTGTGGCCAAAACATTCACAGGGTTTTGGGTCCCGAACTCCTCTTGCG", "GAGTTAGGATACGCAATCCTCTGGTCACGGGTGTCCGAAGGAATCATACG", "GCAGAACAACTCTGTAGTTCAATGGCCGAATACTGCTATTCAGAGCATAT", "GTGTCTCACGGATCCAGCAGTTAGACCTATTGACTTAGTCTCCCGGCTAC", "CGCATTGTAGCTTGCGCGTCATGGCATCGAGAGACTTAATGCACATCCCG", "TATTTGCACTTGCGCCTCGTTTGGCGGGCTTGTATCGGCACAGGGAACCG", "GCAGTGAGGGGAACGTGATAAATGGTAATGGCCGCGGCGTATTCACGGTC", "TGTCTAGTCTCAAATCCCTCACCAGGCCGTCCCGTAGCTAGAAAATCTAG", "CTATGGCTAGGATTTGTCGACTCTGGTCGAAATATCAGAAGGACTTAAGG", "CTATCAGTGACCGCTCGTACGGGCATACAATCTTGGGGCTGTGTACAGAA", "CATCCTGCCGACTCCACCTCGATAATAGATTCTATGTCAACACGTGGGAC", "GTCTCGGAATAGTAGGTCGTGTGAAGTCCGAACCTGACGCGGATGACCCC", "TGAGGAGAAGCGGGCTCATATGTGCAGAAGTTGTCTTATTGATGGGCAGG", "TCGTCCACTAAGTTCGTTCGAATTTATTGGCTCCATTAAAAAGTTACATG", "CTTTATGAGTGCTAGAGGTATGTGCAACCTATATACAGCGCACGAAGGGC", "GCTCTTGATTACAGTTCTCCGAGGCAGTCTGCGCTCGCTCGTGACCTTGG", "ATAAGGCTCGGCCCGAAAGAGCGTGTAAATCCACCAATTTTCGGGTGGTG", "GTGTTATCGAGTCTAGAGCTCAAAACCTGCTTGCCCTGGCGTGACGACGC", "CCTGAGGGGGGCCTATATGTCTTGCTTTTCCGTGTTGCCTAAACTAATTG", "CACCGGGCAAATTTCTCCGCCCGACCCCGAACCCTACTTCTTAAACTTGC", "GGCGGTTTCGCGTGGAATGTTCTCACTAGGGTGCCTGGACTCACCACCTC", "ATGCTGCACCCAAGAACTCACATCCAGGTCTTGCATCCTTTGTGGGGACC", "ATTGCCTCAAACCAGCTCACCTCAGGGATCATGTCAGGCAGCCCTATACT", "GGACGGCGGTCTTGACCGCGCGGGCTGTAGTGTGCCTTACATGGCGATTC", "AATAGCCTTTTACCGCGGCTAGCAAACTGCTGTAACCCGGGCGATTTTTG", "GCAAATCCGAACGACAATGTCATAAGATTCACTACTTTGCTATCAGTACC", "AATTCCCCTTTGGCCCCAGAAGCGCACCGGTGGACACTCGCAGACATTAC", "TGCAGCAAATCAGGAACGGAACAGGATCCATGGGATAATATGACTCCGAA", "GACGATACAGTTCTATGTTTGCCTTTTTGCGTCACCTCTGACCCGCATGT", "ACATCCTCTGGTCGATACCCAGCCTTTTCCGCGAGACTCACATGGGCAAT", "ACTTGCCTGCTGCAGATGGTGTCGGGCAACGATCTCGAGTCCCTTATAAT", "CGGAAGTAATAGGTCGCATGTCCCGCGGCGATTGTGGAGGTATCTAAAAT", "GATTAGGTCGTCAGTTAGATCGACGATTTCGCTTGTCGATTGGTTTATCC", "GCGTCGTGAGTAGATCGTGTGTCAACATTCGTTTAGTTTTCCGACCTAGC", "AACTACCAACTTTAGAGCTGCGAGTTTCCTTCTGAGACGATTTATCATGT", "TCAGTAACTAAGTATGCTAGTTACACAGAGATCATGATATTACAAGGCTG");
	assert(dnamatching::max_size(@dna) == 50, "Test 6 failed\n");
}

create_suite();
run_suite();



