# The Forgotten Lands

# USE THE MOD LAUNCHER TO HAVE AUTO UPDATES
Link : [OpenGOAL Mod Launcher](https://jakmods.dev/#download).

The Forgotten Lands is a new adventure with a new story and levels for you to explore. 

To get to the custom levels, simply start a new game and beat Geyser Rock



# The rest of this README will cover features in the mod. Stop here if you don't wish to be spoiled!


## Crystal Cave
This is the first level being added, here's the list of current features and incoming ones.

**Current features:**
 - Level Geometry
 - Textures
 - Invisible walls and events (void/damaging/etc)
 - Geometry Lighting
 - Collectable Actors (orbs/cell/eco/etc)
 - Particles Actors
 - Actor Specific Lighting
 - Warp to level
 - Working menu and tasks
 - Working checkpoints and load boundaries
 - Jak dynamic lighting
 - Water volumes (functional)
 - Ambient sounds
 - Level name pop-up
 - Platform paths
 - Common actors textures
 - Custom Music
 - Custom Hints
 - Custom Actors
  - Gondola
  - Electric arc
  - Super green crystal

**Incoming features:**
- [Tools required] Water (Visual)
- [Tools required] Enemies
- [Tools required] Alpha textures
- [Tools required] Metallic textures
- [Tools required] Working sky

## Crescent Top
Second level in the mod

**Current features:**
 - Everything also in Crystal Cave
 - Custom ring challenge
 - Emerging and sinking platforms particles
 - Working Zoomers

## Energy Bay
Third level in the mod

**Current features:**
 - Everything also in Crystal Cave and Crescent Top
 - Custom Actors
  - Super red crystal
  - Breakable boulder

Forked from OpenGoal-Mod-Base :
# OpenGoal-Mod-Base
Serves as a base template for openGOAL mods that will be supported via [OG-ModLauncher](https://github.com/OpenGOAL-Mods/OG-ModLauncher).

- Please ensure you are not committing copyrighted material to your repo (the `.gitignore` should help prevent this). 
- Generally speaking you should only be updating certain directories/files:
  - GOAL code (`/goal_src`)
  - Assets specific to the PC Port (`/game/assets/jak1/`, `/custom_assets/`)
  - The executable binaries (`/out/build/Release/goalc.exe`, `/out/build/Release/gk.exe`, `/out/build/Release/extractor.exe`)
  - Decompiler config (`/decompiler/config`)

## Custom Navmesh Implementation and Example

LuminarLight made changes that allow placing custom navmesh into Jak 1 levels. This will hopefully become useless one day, if proper navmesh support is ever added to OpenGOAL.

The navmesh system in Jak II is more advanced, I haven't managed to figure it out yet.

### Getting Started

Please keep in mind that you are expected to be familiar with custom levels and GOAL. Still, I tried to make things as understandable as possible.

I would recommend copying an existing navmesh as a start. You can use the inspect method I made. The actor whose navmesh you want to copy must be loaded. Example:
`(inspect (-> (the-as entity-actor (entity-by-name "snow-bunny-55")) nav-mesh))`

You should change the origin and bounds, depending on where you want to place your navmesh.

I usually just remove the nodes, because I do not understand it and things seem fine without it. But keep in mind that every navmesh that is in the game has at least one node.

We do not understand route, but it is needed - otherwise game will crash. If you copy an existing navmesh, the route data is copied correctly. But since we don't understand it, for fully custom navmesh we can never have proper route data. Correct route data is essential if you want to take advantage of gap triangles (where enemies jump).

You can make multiple enemies use the same navmesh. To do this, create the navmesh through code for the first actor, like in the example. And for the other actors, add a lump that tells the game to use another actor's navmesh. Reference is by aid. Example: `"nav-mesh-actor": ["uint32", 40000]`. Tip: You can do the same thing with paths, using the `path-actor` lump.

If the game crashes when you approach a custom navmesh, make sure you added `:custom-hacky? #t` to your custom navmesh definition. If that is there, then check if the actor has a path. It needs a path.

If something is still unclear, please look at the code. I added a lot of comments.

### Final Words

I am not an expert at decompiling, so my methods were not the most efficient. But with a lot of time, I managed to figure things out. There are probably people who could do this a lot better than me. Hopefully it will happen.

Also, I know my inspect method is not perfect. But it is very tedious to write such a thing, so I just included what we really need. And I think the nodes part could use a cleanup.

I am happy if anyone finds this useful. But I have a request: If you learn more about navmeshes, especially things that would benefit other modders as well, please let me know. And maybe we will add it to this branch.

*~~Luminar Light*

---

<p align="center">
  <img width="500" height="100%" src="./docs/img/logo-text-colored-new.png">
</p>

<p align="center">
  <a href="https://opengoal.dev/docs/intro" rel="nofollow"><img src="https://img.shields.io/badge/Documentation-Here-informational" alt="Documentation Badge" style="max-width:100%;"></a>
  <a title="Crowdin" target="_blank" href="https://crowdin.com/project/opengoal"><img src="https://badges.crowdin.net/opengoal/localized.svg"></a>
  <a target="_blank" rel="noopener noreferrer" href="https://github.com/open-goal/jak-project/actions/workflows/build-matrix.yaml"><img src="https://github.com/open-goal/jak-project/actions/workflows/build-matrix.yaml/badge.svg" alt="Linux and Windows Build" style="max-width:100%;"></a>
  <a href="https://www.codacy.com/gh/open-goal/jak-project/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=open-goal/jak-project&amp;utm_campaign=Badge_Grade" rel="nofollow"><img src="https://app.codacy.com/project/badge/Grade/29316d04a1644aa390c33be07289f3f5" alt="Codacy Badge" style="max-width:100%;"></a>
  <a href="https://discord.gg/VZbXMHXzWv"><img src="https://img.shields.io/discord/756287461377703987" alt="Discord"></a>
</p>

## Please read first <!-- omit from toc -->

> [!IMPORTANT]
> Our repositories on GitHub are primarily for development of the project and tracking active issues. Most of the information you will find here pertains to setting up the project for development purposes and is not relevant to the end-user.

For a setup guide on how to install and play the game there is the following video that you can check out: https://youtu.be/K84UUMnkJc4

For questions or additional information pertaining to the project, we have a Discord for discussion here: https://discord.gg/VZbXMHXzWv

Additionally, you can find further documentation and answers to **frequently asked questions** on the project's main website: https://opengoal.dev

> [!WARNING]
> **Do not use this decompilation project without providing your own legally purchased copy of the game.** We do not distribute any assets from the game - you must use your own legitimately obtained PS2 copy of the game. We support every retail PAL, NTSC, and NTSC-J build, including Greatest Hits copies.

- [Project Description](#project-description)
  - [Current Status](#current-status)
  - [Methodology](#methodology)
- [Setting up a Development Environment](#setting-up-a-development-environment)
  - [Docker](#docker)
  - [Linux](#linux)
    - [Ubuntu (20.04)](#ubuntu-2004)
    - [Arch](#arch)
    - [Fedora](#fedora)
  - [Windows](#windows)
    - [Required Software](#required-software)
    - [Using Visual Studio](#using-visual-studio)
  - [MacOS](#macos)
    - [Intel Based](#intel-based)
    - [Apple Silicon](#apple-silicon)
  - [VSCode](#vscode)
    - [Building and Debugging](#building-and-debugging)
  - [Building and Running the Game](#building-and-running-the-game)
    - [Extract Assets](#extract-assets)
    - [Build the Game](#build-the-game)
    - [Run the Game](#run-the-game)
      - [Connecting the REPL to the Game](#connecting-the-repl-to-the-game)
      - [Running the Game Without Auto-Booting](#running-the-game-without-auto-booting)
    - [Interacting with the Game](#interacting-with-the-game)
- [Technical Project Overview](#technical-project-overview)
  - [`goalc`](#goalc)
    - [Running the compiler](#running-the-compiler)
  - [`decompiler`](#decompiler)
    - [Running the decompiler](#running-the-decompiler)
  - [`goal_src/`](#goal_src)
  - [`game` runtime](#game-runtime)

## Project Description

This project is to port the original Jak and Daxter and Jak II to PC. Over 98% of the games are written in GOAL, a custom Lisp language developed by Naughty Dog. Our strategy is:
- decompile the original game code into human-readable GOAL code
- develop our own compiler for GOAL and recompile game code for x86-64
- create a tool to extract game assets into formats that can be easily viewed or modified
- create tools to repack game assets into a format that our port uses.

Our objectives are:
- make the port a "native application" on x86-64, with high performance. It shouldn't be emulated, interpreted, or transpiled.
- Our GOAL compiler's performance should be around the same as unoptimized C.
- try to match things from the original game and development as possible. For example, the original GOAL compiler supported live modification of code while the game is running, so we do the same, even though it's not required for just porting the game.
- support modifications. It should be possible to make edits to the code without everything else breaking.

We support both Linux and Windows on x86-64.

> We do not support, or plan to support the ARM architecture.  This means that this will not run on devices such as a mobile device.

### Current Status

Jak 1 is largely playable from start to finish with a handful of bugs that are continually being ironed out. Jak 2 is in development.

![](./docs/img/promosmall1.png)
![](./docs/img/promosmall2.png)

YouTube playlist:
https://www.youtube.com/playlist?list=PLWx9T30aAT50cLnCTY1SAbt2TtWQzKfXX

### Methodology

To help with decompiling, we've built a decompiler that can process GOAL code and unpack game assets. We manually specify function types and locations where we believe the original code had type casts (or where they feel appropriate) until the decompiler succeeds, then we clean up the output of the decompiled code by adding comments and adjusting formatting, then save it in `goal_src`.

Our decompiler is designed specifically for processing the output of the original GOAL compiler. As a result, when given correct casts, it often produces code that can be directly fed into a compiler and works perfectly. This is continually tested as part of our unit tests.

## Setting up a Development Environment

The remainder of this README is catered towards people interested in building the project from source, typically with the intention on contributing as a developer.

If this does not sound like you and you just want to play the game, refer to the above section [Quick Start](#quick-start)

### Docker

All three Linux systems are supported using Docker. 

Pick your supported prefered flavour of linux and build your chosen image

```
docker build -f docker/(Arch|Fedora|Ubuntu)/Dockerfile -t jak .
```

This will create an image with all required dependencies and already built.

```
docker run -v "$(pwd)"/build:/home/jak/jak-project/build -it jak bash
```

Note: If you change the content of the `build/` directory you'll need to rerun the `build` command. Alternatively you can get the build via `docker cp`.

This will link your `build/` folder to the images so can validate your build or test it on an external device. 

Docker images can be linked into your IDE (e.g. CLion) to help with codesniffing, static analysis, run tests and continuous build.

Unfortunately you'll still need task runner on your local machine to run the game or instead, manually run the game via the commands found in `Taskfile.yml`.

### Linux

#### Ubuntu (20.04)

Install packages and init repository:

```sh
sudo apt install gcc make cmake ninja-build build-essential g++ nasm clang-format libxrandr-dev libxinerama-dev libxcursor-dev libpulse-dev libxi-dev python libgl1-mesa-dev libssl-dev
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
```

Compile:

```sh
cmake -B build && cmake --build build -j 8
```

Run tests:

```sh
./test.sh
```

Note: we have found that `clang` and `lld` are significantly faster to compile and link than `gcc`, generate faster code, and have better warning messages. To install these:

```sh
sudo apt install lld clang
```

and run `cmake` (in a fresh build directory) with:

```sh
cmake -DCMAKE_SHARED_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ ..
```

#### Arch

Install packages and init repository:

```sh
sudo pacman -S cmake libpulse base-devel nasm python libx11 libxrandr libxinerama libxcursor libxi
yay -S go-task
```

For Arch only, replace `task` with `go-task` in the rest of the instructions.

Compile:

```sh
cmake -B build && cmake --build build -j 8
```

Run tests:

```sh
./test.sh
```

#### Fedora

Install packages and init repository:

```sh
sudo dnf install cmake python lld clang nasm libX11-devel libXrandr-devel libXinerama-devel libXcursor-devel libXi-devel pulseaudio-libs-devel mesa-libGL-devel
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
```

Compile with `clang`:

```sh
cmake -DCMAKE_SHARED_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -B build
cmake --build build -j$(nproc)
```

Run tests:

```sh
./test.sh
```

### Windows

#### Required Software

We primarily use Visual Studio on Windows for C++ development.  Download the latest community edition from [here](https://visualstudio.microsoft.com/vs/).  At the time of writing this is Visual Studio 2022.

You will require the `Desktop development with C++` workload.  This can be selected during the installation, or after via the `Visual Studio Installer`, modifying the Visual Studio Installation.

On Windows, it's recommended to use a package manager, we use Scoop. Follow the steps on the bottom of the homepage [here](https://scoop.sh/) to get it.

Once Scoop is installed, run the following commands:

```sh
scoop install git llvm nasm python task
```

#### Using Visual Studio

Clone the repository by running the following command in your folder of choice.

```sh
git clone https://github.com/open-goal/jak-project.git
```

This will create a `jak-project` folder, open the project as a CMake project via Visual Studio.

![](./docs/img/windows/open-project.png)

Then build the entire project as `Windows Release (clang)`. You can also press Ctrl+Shift+B as a hotkey for Build All.  We currently prefer `clang` on Windows as opposed to `msvc`, though it should work as well!

![](./docs/img/windows/release-build.png)
![](./docs/img/windows/build-all.png)

### MacOS

> NOTE: Running the game requires an Apple Silicon Mac running macOS Sequoia, or an Intel Mac.

Ensure that you have Xcode command line tools installed (this installs things like Apple Clang).  If you don't, you can run the following command:

```bash
xcode-select --install
```

On Apple Silicon, Rosetta 2 also must be installed:

```bash
softwareupdate --install-rosetta
```

#### Building for x86_64

```bash
brew install cmake nasm ninja go-task clang-format
cmake -B build --preset=Release-macos-x86_64-clang
cmake --build build --parallel $((`sysctl -n hw.logicalcpu`))
```

#### Building for ARM64 (experimental, unsupported)

```bash
brew install cmake ninja go-task clang-format
cmake -B build --preset=Release-macos-arm64-clang
cmake --build build --parallel $((`sysctl -n hw.logicalcpu`))
```

You may have to add the MacOS SDK to your `LIBRARY_PATH`:
- `export LIBRARY_PATH="$LIBRARY_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"`

### VSCode

If you either don't want to or cannot use Visual Studio for working with the C++ project, VSCode is a good alternatively.

The `clangd` extension is [recommended](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) and requires `clangd` to be on your `$PATH`.  If you can run `clangd` in a terminal successfully then you should be good to go.

Once you generate your CMake for the first time the clangd LSP should be able to index the project and give you intellisense.

#### Building and Debugging

TODO - Consider Contributing Documentation :)

### Building and Running the Game

Getting a running game involves 4 steps:

1. Build C++ tools (follow Getting Started steps above for your platform)
2. Extract assets from the game
3. Build the game
4. Run the game

#### Extract Assets

First, setup your settings so the following scripts know which game you are using, and which version. For the black label version of the game, run the following in a terminal:

```sh
task set-game-jak1
task set-decomp-ntscv1
```

For other versions of the game, you will need to use a different `-set-decomp-<VERSION>` command. An example for the PAL version:

```sh
task set-game-jak1
task set-decomp-pal
```

> Run `task --list` to see the other available options

> At the time of writing, only Jak 1 is expected to work end-to-end!

The first step is to extract your ISO file contents into the `iso_data/<game-name>` folder.  In the case of Jak 1 this is `iso_data/jak1`.

Once this is done, open a terminal in the `jak-project` folder and run the following:

```sh
task extract
```

#### Build the Game

The next step is to build the game itself.  To do so, in the same terminal run the following:

```sh
task repl
```

You will be greeted with a prompt like so:

```sh
 _____             _____ _____ _____ __
|     |___ ___ ___|   __|     |  _  |  |
|  |  | . | -_|   |  |  |  |  |     |  |__
|_____|  _|___|_|_|_____|_____|__|__|_____|
      |_|
Welcome to OpenGOAL 0.8!
Run (repl-help) for help with common commands and REPL usage.
Run (lt) to connect to the local target.

g >
```

Run the following to build the game:

```sh
g > (mi)
```

> IMPORTANT NOTE! If you're not using the non-default version of the game, you may hit issues trying to run `(mi)` in this step. An example error might include something like:
>
> `Input file iso_data/jak1/MUS/TWEAKVAL.MUS does not exist.`
>
> This is because the decompiler inputs/outputs using the `gameName` JSON field in the decompiler config. For example if you are using Jak 1 PAL, it will assume `iso_data/jak1_pal` and `decompiler_out/jak1_pal`.  Therefore, you can inform the REPL/compiler of this via the `gameVersionFolder` config field described [here](./goal_src/user/README.md)

#### Run the Game

Finally the game can be ran.  Open a second terminal from the `jak-project` directory and run the following:

```sh
task boot-game
```

The game should boot automatically if everything was done correctly.

##### Connecting the REPL to the Game

Connecting the REPL to the game allows you to inspect and modify code or data while the game is running.

To do so, in the REPL after a successful `(mi)`, run the following:

```sh
g > (lt)
```

If successful, your prompt should change to:

```sh
gc>
```

For example, running the following will print out some basic information about Jak:

```sh
gc> *target*
```

##### Running the Game Without Auto-Booting

You can also start up the game without booting.  To do so run the following in one terminal

```sh
task run-game
```

And then in your REPL run the following (after a successful `(mi)`):

```sh
g > (lt)
[Listener] Socket connected established! (took 0 tries). Waiting for version...
Got version 0.8 OK!
[Debugger] Context: valid = true, s7 = 0x147d24, base = 0x2123000000, tid = 2438049

gc> (lg)
10836466        #xa559f2              0.0000        ("game" "kernel")

gc> (test-play)
(play :use-vis #t :init-game #f) has been called!
0        #x0              0.0000        0

gc>
```

#### Interacting with the Game

In the graphics window, you can use the period key to bring up the debug menu. Controllers also work, using the same mapping as the original game.

Check out the `pc_debug`, `examples` and `pc` folders under `goal_src` for some examples of GOAL code we wrote. The debug files that are not loaded automatically by the engine have instructions for how to run them.

## Technical Project Overview

There are four main components to the project.

1. `goalc` - the GOAL compiler for x86-64
2. `decompiler` - our decompiler
3. `goal_src/` - the folder containing all OpenGOAL / GOOS code
4. `game` - aka the runtime written in C++

Let's break down each component.

### `goalc`

Our implementation of GOAL is called OpenGOAL.

All of the compiler source code is in `goalc/`. The compiler is controlled through a prompt which can be used to enter commands to compile, connect to a running GOAL program for interaction, run the OpenGOAL debugger, or, if you are connected to a running GOAL program, can be used as a REPL to run code interactively. In addition to compiling code files, the compiler has features to pack and build data files.

#### Running the compiler

**Environment Agnostic**

If you have installed `task` as recommended above, you can run the compiler with `task repl`

**Linux**

To run the compiler on Linux, there is a script `scripts/shell/gc.sh`.

**Windows**

On Windows, there is a `scripts/batch/gc.bat` scripts and a `scripts/batch/gc-no-lt.bat` script, the latter of which will not attempt to automatically attach to a running target.

### `decompiler`

The second component to the project is the decompiler.

The decompiler will output code and other data intended to be inspected by humans in the `decompiler_out` folder. Files in this folder will not be used by the compiler.

#### Running the decompiler

You must have a copy of the PS2 game and place all files from the DVD inside a folder corresponding to the game within `iso_data` folder (`jak1` for Jak 1 Black Label, etc.), as seen in this picture:

![](./docs/img/iso_data-help.png)

The decompiler will extract assets to the `assets` folder. These assets will be used by the compiler when building the port, and you may want to turn asset extraction off after running it once.

**Environment Agnostic**

If you have installed `task` as recommended above, you can run the compiler with `task decomp`

**Linux**

To run, you can use `scripts/shell/decomp.sh` to run the decompiler

**Windows**

To run, you can use `scripts/shell/decomp-jak1.bat` to run the decompiler

### `goal_src/`

The game source code, written in OpenGOAL, is located in `goal_src`. All GOAL and GOOS code should be in this folder.

### `game` runtime

The final component is the "runtime", located in `game`. This is the part of the game that's written in C++.

In the port, that includes:
- The "C Kernel", which contains the GOAL linker and some low-level GOAL language features. GOAL has a completely custom dynamically linked object file format so in order to load the first GOAL code, you need a linker written in C++. Some low-level functions for memory allocation, communicating with the I/O Processor, symbol table, strings, and the type system are also implemented in C, as these are required for the linker. It also listens for incoming messages from the compiler and passes them to the running game. This also initializes the game, by initializing the PS2 hardware, allocating the GOAL heaps, loading the GOAL kernel off of the DVD, and executing the kernel dispatcher function. This is in the `game/kernel` folder. This should be as close as possible to the game, and all differences should be noted with a comment.
- Implementation of Sony's standard library. GOAL code can call C library functions, and Naughty Dog used some Sony library functions to access files, memory cards, controllers, and communicate with the separate I/O Processor. The library functions are in `game/sce`. Implementations of library features specific to the PC port are located in `game/system`.
- The I/O Processor driver, OVERLORD. The PS2 had a separate CPU called the I/O Processor (IOP) that was directly connected to the DVD drive hardware and the sound hardware. Naughty Dog created a custom driver for the IOP that handled streaming data off of the DVD. It is much more complicated than I first expected. It's located in `game/overlord`. Like the C kernel, we try to keep this as close as possible to the actual game.
- Sound code. Naughty Dog used a third party library for sound called `989SND`. Code for the library and an interface for it is located in `game/sound`.
- PC specific graphics code. We have a functional OpenGL renderer and context that can create a game window and display graphics on it. The specific renderers used by the game however are mostly implemented. Aside from post-processing effects, everything in the game is rendered. This is located in `game/graphics`. While many liberties will be taken to make this work, the end result should very closely match the actual game.
- Extra assets used by the port in some fashion, located in `game/assets`. These include extra text files, icons, etc.
