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


Mailing Lists
-------------

Your participation is welcomed on the two mailing lists for MATPOWER
users and developers, [MATPOWER-L][6] and [MATPOWER-DEV-L][8], respectively.
We can always use help in answering questions from newer users.


Repository Organization _(maybe move this to the README)_
-----------------------

This repository is for the MATPOWER core distribution organized in the
following directories:
- `data` - MATPOWER case files
- `docs` - PDF versions of the User's Manual and other documentation
- `lib` - the software that implements MATPOWER's core functions
- `mips` - [MIPS][1] subrepository, with it's own `lib` subdirectory
- `most` - [MOST][2] subrepository, with it's own `lib` subdirectory
- `mptest` - [MP-Test][3] subrepository, with it's own `lib` subdirectory

Each of the subrepositories has its own master repository for tracking its
development and issues. These subrepositories are included in the core
MATPOWER repository using [`git subrepo`][4].


Reporting a Bug
---------------

The [issue tracker][5] is the preferred channel for reporting bugs or
submitting code changes (pull requests). A good bug report is extremely
helpful and benefits the entire community, so if you find a bug, including
a mistake in the documentation, please report it.

1. **Confirm it is a bug.** You should be able to demonstrate that it
is an error caused by the code in this repository. If you do not understand
a result you are getting, ask a question on the [discussion mailing list][6],
after searching [the archives][7] to be sure your question has not already
been answered.

2. **Check if it has already been reported or fixed.** Make sure the bug
still exists by attempting to reproduce it with using the latest `master`
branch in the repository. Search the issues on GitHub to make sure it has
not already been reported.

3. **Isolate the problem.** Create a reduced test case with no external
dependencies, if possible, that demonstrates the problem, so others can
easily reproduce it. The simpler the case the better.

4. **Submit an issue that includes a detailed report.** A good bug report
will avoid the need for the developers to track you down for more information.
    - Use an accurate, descriptive title for your issue.
    - Describe your environment - better yet, include the output of `mpver`
      on your system.
    - Include a few lines of code or attach a script file that reproduces
      the bug.
    - Describe the result you got and what you expected.
    - Select 'bug' under Labels .


Submitting Additions or Modifications to the Code
-------------------------------------------------

Code contributions are a great help and are always welcome. For larger or
more complex contributions, it is always a good idea to discuss your ideas
first on the [developer mailing list][8].

Contributions should be submitted as pull requests, as described below.
Before submitting your pull request, please make sure you have tested
your changes and that they follow the [MATPOWER developer guidelines][9].

### Getting started

#### Step 1 : [Set Up Git][10].

#### Step 2 : [Fork][11] the repository.

Click "Fork" on the [repository page][12] on GitHub.

#### Step 3 : Clone

Check out your copy locally and configure the remotes:

  ```bash
  # clone your fork of the repo into the current directory
  git clone https://github.com/<your-username>/matpower.git
  # go to the newly cloned directory
  cd matpower
  # assign the original repo to a remote called "upstream"
  git remote add upstream https://github.com/MATPOWER/matpower.git
  ```

#### Step 4 : Update

If you cloned a while ago, get the latest changes from upstream:

  ```bash
  git checkout master
  git pull upstream master
  ```

#### Step 5 : Branch

Create a new topic branch for your new feature, change or fix ... always
from an up-to-date `master` branch:

  ```bash
  git checkout -b <topic-branch-name>
  ```

#### Step 6 : Commit

Make sure git knows your name and email address:

  ```bash
  git config --global user.name "J. Random User"
  git config --global user.email "j.random.user@example.com"
  ```

Commit your changes in logical chunks. Do not combine multiple logical
changes in a single commit. And please adhere to the guidlines below for
commit messages.
Add and commit:

  ```bash
  git add my/changed/files
  git commit
  ```

Writing good commit messages is important. A commit message should describe
what changed and why. Follow these guidelines when writing one:

1. The first line should be 50 characters or less and contain a short
   description of the change. Begin with a capitalized imperative verb,
   for example, "Fix issue #4", not "Fixed issue #4" or "Fixes issue #4".
   All other words in this description should be in lowercase with the
   exception of proper nouns, acronyms, and references to code, such as
   function/variable names.
2. Keep the second line blank.
3. Wrap all other lines at 72 columns.

If your patch fixes an open issue, the issue should be referenced in the first
line of the commit message with the issue number,
e.g. `Fix #4, Q limit violations` and at the end of the message with the full
URL. Use the `Fixes:` prefix for bug fixes. For other references use `Refs:`.
For example, a good commit message might look something like:

  ```text
  Fix issue #4, Q limit violations in CPF.
  
  More detailed explanatory text, if necessary.  Wrap it to about 72
  characters or so.  In some contexts, the first line is treated as the
  subject of an email and the rest of the text as the body.  The blank
  line separating the summary from the body is critical (unless you omit
  the body entirely); tools like rebase can get confused if you run the
  two together.

  Further paragraphs come after blank lines.

  - Bullet points are okay, too.

  - Typically a hyphen or asterisk is used for the bullet, followed by a
    single space, with blank lines in between, but conventions vary here.

  - Use a hanging indent

  Fixes: https://github.com/MATPOWER/matpower/issues/4
  Refs: http://www.mail-archive.com/matpower-l@cornell.edu/msg05557.html
  Refs: https://github.com/MATPOWER/matpower/pull/5
  ```

#### Step 7 : Rebase

Use `git rebase` (not `git merge`) to sync your work from time to time.

    ```bash
    git fetch upstream
    git rebase upstream/master
    ```

And use Git's [interactive rebase][13] feature to tidy up your commits
*before* making them public. See [this article][14] for some helpful background
on `git rebase` vs. `git merge`.

#### Step 8 : Test

Bug fixes and features **should come with tests**, either added to the
appropriate existing test function in `lib/t`, or in a new test function
whose name begins with `t_`, in which case it should also be added to
`test_matpower.m`. See the documentation for [MP-Test][3] and the existing
MATPOWER test files (e.g. [`t_pf`](lib/t/t_pf.m)) for examples of how to
write tests.

You can run your tests by typing the name of your test function,
    ```matlab
    t_pf
    ```
or `test_matpower` to run the entire test suite.

#### Step 9 : Push

#### Step 10 : Submit Pull Request

#### Step 11 : Discuss and update


### Git Workflow and Branching Model

We use [GitHub Flow][7], meaning that the `master` branch should always
be ready for release and all new work is done in descriptively named
branches off of `master`, which are then reviewed via pull requests. The
only addition is that we do still have a `release` branch that always
points to the latest versioned release. We also use tags like `6.0` to
tag each release.



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


Licensing
---------

By submitting a pull request, you represent that you have the right to
license your contribution to PSERC and the community, and agree by
submitting the patch that your contributions are licensed under the
[3-clause BSD license][5].



Documentation
-------------

We can always use help to improve the User's Manual and other documentation.


------
Thanks
------

We would like to express our appreciation to everyone who has contributed to
the MATPOWER project and community for helping to make it a useful tool for
the power systems community. **Thank you!**

--

[1]: https://github.com/MATPOWER/mips
[2]: https://github.com/MATPOWER/most
[3]: https://github.com/MATPOWER/mptest
[4]: https://github.com/ingydotnet/git-subrepo
[5]: https://github.com/MATPOWER/matpower/issues
[6]: http://www.pserc.cornell.edu/matpower/mailinglists.html#discusslist
[7]: http://www.mail-archive.com/matpower-l@cornell.edu/
[8]: http://www.pserc.cornell.edu/matpower/mailinglists.html#devlist
[9]: MATPOWER-dev-guide.md
[10]: https://help.github.com/articles/set-up-git/
[11]: https://help.github.com/articles/fork-a-repo/
[12]: https://github.com/MATPOWER/matpower
[13]: https://help.github.com/articles/interactive-rebase
[14]: https://medium.com/@porteneuve/getting-solid-at-git-rebase-vs-merge-4fa1a48c53aa#.7gmldhj6m


[5]: LICENSE
[6]: CONTRIBUTING.md
[7]: http://scottchacon.com/2011/08/31/github-flow.html
