# Maven for the Confused #

[Maven](http://maven.apache.org) is a build system, like Ant, but a whole bunch more than that. One of its main selling points is that it handles library dependencies.

The s2wad code bundle assumes the projects will be built with Maven. Using Maven, however, a typical, non-Maven archive can be created, which can then be decompressed wherever you want.

You'll still need to install Maven (and for anything but trivial projects, I recommend using it or a similar tool). Once you get Maven installed, drop into the chapter you want to create a typical directory layout for and type `mvn assembly:assembly`.

If you haven't run Maven for awhile, take a breather: it's about to download the entire internet (not really... but it _will_ download a _lot_ of stuff). When it's done, however, the `target` directory will contain a few flavors of archives with the code and libraries in it. Decompress whichever one you want and you'll have a typical layout.

That said, lots of big projects use Maven (including Struts 2). Even a passing familiarity with it (which is about all I have) is very beneficial, because it'll allow you to build your own copies of Struts 2. This is handy for many reasons: you can get recent bug fixes that haven't been released, you can fix bugs yourself and provide patches back to the project, and you can impress all your friends with your mad Maven skillz.