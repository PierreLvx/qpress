# qpress - Portable high-speed file archiver

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/PierreLvx/qpress/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/PierreLvx/qpress/tree/master)

This repo is a copy of the latest [publicly available](http://www.quicklz.com/) version of `qpress`, with several patches, including MacOS compatibility.

Please see the CircleCI build matrix for a list of tested build environments.

Pull requests are welcome.

## Usage

```
qpress 1.1 - Copyright 2006-2010 Lasse Reinhold - www.quicklz.com
Using QuickLZ 1.4.1 compression library
Compiled for: Windows [*nix]    [x86/x64] RISC    32-bit [64-bit]

Compression:
    qpress [-rovfCBPLKT] <source file/dir search pattern> <destination file>
    qpress -i[ovfBPLKT] <filename to give stdin data> <destination file>

Decompression:
    qpress -d[ovfBPTn] <source file> <destination directory>

Benchmark and recovery:
    qpress -m[LT] <source file>
    qpress -R <corrupted compressed file> <destination directory>

Flags:
    -d   Decompress
    -Ln  Set compression level to n where n = 1, 2 or 3 (default = 1)
    -r   Include sub directories during compression
    -v   Show progress information during compression and decompression
    -i   Read from stdin (omit source file or file/dir search pattern)
    -o   Write to stdout (omit destination file or directory)
    -f   Overwrite existing files during compression and decompression (default
         is to abort)
    -C   Continue if a source file cannot be opened during compression (default
         is to abort)
    -Tn  Use n threads/cores where n = 1 to 256 (default = 2). Be aware of
         memory usage with large n
    -Kn  Read from disk in n KiB chunks during compression where n = 64 to
         32768 (default = 64). Be aware of memory usage with large n
    -B   Windows only: Disable file system caching (FILE_FLAG_NO_BUFFERING) to
         prevent cache of other applications from being be flushed. Keep
         enabled if files are small and need further processing
    -Pn  Windows only: Set CPU and disk I/O priority to n where 1 = BACKGORUND
         (Vista, 7, 2008 only), 2 = IDLE, 3 = NORMAL or 4 = ABOVE (default = 3)

Examples of compression:
    qpress -v file1.xml file2.xml file3.xml database.qp
    qpress -vfK4096T2 *.xml database.qp 2> log.txt
    qpress -ovL3K *.xml > database.qp
    cat database.xml | qpress -i database.xml database.qp
    cat database.xml | qpress -io database.xml > database.qp

Examples of decompression:
    qpress -d database.qp ./dir
    qpress -do database.qp > database.xml
    cat database.qp | qpress -di .

Notes:
When compressing on *nix with -r flag, file/dir search pattern only filters in
top level directory (directories matching in top level will be included fully).

If a compressed file contains multiple files and is decompressed to stdout, all
files will be concatenated in a continuous stream.

It's recommended to use .qp as filename suffix.
```

## Credits

Copyright Lasse Reinhold 2006-2010.

GPL 1, 2 and 3 licensed.
