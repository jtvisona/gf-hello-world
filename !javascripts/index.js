"use strict"


// literals
// \0, \t, \n, \v, \f, \r, \xHH, \uHHHH, \c^C, \u{HHHHHH} w/ u-flag
// metacharacters
// ^ $ . * + ? = ! : | \ / ( ) [ ] { }
// character classes
// [...], [^...], ., \w, \W, \s, \S, \d, \D, [\b]
// unicode character classes w/ u-flag
// \p{...}, \P{...}, \p{Decimal_number | Number | Scrpit=Greek}
// repetition
// {n,m}, {n,}, {n}, ? | {0,1}, + | {1,}, * | {0,}
// alternation, grouping and reference
// |, (...), (?:...), \N, (?<NAME>...) w/ k<NAME>
// anchors
// ^, $, \b, \B, (?=p), (?!p)
// look assertions
// (?<=...), (?<!...)
// flags
// g (global), i (insensitive), m (multiline), s (terminator-as-char), u (unicode), y (sticky)
// string methods
// search(), replace(), match(), matchAll(), split()
// RegExp properties
// source, flags, global, ignoreCase, multiline, dotAll, unicode, sticky, lastIndex
// RegExp methods
// test(), exec()

/*
// Simple search() example
const pattern_a = /a/;
const pattern_a2 = new RegExp( pattern_a )
const pattern_as_string = "b";                                  // regex literal syntax (static)
const pattern_b = new RegExp( pattern_as_string );              // regex constructor syntax (dynamic)
const search_string = "Is the character'a' in this string?";
let searchResults = search_string.search( pattern_a );          // search method
console.log( searchResults );
searchResults = search_string.search( pattern_b );
console.log( searchResults );
*/

/*
// Simple matchAll() example
const words = /\b[a-zA-Z]+\b/g;
const text = "This is a test of the EBS. This is only a test.";
let output = "";
for( let word of text.matchAll( words ) ){
    output += `${word[0]} at ${word.index}\n`;
}
console.log( output );
*/

