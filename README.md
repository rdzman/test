MIPS - MATPOWER Interior Point Solver
=====================================

The [MATPOWER Interior Point Solver (MIPS)][1] is a package of Matlab language
M-files for solving non-linear programming problems (NLPs) using a primal
dual interior point method. MIPS is based on [code written in C language][2]
by Hongye Wang as a graduate student at Cornell University for optimal
power flow applications. It was later ported to the Matlab language by
Ray D. Zimmerman for use in [MATPOWER][3].

System Requirements
-------------------

*   [Matlab][4] version 7 (R14) or later, or
*   [GNU Octave][5] version 3.4 or later
*   [MP-Test][6], for running the MIPS test suite


Installation
------------

Installation and use of MIPS requires familiarity with the basic operation
of Matlab or Octave, including setting up your Matlab path.

1.  Clone the repository or download and extract the zip file of the MIPS
    distribution from the [MIPS project page][1] to the location of your
    choice. The files in the resulting `mips` or `mipsXXX` directory,
    where `XXX` depends on the version of MIPS, should not need to be
    modified, so it is recommended that they be kept separate from your
    own code. We will use `<MIPS>` to denote the path to this directory.

2.  Add `<MIPS>/lib` and `<MIPS>/lib/t` to your Matlab path.

3.  At the Matlab prompt, type `test_mips` to run the test suite and
    verify that MIPS is properly installed and functioning. (Note: The
    tests require a functioning installation of [MP-Test][6]) The result
    should resemble the following:
```matlab
  >> test_mips
  t_mplinsolve....ok
  t_mips..........ok
  t_qps_mips......ok
  All tests successful (136 of 136)
  Elapsed time 0.11 seconds.
```

Documentation
-------------

There are two primary sources of documentation for MIPS. The first is
the [MIPS User's Manual][7], which gives an overview of the capabilities
and structure of MIPS and describes the formulations behind the code. It
can be found in your MIPS distribution at `<MIPS>/docs/MIPS-manual.pdf`
and the latest version is always available at:
<http://github.com/MATPOWER/mips/blob/master/docs/MIPS-manual.pdf>.

And second is the built-in `help` command. As with the built-in
functions and toolbox routines in Matlab and Octave, you can type `help`
followed by the name of a command or M-file to get help on that particular
function. All of the M-files in MIPS have such documentation and this
should be considered the main reference for the calling options for each
function, namely: `mips`, `mipsver`, and `qps_mips`.


License
-------

MIPS is distributed under the [3-clause BSD license][8].

----
[1]: http://github.com/MATPOWER/mips
[2]: http://www.pserc.cornell.edu/tspopf/
[3]: http://github.com/MATPOWER/matpower
[4]: http://www.mathworks.com/
[5]: https://www.gnu.org/software/octave/
[6]: http://github.com/MATPOWER/mptest
[7]: http://github.com/MATPOWER/mips/blob/master/docs/MIPS-manual.pdf
[8]: ./LICENSE
