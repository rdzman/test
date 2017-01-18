MATPOWER Developer's Guide
--------------------------

Consider this to be a rough draft of an evolving document.
Please feel free to discuss additions, modifications, etc. on the
[MATPOWER-DEV-L email list][1].

One of the primary goals for the MATPOWER code is to **keep things as
simple as possible**. That is, we want to keep the code as simple to
understand and maintain as possible without sacrificing performance.

The following are some guidelines, in no particular order.

- As much as possible, for each function the input arguments should be
  limited to what is needed to do the job. The output arguments should
  only include things the function creates or modifies.

- All input and output arguments MUST be well defined and documented.
  NO using structs (or any other data structure) to allow passing of
  arbitrary, undocumented data.

- Every piece of data must be well-defined somewhere.

- Use consistent variable names. That is, use the same name to refer to
  the same piece of data in all contexts, unless there is a good reason
  to use a different name.

- Write tests to cover all functionality.

- Use the named constants defined by `idx_bus`, `idx_gen`, etc. rather
  than the numerical values.

- Use ...
    - 4 spaces to indent (no tabs)
    - a single space but no parens following `if`, `for`, `while`, etc,
      except where necessary
    - no `end` or `return` at the end of functions
    - spaces after commas in argument lists and index lists for non-trivial
      array indexing
        - e.g `matrix(r,c)` is ok, but `matrix(row+3, col-7)`
    - lower case function names, with `_` to separate words
    - lower case variable names
    - upper case constant names
    - no `return` in the middle of a function
    - `%%` for comments intended to document the code
        - *(why? for consistency ... once upon a time I began doing it
           that way for some reason which no longer matters)*
    - `%` to temporarily comment out unused code
    - `%%-----  heading text  -----%%` for section headings in the code

- Fatal errors should generally be reserved for invalid inputs or other
  misuse of a function.


[1]: http://www.pserc.cornell.edu/matpower/mailinglists.html#devlist
