# Example Project for BUCK2

## Getting Buck2

Please check the [buck2 documentation](https://github.com/facebook/buck2#getting-started) for how to install the buck2 binary.

The easiest way is probably to [download prebuild binaries](https://github.com/facebook/buck2/releases/tag/latest) from the latest build.

Make sure the `buck2` binary is in PATH.

## Initialising the repository

The buck2 prelude and jsone Erlang library are pulled in through git submodules, that need to be initialised:

```
git submodule update --init --recursive
```

## Toolchains

The sample repository sets up a single Erlang toolchain (think OTP version, and where the binaries are located). The
toolchain uses `erl`, `erlc`, and `escript` from whatever OTP installation is currently in the PATH.

The toolchains are defined in the `toolchains/` folder.

## Building

You should be able to build targets by simply typing
```
# everything
buck2 build //...
# all targets in a folder
buck2 build //third-party:
# specific target
buck2 build //apps/beam_sto:beam_sto
```

You can also open an Erlang shell for a given `erlang_application` target:

```
buck2 run //apps/beam_sto:beam_sto
```

## More

`buck2` is a powerful build tool, and comes with a scripting and query engine, integration into cloud build infrastructure and more.

Checkout the buck2 documentation: https://buck2.build/
