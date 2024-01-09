# R Package `ifhutil`

[![R 3.6.3, 4.1.1](https://github.com/TumbleOwlee/ifhutil/actions/workflows/r.yml/badge.svg?branch=main)](https://github.com/TumbleOwlee/ifhutil/actions/workflows/r.yml)

This repository contains sources of the `ifhutil` package. This packages provides various utility function to simplify scripts while also providing an clean and pretty format of output messages.

# Quickstart

You can install this package easily using `remotes::install_github(..)` by executing the following command.

```R
remotes::install_github("tumbleowlee/ifhutil")
```

See man page for documentation of all provided functions.

# Example

```R
# Encapsule the main routine for pretty warnings/errors
main <- function() {
    # Initialize and install dependencies.
    ifh.info('Check and install missing dependencies...')
    ifh.init(c('numbers'), quiet = TRUE)

    # Setup CLI argument parser
    option_list = list(
        make_option(c('--annotated'), type = 'character', default = config$annotated,
                    help = 'eggNog-mapper annotation output file (e.g. out.emapper.annotations).', metavar = 'FILE'),
        make_option(c('--quiet'), action = 'store_true', default = config$quiet, help = 'Suppress all output.')
    )
    opt_parser = OptionParser(description = 'Generates GENEID-GO and GENEID-KEGG_ko mappings based on eggNog-mapper output.', option_list = option_list)
    # This also prints the user inputs to provide the user the option to verify
    opt = ifh.parse_args(opt_parser)

    <do-something>
}

# Execute `main()` with prettified log
ifh.run({main()})
