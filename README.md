 MATPOWER
=========

A Power System Simulation Package for Matlab and Octave
-------------------------------------------------------

- **MATPOWER Website**          - http://www.pserc.cornell.edu/matpower/
- **MATPOWER GitHub Project**   - https://github.com/MATPOWER/matpower

MATPOWER is a package of M-files for solving power flow and optimal
power flow problems using Matlab or Octave. It is intended as a
simulation tool for researchers and educators that is easy to use
and modify. MATPOWER is designed to give the best performance
possible while keeping the code simple to understand and modify.

MATPOWER releases can be downloaded from the [MATPOWER website][1],
and the latest stable and work-in-progress versions can always be
downloaded or cloned from the [MATPOWER GitHub project][2]. The
`master` branch should always contain a stable version.


System Requirements
-------------------
*   [Matlab][3] version 7 (R14) or later, or
*   [GNU Octave][4] version 3.4 or later

Getting MATPOWER
----------------

There are three options for obtaining a copy of MATPOWER:

1. Download the latest release version from the [MATPOWER website][1].
  - Go to the [MATPOWER website][1].
  - Click the "Download Now" button.
  - *Use this option if you want to stick to using versioned releases.*
2. Clone the MATPOWER repository.
  - `git clone https://github.com/MATPOWER/matpower.git`
  - *Use this option if you want to be able to easily update to the
    current stable release, with the latest bug fixes and new
    features, using a simple `git pull` command, or if you want to
    help with testing the latest versions. This requires that you
    have a [Git client][6] (GUI or command-line) installed.*
3. Download a zip file of the MATPOWER repository from GitHub.
  - Go to the [MATPOWER GitHub repository page][2].
  - Click the green "Clone or download" button, then "Download ZIP".
  - *Use this option if you need features or fixes introduced since
    the latest versioned release, but you don't have access to or
    are not ready to begin using Git (but don't be afraid to
    [give Git a try][7]).*

See [CONTRIBUTING.md][8] for information on how to get a local copy
of your own MATPOWER fork, if you are interesting in contributing
your own code or modifications.

Installation
------------

Make sure you follow the installation instructions for the version
of MATPOWER you are installing. There were some changes with the
move to GitHub after version 6.0.

1.  **Get a copy of MATPOWER** as described above. Clone the repository
    or download and extract the zip file of the MATPOWER distribution
    and place the resulting directory in the location of your choice.
    We will use `<MATPOWER>` to denote the path to this directory.
    The files in `<MATPOWER>` should not need to be modified, so it
    is recommended that they be kept separate from your own code.

2.  **Run the installer.**
    - Open MATLAB or Octave and change to the `<MATPOWER>` directory.
    - Run the installer and follow the directions to add the
      required directories to your MATLAB or Octave path, by typing:

            install_matpower

3.  **That's it.** There is no step 3.
    - If you chose not to have the installer run the test suite for
      you in step 2, you can run it now to verify that MATPOWER is
      installed and functioning properly, by typing:

            test_matpower


Running MATPOWER
----------------
To run a simple Newton power flow on the 9-bus system specified in
the file `case9.m`, with the default algorithm options, at the
MATLAB or Octave prompt, type:

    runpf('case9')

To load the 30-bus system data from `case30.m`, increase its real power
demand at bus 2 to 30 MW, then run an AC optimal power flow with
default options, type:

    define_constants;
    mpc = loadcase('case30');
    mpc.bus(2, PD) = 30;
    runopf(mpc);

By default, the results of the simulation are pretty-printed to the
screen, but the solution can also be optionally returned in a `results`
struct. The following example shows how simple it is, after running a DC
OPF on the 118-bus system in `case118.m`, to access the final objective
function value, the real power output of generator 6 and the power flow
in branch 51.

    results = rundcopf('case118');
    final_objective = results.f;
    gen6_output     = results.gen(6, PG);
    branch51_flow   = results.branch(51, PF);

For additional info, see the [MATPOWER User's Manual][5], the [on-line
function reference][9], or the built-in help documentation for the various MATPOWER functions. For example:

    help runpf
    help runopf
    help mpoption
    help caseformat


Documentation
-------------

There are four primary sources of documentation for MATPOWER.
  - [MATPOWER User's Manual][5]
  - [MOST User's Manual][17]
  - [MATPOWER Online Function Reference][9]
  - MATLAB's `help` command

The MATPOWER and MOST User's Manuals are included in the distribution
([`docs/MATPOWER-manual.pdf`][5] and [`docs/MOST-manual.pdf`][17]) and
the latest released versions are always available online, respectively, at:
  - http://www.pserc.cornell.edu/matpower/MATPOWER-manual.pdf
  - http://www.pserc.cornell.edu/matpower/MOST-manual.pdf.

Previous versions are also available at
  - http://www.pserc.cornell.edu/matpower/docs/.

Each M-file has its own documentation which can be accessed by typing at
the MATLAB prompt:

    help <name of M-file>

Documentation for the case data file format can be found by typing:

    help caseformat

If something is still unclear after checking the manual and the help,
the source code *is* the documentation. :wink:

Changes to MATPOWER are summarized in the [release notes](docs/relnotes)
for each version found in `docs/relnotes` and in Appendix H of the
[MATPOWER User's Manual][5] and [`CHANGES.md`][10] has a complete
detailed change log.
- 

Contributing
------------

Please see our [contributing guidelines][8] for details on how to
contribute to the project or report issues.


Publications and Tech Notes
---------------------------

1.  R. D. Zimmerman, C. E. Murillo-Sanchez, and R. J. Thomas,
    ["MATPOWER: Steady-State Operations, Planning and Analysis Tools
    for Power Systems Research and Education,"][18] *Power Systems, IEEE
    Transactions on*, vol. 26, no. 1, pp. 12–19, Feb. 2011.  
    DOI: [10.1109/TPWRS.2010.2051168][19].

2.  R. D. Zimmerman, C. E. Murillo-Sanchez, and R. J. Thomas,
    ["MATPOWER's Extensible Optimal Power Flow Architecture,"][20]
    *Power and Energy Society General Meeting, 2009 IEEE*, pp. 1-7,
    July 26-30 2009.  
    DOI: [10.1109/PES.2009.5275967][21].
     - [slides of presentation][22]

3.  H. Wang, C. E. Murillo-Sánchez, R. D. Zimmerman, R. J. Thomas,
     ["On Computational Issues of Market-Based Optimal Power Flow,"][23]
     *Power Systems, IEEE Transactions on*, vol. 22, no. 3,
     pp. 1185-1193, Aug. 2007.  
     DOI: [10.1109/TPWRS.2007.901301][23].

4.  C. E. Murillo-Sanchez, R. D. Zimmerman, C. L. Anderson, and
     R. J. Thomas, ["Secure Planning and Operations of Systems with
     Stochastic Sources, Energy Storage and Active Demand,"][24]
     *Smart Grid, IEEE Transactions on*, vol. 4, no. 4, pp. 2220–2229,
     Dec. 2013.  
     DOI: [10.1109/TSG.2013.2281001][24].

5.  R. D. Zimmerman, ["Uniform Price Auctions and Optimal
    Power Flow"][25], *MATPOWER Technical Note 1*, February 2010.  
    Available: http://www.pserc.cornell.edu/matpower/TN1-OPF-Auctions.pdf

6.  R. D. Zimmerman, ["AC Power Flows, Generalized OPF Costs
    and their Derivatives using Complex Matrix Notation"][26],
    *MATPOWER Technical Note 2*, February 2010.  
    Available:
    http://www.pserc.cornell.edu/matpower/TN2-OPF-Derivatives.pdf


Citing MATPOWER
---------------

While not required by the terms of the license, we do request that
publications derived from the use of MATPOWER explicitly acknowledge
that fact by citing [reference \[1\]][19] above, namely:

>   R. D. Zimmerman, C. E. Murillo-Sanchez, and R. J. Thomas,
    "MATPOWER: Steady-State Operations, Planning and Analysis Tools
    for Power Systems Research and Education," Power Systems, IEEE
    Transactions on, vol. 26, no. 1, pp. 12–19, Feb. 2011.

Additionally, we request that publications derived from the use of
the [MATPOWER Optimal Scheduling Tool (MOST)][12], explicitly
acknowledge that fact by citing [reference \[4\]][24] as well as [\[1\]][19].

>   C. E. Murillo-Sanchez, R. D. Zimmerman, C. L. Anderson, and
    R. J. Thomas, "Secure Planning and Operations of Systems with
    Stochastic Sources, Energy Storage and Active Demand," Smart Grid,
    IEEE Transactions on, vol. 4, no. 4, pp. 2220–2229, Dec. 2013.


E-mail Lists
------------

There are three MATPOWER e-mail lists available to serve the MATPOWER
community:

- [MATPOWER-ANNOUNCE-L][27] is a simple announcement list for those who
  wish to be notified of the release of new versions of MATPOWER.

- [MATPOWER-L][28] is for MATPOWER users, to facilitate discussion and
  provide a forum for help with MATPOWER related questions.

- [MATPOWER-DEV-L][16] is for MATPOWER developers, to provide a forum for
  discussion related to the development of the MATPOWER software or
  proposed contributions.

For details see the [Mailing Lists section][29] of the
[MATPOWER website][1].

Please select the most appropriate list for your post and do *not*
cross-post to both MATPOWER-L and MATPOWER-DEV-L. Bug reports,
software patches, proposed enhancements, etc. should be submitted to
the [issue tracker on GitHub][11].


Optional Packages
-----------------

There are numerous optional packages to enhance the performance of
MATPOWER that must be installed separately. The terms of use and
license agreements vary. Some are free of charge for all to use,
others are only free for academic use, and others may require a
commercial license. Please see Appendix G of the [MATPOWER User's
Manual][5] for details.


License and Terms of Use
------------------------

MATPOWER is distributed under the [3-clause BSD license][30].


[1]: http://www.pserc.cornell.edu/matpower/
[2]: https://github.com/MATPOWER/matpower
[3]: http://www.mathworks.com/
[4]: https://www.gnu.org/software/octave/
[5]: docs/MATPOWER-manual.pdf
[6]: https://git-scm.com/downloads
[7]: https://git-scm.com
[8]: CONTRIBUTING.md
[9]: http://www.pserc.cornell.edu/matpower/docs/ref/
[10]: CHANGES.md
[11]: https://github.com/MATPOWER/matpower/issues
[12]: https://github.com/MATPOWER/most

[13]: https://github.com/MATPOWER/mips
[14]: https://github.com/MATPOWER/mptest
[15]: https://github.com/MATPOWER/

[16]: http://www.pserc.cornell.edu/matpower/mailinglists.html#devlist
[17]: docs/MOST-manual.pdf
[18]: http://www.pserc.cornell.edu/matpower/MATPOWER-paper.pdf
[19]: http://dx.doi.org/10.1109/TPWRS.2010.2051168
[20]: http://www.pserc.cornell.edu/matpower/MATPOWER-OPF.pdf
[21]: http://dx.doi.org/10.1109/PES.2009.5275967
[22]: http://www.pserc.cornell.edu/matpower/MATPOWER-OPF-slides.pdf
[23]: http://dx.doi.org/10.1109/TPWRS.2007.901301
[24]: http://dx.doi.org/10.1109/TSG.2013.2281001
[25]: http://www.pserc.cornell.edu/matpower/TN1-OPF-Auctions.pdf
[26]: http://www.pserc.cornell.edu/matpower/TN2-OPF-Derivatives.pdf
[27]: http://www.pserc.cornell.edu/matpower/mailinglists.html#announcelist
[28]: http://www.pserc.cornell.edu/matpower/mailinglists.html#discusslist
[29]: http://www.pserc.cornell.edu/matpower/mailinglists.html
[30]: LICENSE
