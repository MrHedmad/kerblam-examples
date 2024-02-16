# Contributing to the examples

## Adding new examples
If you want to add a new example, make a new folder under `examples/` with a
representative name.
Create all the files you need (eg. the basic folder structure, input files, etc...).

If you need to create bulky input files that cannot be hosted in this repository
but should not be managed by kerblam!, create a `example-setup` pipeline in
`src/pipes` that sets up the example and a `example-teardown` that cleans it up.
In general, however, it's best to not need such a complicated setup: examples
should be self-contained and return to their original form (i.e. compatible with this
repository) by just `kerblam data clean`.

After you add an example, use [`asciinema`](https://asciinema.org) to record
a small demo of the example.
Be sure to open a small terminal (literally, resize the window to be smallish)
so that the examples are not too zoomed out.

You can use a command like this one to record the snippet:
```bash
# from inside examples/your_example/
asciinema rec ../my_example.cast -i 0.5
```
The `../my_example.cast` saves the output cast in the `examples/` folder, so that
it does not disturb the recording.
The `-i 0.5` flag limits idle time to half a second, so you can pause to think
what your next command will be with no repercussions on the output recording.

Once you're done, see the recording with `asciinema play ../my_example.cast`.
If you like it, upload it with `asciinema upload ../my_example.cast`, follow
the link that asciinema outputs, and give the recording a title.
Then, make it public.

> [!IMPORTANT]
> You might need to tweak the recording options if the recording in the website
> shows missing emojis or characters (e.g. set the font to `Fira Code Nerd Font`
> in the options of the recording).

Convert your `.cast` file to a `.gif` by using `https://github.com/asciinema/agg`.
After installation, just run something like this
```bash
agg ./remote.cast remote_files.gif --speed 0.6 --font-family "FiraCode Nerd Font Mono"
```
You can tweak the speed of the recording (`--speed 0.6`) and the font family
(to sidestep the same problems detailed above on asciinema.org) to your liking.

Upload the resulting gif (if it is of your liking) to some online service.
I recommend [Gifyu](https://gifyu.com/), since it does not degrade the quality
of the gif too much.

Add a README.md file and write a small description of what the example is
showcasing, and what the user should pay attention to.
Add the link to the gif by right clicking it > save link to image and adding
the following snippet in the README:
```md
<div align="center">

![If you see this, open an issue. The GIF is broken.](<LINK TO REMOTE GIF>)

[See the above on Asciinema](<LINK TO ASCIINEMA.ORG RECORDING>)

</div>
```

