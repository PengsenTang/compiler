#############################################################################
#                     U N R E G I S T E R E D   C O P Y
# 
# You are on day 14 of your 30 day trial period.
# 
# This file was produced by an UNREGISTERED COPY of Parser Generator. It is
# for evaluation purposes only. If you continue to use Parser Generator 30
# days after installation then you are required to purchase a license. For
# more information see the online help or go to the Bumble-Bee Software
# homepage at:
# 
# http://www.bumblebeesoftware.com
# 
# This notice must remain present in the file. It cannot be removed.
#############################################################################

#############################################################################
# mylexer.v
# Lex verbose file generated from mylexer.l.
# 
# Date: 10/12/17
# Time: 19:00:56
# 
# ALex Version: 2.07
#############################################################################


#############################################################################
# Expressions
#############################################################################

    1  "int"

    2  "char"

    3  "string"

    4  "double"|"float"

    5  "void"

    6  "if"

    7  "else"

    8  "while"

    9  "for"

   10  "do"

   11  "+"

   12  "-"

   13  "*"

   14  "/"

   15  "^"

   16  "**"

   17  "=="

   18  "++"

   19  "--"

   20  "||"

   21  "&&"

   22  "!"

   23  "="

   24  "{"

   25  "}"

   26  "("

   27  ")"

   28  ":"

   29  "->"

   30  "&"

   31  '?|\"?

   32  ","

   33  ";"

   34  "<"

   35  ">"

   36  "<<"

   37  ">>"

   38  "."

   39  "["

   40  "]"

   41  [\t ]+

   42  \"[^\"]*?\"|'[^']*?'

   43  [1-9]?[0-9]+\.?[0-9]*((E|e)[+-]?[1-9]?[0-9]+\.?[0-9]*)?

   44  (_|[a-zA-Z])?[A-Za-z_0-9]+

   45  \n


#############################################################################
# States
#############################################################################

state 1
	INITIAL

	0x09               goto 3
	0x0a               goto 4
	0x20               goto 3
	0x21               goto 5
	0x22               goto 6
	0x26               goto 7
	0x27               goto 8
	0x28               goto 9
	0x29               goto 10
	0x2a               goto 11
	0x2b               goto 12
	0x2c               goto 13
	0x2d               goto 14
	0x2e               goto 15
	0x2f               goto 16
	0x30               goto 17
	0x31 - 0x39 (9)    goto 17
	0x3a               goto 18
	0x3b               goto 19
	0x3c               goto 20
	0x3d               goto 21
	0x3e               goto 22
	0x41 - 0x5a (26)   goto 23
	0x5b               goto 24
	0x5d               goto 25
	0x5e               goto 26
	0x5f               goto 23
	0x61 - 0x62 (2)    goto 23
	0x63               goto 27
	0x64               goto 28
	0x65               goto 29
	0x66               goto 30
	0x67 - 0x68 (2)    goto 23
	0x69               goto 31
	0x6a - 0x72 (9)    goto 23
	0x73               goto 32
	0x74 - 0x75 (2)    goto 23
	0x76               goto 33
	0x77               goto 34
	0x78 - 0x7a (3)    goto 23
	0x7b               goto 35
	0x7c               goto 36
	0x7d               goto 37


state 2
	^INITIAL

	0x09               goto 3
	0x0a               goto 4
	0x20               goto 3
	0x21               goto 5
	0x22               goto 6
	0x26               goto 7
	0x27               goto 8
	0x28               goto 9
	0x29               goto 10
	0x2a               goto 11
	0x2b               goto 12
	0x2c               goto 13
	0x2d               goto 14
	0x2e               goto 15
	0x2f               goto 16
	0x30               goto 17
	0x31 - 0x39 (9)    goto 17
	0x3a               goto 18
	0x3b               goto 19
	0x3c               goto 20
	0x3d               goto 21
	0x3e               goto 22
	0x41 - 0x5a (26)   goto 23
	0x5b               goto 24
	0x5d               goto 25
	0x5e               goto 26
	0x5f               goto 23
	0x61 - 0x62 (2)    goto 23
	0x63               goto 27
	0x64               goto 28
	0x65               goto 29
	0x66               goto 30
	0x67 - 0x68 (2)    goto 23
	0x69               goto 31
	0x6a - 0x72 (9)    goto 23
	0x73               goto 32
	0x74 - 0x75 (2)    goto 23
	0x76               goto 33
	0x77               goto 34
	0x78 - 0x7a (3)    goto 23
	0x7b               goto 35
	0x7c               goto 36
	0x7d               goto 37


state 3
	0x09               goto 3
	0x20               goto 3

	match 41


state 4
	match 45


state 5
	match 22


state 6
	0x00 - 0x21 (34)   goto 38
	0x22               goto 39
	0x23 - 0xff (221)  goto 38

	match 31


state 7
	0x26               goto 40

	match 30


state 8
	0x00 - 0x26 (39)   goto 41
	0x27               goto 39
	0x28 - 0xff (216)  goto 41

	match 31


state 9
	match 26


state 10
	match 27


state 11
	0x2a               goto 42

	match 13


state 12
	0x2b               goto 43

	match 11


state 13
	match 32


state 14
	0x2d               goto 44
	0x3e               goto 45

	match 12


state 15
	match 38


state 16
	match 14


state 17
	0x2e               goto 46
	0x30 - 0x39 (10)   goto 17
	0x41 - 0x44 (4)    goto 23
	0x45               goto 47
	0x46 - 0x5a (21)   goto 23
	0x5f               goto 23
	0x61 - 0x64 (4)    goto 23
	0x65               goto 47
	0x66 - 0x7a (21)   goto 23

	match 43


state 18
	match 28


state 19
	match 33


state 20
	0x3c               goto 48

	match 34


state 21
	0x3d               goto 49

	match 23


state 22
	0x3e               goto 50

	match 35


state 23
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 44


state 24
	match 39


state 25
	match 40


state 26
	match 15


state 27
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x67 (7)    goto 23
	0x68               goto 51
	0x69 - 0x7a (18)   goto 23

	match 44


state 28
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6e (14)   goto 23
	0x6f               goto 52
	0x70 - 0x7a (11)   goto 23

	match 44


state 29
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6b (11)   goto 23
	0x6c               goto 53
	0x6d - 0x7a (14)   goto 23

	match 44


state 30
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6b (11)   goto 23
	0x6c               goto 54
	0x6d - 0x6e (2)    goto 23
	0x6f               goto 55
	0x70 - 0x7a (11)   goto 23

	match 44


state 31
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x65 (5)    goto 23
	0x66               goto 56
	0x67 - 0x6d (7)    goto 23
	0x6e               goto 57
	0x6f - 0x7a (12)   goto 23

	match 44


state 32
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x73 (19)   goto 23
	0x74               goto 58
	0x75 - 0x7a (6)    goto 23

	match 44


state 33
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6e (14)   goto 23
	0x6f               goto 59
	0x70 - 0x7a (11)   goto 23

	match 44


state 34
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x67 (7)    goto 23
	0x68               goto 60
	0x69 - 0x7a (18)   goto 23

	match 44


state 35
	match 24


state 36
	0x7c               goto 61


state 37
	match 25


state 38
	0x00 - 0x21 (34)   goto 38
	0x22               goto 39
	0x23 - 0xff (221)  goto 38


state 39
	match 42


state 40
	match 21


state 41
	0x00 - 0x26 (39)   goto 41
	0x27               goto 39
	0x28 - 0xff (216)  goto 41


state 42
	match 16


state 43
	match 18


state 44
	match 19


state 45
	match 29


state 46
	0x30 - 0x39 (10)   goto 46
	0x45               goto 62
	0x65               goto 62

	match 43


state 47
	0x2b               goto 63
	0x2d               goto 63
	0x30               goto 64
	0x31 - 0x39 (9)    goto 64
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 44


state 48
	match 36


state 49
	match 17


state 50
	match 37


state 51
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61               goto 65
	0x62 - 0x7a (25)   goto 23

	match 44


state 52
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x74 (20)   goto 23
	0x75               goto 66
	0x76 - 0x7a (5)    goto 23

	match 10


state 53
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x72 (18)   goto 23
	0x73               goto 67
	0x74 - 0x7a (7)    goto 23

	match 44


state 54
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6e (14)   goto 23
	0x6f               goto 68
	0x70 - 0x7a (11)   goto 23

	match 44


state 55
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x71 (17)   goto 23
	0x72               goto 69
	0x73 - 0x7a (8)    goto 23

	match 44


state 56
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 6


state 57
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x73 (19)   goto 23
	0x74               goto 70
	0x75 - 0x7a (6)    goto 23

	match 44


state 58
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x71 (17)   goto 23
	0x72               goto 71
	0x73 - 0x7a (8)    goto 23

	match 44


state 59
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x68 (8)    goto 23
	0x69               goto 72
	0x6a - 0x7a (17)   goto 23

	match 44


state 60
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x68 (8)    goto 23
	0x69               goto 73
	0x6a - 0x7a (17)   goto 23

	match 44


state 61
	match 20


state 62
	0x2b               goto 63
	0x2d               goto 63
	0x30               goto 74
	0x31 - 0x39 (9)    goto 74


state 63
	0x30               goto 74
	0x31 - 0x39 (9)    goto 74


state 64
	0x2e               goto 75
	0x30 - 0x39 (10)   goto 64
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 43


state 65
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x71 (17)   goto 23
	0x72               goto 76
	0x73 - 0x7a (8)    goto 23

	match 44


state 66
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61               goto 23
	0x62               goto 77
	0x63 - 0x7a (24)   goto 23

	match 44


state 67
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x64 (4)    goto 23
	0x65               goto 78
	0x66 - 0x7a (21)   goto 23

	match 44


state 68
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61               goto 79
	0x62 - 0x7a (25)   goto 23

	match 44


state 69
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 9


state 70
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 1


state 71
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x68 (8)    goto 23
	0x69               goto 80
	0x6a - 0x7a (17)   goto 23

	match 44


state 72
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x63 (3)    goto 23
	0x64               goto 81
	0x65 - 0x7a (22)   goto 23

	match 44


state 73
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6b (11)   goto 23
	0x6c               goto 82
	0x6d - 0x7a (14)   goto 23

	match 44


state 74
	0x2e               goto 75
	0x30 - 0x39 (10)   goto 74

	match 43


state 75
	0x30 - 0x39 (10)   goto 75

	match 43


state 76
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 2


state 77
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6b (11)   goto 23
	0x6c               goto 83
	0x6d - 0x7a (14)   goto 23

	match 44


state 78
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 7


state 79
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x73 (19)   goto 23
	0x74               goto 84
	0x75 - 0x7a (6)    goto 23

	match 44


state 80
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x6d (13)   goto 23
	0x6e               goto 85
	0x6f - 0x7a (12)   goto 23

	match 44


state 81
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 5


state 82
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x64 (4)    goto 23
	0x65               goto 86
	0x66 - 0x7a (21)   goto 23

	match 44


state 83
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x64 (4)    goto 23
	0x65               goto 84
	0x66 - 0x7a (21)   goto 23

	match 44


state 84
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 4


state 85
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x66 (6)    goto 23
	0x67               goto 87
	0x68 - 0x7a (19)   goto 23

	match 44


state 86
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 8


state 87
	0x30 - 0x39 (10)   goto 23
	0x41 - 0x5a (26)   goto 23
	0x5f               goto 23
	0x61 - 0x7a (26)   goto 23

	match 3


#############################################################################
# Summary
#############################################################################

1 start state(s)
45 expression(s), 87 state(s)


#############################################################################
# End of File
#############################################################################
