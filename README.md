Paket 3 dot net core warning issue reproduction
===============================================

# Instructions

* Double click `paket-install.cmd`
* See warnings in output

# Description

This is an empty solution with just a basic project. It uses .net452 and only .net452.

Adding `AutoFixture` to this project. `AutoFixture` supports .net core.

We get warnings about `System.Collections` not containing libraries for .net452. This is correct. But we really aren't using it.

If we switched the main output to .net core, it would work fine.

  