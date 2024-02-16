# Using containers for pipes

You can containerize pipelines simply by writing a dockerfile in the
`src/dockerfiles` folder with the same name as the pipeline to dockerize.

Kerblam! takes care of setting the correct mountpoints and run the correct
commands for you.

Notice how the container recipe is written as if it was inside the root directory
of the project (e.g. next to the `kerblam.toml; file)

<div align="center">

![If you see this, open an issue. The GIF is broken.](https://s9.gifyu.com/images/SFSlr.gif)

[See this example on Asciinema](https://asciinema.org/a/640902)

</div>

