MATPOWER Contributors Guide
===========================


Getting Involved
----------------

MATPOWER is a community effort and your involvement is greatly appreciated.
We are always looking for help in identifying and fixing bugs, writing test
cases, improving documentation, answering queries on the mailing lists,
enhancing existing functionality and implementing new features that fit
within the general scope of the project.

Please take a moment to review this document before contributing, as it
helps to communicate your respect for the time and efforts of the MATPOWER
developer community managing and developing this open source project.


Repository Organization _(maybe move this to the README)_
-----------------------

This repository is for the MATPOWER core distribution organized in the
following directories:
- `data` -- MATPOWER case files
- `docs` -- PDF versions of the User's Manual and other documentation
- `lib` -- the software that implements MATPOWER's core functions
- `mips` -- [MIPS][1] subrepository, with it's own `lib` subdirectory
- `most` -- [MOST][2] subrepository, with it's own `lib` subdirectory
- `mptest` -- [MP-Test][3] subrepository, with it's own `lib` subdirectory

Each of the subrepositories has its own master repository for tracking its
development and issues. These subrepositories are included in the core
MATPOWER repository using [`git subrepo`][4].


Issues
------

==Reporting a Bug

Blah, blah, blah.

- issue contributions
    - feature requests
    - bug reports
- code contributions
    - what
        - discuss major additions first
        - code style guidlines
    - how
        - fork
        - branch
        - commit
        - rebase
        - test
            - ci
        - push
        - discuss and update
        - landing
- documentation
- mailing lists
- branching model
- THANKS!

--

--

Licensing
---------

By submitting a pull request, you represent that you have the right to
license your contribution to PSERC and the community, and agree by
submitting the patch that your contributions are licensed under the
[3-clause BSD license][5].



Before submitting the pull request, please make sure you have tested
your changes and that they follow the [MATPOWER project guidelines][6]
for contributing code.

Git Workflow and Branching Model
--------------------------------

We use [GitHub Flow][7], meaning that the `master` branch should always
be ready for release and all new work is done in descriptively named
branches off of `master`, which are then reviewed via pull requests. The
only addition is that we do still have a `release` branch that always
points to the latest versioned release. We also use tags like `6.0` to
tag each release.

[1]: https://github.com/MATPOWER/mips
[2]: https://github.com/MATPOWER/most
[3]: https://github.com/MATPOWER/mptest
[4]: https://github.com/ingydotnet/git-subrepo
[5]: LICENSE
[6]: CONTRIBUTING.md
[7]: http://scottchacon.com/2011/08/31/github-flow.html
