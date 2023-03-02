# Run_Length_Coding
Markov-1 sources can output long sub-sequences of 0s and/or 1s. Run-length coding schemes have been adapted to handle this situation. General run-length coding schemes map any input sequence of symbols from a finite alphabet to a sequence of symbol pairs, representing symbol values and run-lengths. In the case of binary sources, 0 and 1 runs will alternate and the transmission of symbol values is not necessary for each run. It is sufficient to indicate whether the input sequence starts with a 0 or a 1.
(a) Write a Matlab function that replaces a string of 0s and 1s by run-length values. Also indicate whether your sequence starts with a 0 or a 1.
(b) Assume that the run-length values are optimally encoded with a binary code. Write a Matlab function that takes the array of run-length values and calculate the length
(in bits) of the optimum binary stream.
(c) Write a Matlab function that produces a Markov-1 character string of 0s and 1s. Set α = β and allow for α the values 0.05:0.05:0.95. Generate for each αi a source stream
of L = 19600 bits. Compress each source stream with the run-length encoder. Plot the compression ratio (length in bits of the binary source stream / length in bits of
the binary code stream) versus the values of α. What do you observe? Plot the pmf of the run-length values for the values α = 0.05, 0.5, and 0.95. What do you observe? Explain your  observation.
