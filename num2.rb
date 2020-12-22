# Write a program whose output is its own text. E.g.
#
#  ./a.out | diff - self.c
#
# yields no output. Do not consult the program text directly; e.g. "cat" is not a
# solution. The program text is the output of the algorithm in the program.
#
# More than the above, this one is a different problem for each programming language.
# Another variant: Write a pair of programs, each of whose output is the other. A
# sub-variant: The two programs should be in different programming languages. 

this_script = File.open(__FILE__)

puts this_script.read

