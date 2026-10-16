# install-test

A simple Bash script for simulating APT package installations and saving the results to log files.

The script uses `apt-get -s` to preview installation operations without actually installing or removing any packages.

## Requirements

- Linux distribution with APT (e.g. Ubuntu)
- Bash
- Standard utilities: `date`, `mkdir`, `tee`

## Directory Structure

The following paths are used in my personal environment:

| Path | Purpose |
|---|---|
| `~/.mybash/` | Directory for my personal Bash scripts |
| `~/.mybash/install-test.sh` | Location of the script |
| `~/logs/install-test/` | Directory for simulation logs |

**Note:** The `.mybash` directory is my personal preference, not a system requirement. The script can be stored elsewhere.

The log directory is automatically created by the script if it does not exist.

## Usage

Place `install-test.sh` in `~/.mybash/`.

Add the following alias to your `~/.bashrc`:

`alias install-test="bash ~/.mybash/install-test.sh"`

Reload your Bash configuration using `source ~/.bashrc`.

Run a simulation:

`install-test blender`

The script displays the APT simulation output in the terminal and saves it to a timestamped log file, for example:

`~/logs/install-test/blender_2026-10-16_14-31-23.log`

**No packages are installed or removed.** Simulation results may differ from a future real installation.

## License

Copyright (C) 2026 DauQx82

Licensed under the GNU General Public License v3.0 or later (`GPL-3.0-or-later`).

See the `LICENSE` file for details.
