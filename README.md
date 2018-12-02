# objectification
Experiments w/ [objectify](https://github.com/parenthetical-e/objectify)

# Makefiles
If the intial images are present in `stim/` running `make all` will recreate all simulations and analyses.

**Note**

All makefiles assume the `objectify` module is in `~/Code/objectify`.  Each Makefile (but the master) has a `OBJBIN=~/Code/objectify/bin` variable definition at the top. If `objectify` is somewhere else, adjust all OBJBIN to match.

For example if you put `objectify` in `~/Adam/Loves/Little/Ponies/.` change `OBJBIN` in all files to `OBJBIN=~/Adam/Loves/Little/Ponies/objectify/bin`.
