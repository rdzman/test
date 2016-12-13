Change history for MIPS
=======================

1.2.2 - 2016-12-09
------------------

* 2016-12-09 - Renamed from MATLAB Interior Point Solver to MATPOWER Interior
  Point Solver.

* 2016-12-06 - Remove dependence of `t_mpsolve()` on presence of `have_fcn()` to
  detect PARDISO installation.

* 2016-11-01 - Released MATPOWER 6.0b2.


Changes since 1.2
-----------------

6/1/16
* Released version 1.2.1 (with MATPOWER 6.0b1).

3/27/15
* Fixed issue where default value of 'feastol' option was not being
  set correctly in mips() when called directly (or via qps_mips())
  with 'feastol' = 0.


Changes since 1.1
-----------------

3/20/15
* Released version 1.2 (with MATPOWER 5.1).


3/19/15
* Added support for using PARDISO as linear solver for computing
  interior-point update steps in MIPS (v1.2), via new mplinsolver()
  function and 'mips.linsolver' option.

2/25/15
* Switch to more permissive 3-clause BSD license from GPL 3.0.


Changes since 1.0.2
-------------------

12/17/14
* Released version 1.1 (with MATPOWER 5.0).

12/2/14
* Updated to MIPS 1.1, which includes additional user-settable
  options: xi, sigma, z0, alpha_min, rho_min, rho_max, mu_threshold
  and max_stepsize.
* INCOMPATIBLE CHANGE: The name of the option to mips() to specify
  the maximum number of step-size reductions when step_control is on
  was changed from 'max_red' to 'sc.red_it' for consistency with
  other MATPOWER options.

7/1/14
* Released MATPOWER 5.0b1.


Changes since 1.0.1
-------------------

11/5/13
* Released version 1.0.2
* Fixed a bug in MIPS where a near-singular matrix could produce
  an extremely large Newton step, resulting in incorrectly satisfying
  the relative feasibility criterion for successful termination.


Changes since 1.0
-----------------

4/30/12
* Released version 1.0.1
* Fixed fatal bug in MIPS for unconstrained, scalar problems.
  Thanks to Han Na Gwon.


12/14/11
* Released MATPOWER 4.1.


Changes since 1.0b5
-------------------

2/7/11
* Released version 1.0 (with MATPOWER 4.0).


Changes since 1.0b4
-------------------

12/13/10
* Released version 1.0b5 (with MATPOWER 4.0b5).


Changes since 1.0b3
-------------------

5/21/10
* Released version 1.0b4 (with MATPOWER 4.0b4).

5/13/10
* Modified input args for Hessian evaluation function for MIPS.
  Requires cost_mult as 3rd argument.

4/27/10
* Check for NaN's in update step.


Changes since 1.0b2
-------------------

4/19/10
* Released version 1.0b3 (with MATPOWER 4.0b3).
* Changed licensing to GNU General Public license. See LICENSE and
  COPYING files for details.

4/6/10
* GNU Octave compatibility!  (tested with Octave 3.2.3)


Changes since 1.0b1
-------------------

3/19/10
* Released version 1.0b2 (with MATPOWER 4.0b2).

3/10/10
* Added optional input arg to mipsver() function to
  trigger return of entire version struct with Name, Version,
  Release and Date (similar to MATLAB's ver() function).
* Massive help text update to more closely match MathWorks conventions;
  function names in ALL CAPS, See also ..., Examples, etc.

3/8/10
* Added mipsver().

3/1/10
* Added a version number and printing of MIPS version lines to
  verbose output.

2/25/10
* Swapped g and h (G and H) in notation to match convention used
  in previously published stuff.

1/25/10
* Added qps_mips(), with calling syntax similar to quadprog()
  from the Optimization Toolbox. The main difference from the
  quadprog() API is that the constraints are specified as
  l <= A*x <= u, instead of A*x <= b and Aeq*x == beq.

1/19/10
* Renamed the pure-MATLAB interior point solver from PDIPM to
  MIPS (MATLAB Interior Point Solver).

1/18/10
* Changed order of input args to pdipm(), added option for single
  input struct (like fmincon), more documentation, all constraints
  are now optional, returns exitflag = -1 for 'numerically failed',
  output includes 'message' field, lambda only includes relevant
  fields. Added tests for pdipm as standalone solver.

1/12/10
* Added history field to the output with trajectories of obj,
  termination criterion, etc.

1/11/10
* Added acknowledgement of port from Hongye Wang's code.


Changes since beginning
-----------------------

12/24/09
* Released version 1.0b1 (with MATPOWER 4.0b1).

11/4/09
* Removed unnecessary 'return' statement at end of all M-files. If
  anything it should be an 'end' statement, but even that is
  optional, so we just let functions get terminated by the
  end-of-file or another function declaration.

6/5/09
* Break out of algorithm is any element of x becomes NaN.

3/24/09
* Added step-controlled PDIPM variant (OPF_ALG = 565) of
  AC OPF solver.

3/19/09
* Fixed some bugs in default args.

3/13/09
* Added a pure MATLAB implementation of the PDIPM (primal-dual
  interior point method) solver for the AC OPF.
