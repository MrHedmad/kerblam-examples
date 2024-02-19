## Safe cleanup after failure

Even if your pipes fail, Kerblam! will undo any profiles or changes that it
made to your data before the pipe was executed.

This is also true if you kill the pipeline with `CTRL-C`.

This example has a single profile, but the pipeline is setup to fail.
Note how the `limerick.txt` and `other_limerick.txt` files are the same after
the pipe has failed, since Kerblam! has cleaned everything up.

<div align="center">

![If you see me, file an issue. The GIF is broken.](https://s9.gifyu.com/images/SFNLR.gif)

[See the above on Asciinema](https://asciinema.org/a/641442)

</div>
