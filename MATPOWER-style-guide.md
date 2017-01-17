MATPOWER Developer's Style Guide
--------------------------------

Keep things as simple as possible.
As much as possible, for each function the input arguments should be limited to what is needed to do the job. The output arguments should only include things the function creates or modifies.
All input and output arguments MUST be well defined and documented. NO using structs (or any other data structure) to allow passing of arbitrary, undocumented data.
Every piece of data must be well-defined somewhere.
Use consistent variable names. That is, use the same name to refer to the same piece of data in all contexts, unless there is a good reason to use a different name.
Use the named constants defined by idx_bus, idx_gen, etc. rather than the numerical values.

- 4 space indent (no tabs)
- no parens following if, for, while, etc, except where necessary
- no end and the end of functions
- spaces after commas in argument lists and index lists non-trivial array indexing
    - e.g matrix(r,c) is ok, but matrix(row+3, col-7)
- functions are lower case with _ to separate words
- variable names are lower case
- constants are upper case
- no return in the middle of a function
- fatal errors should be reserved for ... responding to invalid inputs?
- write tests
