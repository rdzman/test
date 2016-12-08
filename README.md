MPTEST
======

MPTEST is a set of functions for implementing unit testing in Matlab or
Octave. It was initially developed for [MATPOWER][1], and is used by
[MATPOWER][1], [MATPOWER Interior Point Solver (MIPS)][2] and
[MATPOWER Optimal Scheduling Tool (MOST)][3].

Installation
------------

1.  Clone the repository, or unzip the zip file into the location
    of your choice. We will use ``<MPTEST>`` represent the path to the
    resulting ``mptest`` directory.

2.  Add ``<MPTEST>/lib`` and ``<MPTEST>/lib/t`` to your Matlab path.

3.  Run MPTEST's own tests using ``test_mptest``. You should see something like:
```matlab
  >> test_mptest
  t_test_fcns....ok
  All tests successful (1 of 1)
  Elapsed time 0.01 seconds.
```

Usage
-----

*   Write test functions of the following form, where `t_ok` and `t_is` are
    used to test for specific conditions or matches, respectively.
```matlab
  function mytest1(quiet)
  if nargin < 1
    quiet = 0;
  end
  t_begin(4, quiet);
  t_ok(pi > 3, 'size of pi');
  if exist('my_unimplemented_functionality', 'file')
    t_ok(1, 'unimplemented_test1');
    t_ok(1, 'unimplemented_test2');
  else
    t_skip(2, 'not yet written');
  end
  t_is(2+2, 4, 12, '2+2 still equals 4');
  t_end;
```

*   Then run your test function:
```
  >> mytest1
  1..4
  ok 1 - size of pi
  skipped tests 2..3 : not yet written
  ok 4 - 2+2 still equals 4
  All tests successful (2 passed, 2 skipped of 4)
  Elapsed time 0.00 seconds.
```

*   If you have several test functions, create a function to run them all as follows:
```matlab
  function test_everything(verbose)
  if nargin < 1
    verbose = 0;
  end
  tests = {};
  tests{end+1} = 'mytest1';
  tests{end+1} = 't_test_fcns';

  t_run_tests( tests, verbose );
```

*   Run all of your tests at once. The output may look something like:
```
  >> test_everything
  mytest1........ok (2 of 4 skipped)
  t_test_fcns....ok
  All tests successful (3 passed, 2 skipped of 5)
  Elapsed time 0.02 seconds.
```

Documentation
-------------

Please use the standard Matlab/Octave `help` command for further documentation
on the individual functions, namely: `t_begin`, `t_end`, `t_ok`, `t_is`,
`t_skip` and `t_run_tests`.

License
-------

MPTEST is distributed under the 3-clause BSD [license][4].

----
[1]: http://github.com/MATPOWER/matpower
[2]: http://github.com/MATPOWER/mips
[3]: http://github.com/MATPOWER/most
[4]: ./LICENSE