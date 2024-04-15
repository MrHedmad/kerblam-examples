# Contributing to the examples

Thank you for wanting to contribute to Kerblam! All contributors are listed in 
[the main kerblam repository](https://github.com/MrHedmad/kerblam/blob/main/CONTRIBUTING.md).

## Adding new examples
If you want to add a new example, make a new folder under `examples/` with a
representative name.
Create all the files you need (eg. the basic folder structure, input files, etc...).

Kerblam! uses these examples as tests. It looks for a `run` shellfile in the root of
the example directory with the commands to run the example, and it looks for any
failure.
It also checks that after the run the example has returned to its original state
(e.g. no new files or delete files) after `run` completes.

This means that you need to place all setup, execution and teardown code in `run.`

Each new example is not automatically picked up as a test.
Read the [kerblam CONTRIBUTING guide](https://github.com/MrHedmad/kerblam/blob/main/CONTRIBUTING.md)
to learn more on how to do that.

> [!IMPORTANT]
> Remember to include a `set -e` directive in the `run` scripts to allow for failing
> tests to be picked up when kerblam runs its tests!
> If you do not, only the last command in the `run` file will be evaluated for failure,
> as since `kerblam data clean` usually works, it invalidates the whole test.
> See https://github.com/MrHedmad/kerblam/issues/91 for more information on why
> this notice was added here.

## Recording demos
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

