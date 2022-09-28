# Generate file with extended ASCII characters:
#
# Usage:
#
# 1. UTF-8 encoded file:
#    ./sample-file.sh > sample-file-utf8.txt
#
# 2. ANSI/ISO-8859-1 encoded file:
#    ./sample-file.sh | iconv -c -f UTF-8 -t ISO8859-1 > sample-file-iso-8859-1.txt
#

awk '
    BEGIN {
        printf("Line 1: ALL OK\r\n");
        printf("Line 2: Qu%cbec\r\n", 233);
        printf("Line 3: ALL OK\r\n");
    }
'
