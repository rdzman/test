MPTEST
======

MPTEST is a set of functions for implementing unit testing in Matlab or Octave. It was initially developed for MATPOWER, and is used for MATPOWER, MATPOWER Interior Point Solver (MIPS) and MATPOWER Optimal Scheduling Tool (MOST).

Installation
------------

1.  Clone the repository, or unzip the zip file into the location
    of your choice. We will use ``<MPTEST>`` represent the path to the
    resulting ``mptest`` directory.

2.  Add ``<MPTEST>/lib`` and ``<MPTEST>/lib/t`` to your Matlab path.

3.  Run the tests using ``test_mptest``. You should see something like:
```matlab
  >> test_mptest
  t_test_fcns....ok
  All tests successful (1 of 1)
  Elapsed time 0.01 seconds.
```
