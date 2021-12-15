# Log4Shell-Scanner_win
An Log4Shell convenience scanner for Microsoft Windows-based systems based on [Velociraptor](https://github.com/Velocidex/velociraptor) and yara (CVE-2021-44228).


## What's this?
This is a convenience scanner of the affected Apache Log4J versions of CVE-2021-44228 either used directly as dependencies in software and applications, or embedded and packaged within.

See more at https://www.itrelation.dk/log4shell (danish).


| Will this?                                                                             |  :white_check_mark::x: |
|----------------------------------------------------------------------------------------| ---------------------- |
| Remediate the vulnerability                                                            | :x:   |
| Find possible indicators of Log4J on a windows system?                                 | :white_check_mark: |
| Find all possible variants of Log4J even if it's heavily modified from the vendor side | :x: |

## How to use
1. [Download](https://github.com/IT-Relation-CDC/OpenSSL3.x-Scanner_win/archive/refs/heads/main.zip) or clone this repository.
2. Run either "run_64bit.ps1" or "run_32bit.ps1" by right-clicking the file and choosing "Run with powershell".
3. A powershell-window will be open as long as the scanner is running, when done it will close.
4. Initial benchmarking of the scanner is set to 20-30 minutes for a run, velociraptor is set with the --cpu-limit=5 flag to avoid disruptions, this can of course be removed if wanted in the .ps1 files.
5. A file named `log4j_SEE_YOUR_RESULTS_HERE.zip` should be put in the directory of the scanner.
6. Unzip this file and open either the json or csv file to see where it found possible indicators of the affected Log4J version.
7. 

## Known issues
- Mounted network drives can cause issues and large wait times for the scan, please consider disconnecting these before starting.

## Contributing
If you would like to contribute:

1. Fork the repository
2. Make and push your contributions
3. Make a Pull Request

## Contact
This repository, and anything within, comes "as-is". IT Relation CDC does not provide support or similar in regards to running the scanner, or in understanding the result outside of what is found in this README.

IT Relation CDC provides services as listed within our [RFC2350](https://itrelation.dk/rfc2350.txt).

## License
This repository is licensed under the AGPL-3.0 license - please see [LICENSE](LICENSE) for license details.

## Credits
- `mgreen27` - Velociraptor Artifact

## Disclaimer
This repository and software comes as-is. IT Relation CDC, authors, and contributors of this repository assumes no responsibility for errors or omissions, or for damages resulting from the use of the information and software contained within. As such, IT Relation CDC, authors, and contributors of this repository assumes no liability nor obligation as arising from the provision herein.