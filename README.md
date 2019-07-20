# fatls for folder with more than 100000 files

install deps

	sudo apt install build-essential 

compile

	make

run

	./fatls
	--------------- nread=312 ---------------
	inode#    file type  d_reclen  d_off   d_name
	 2243131  directory    24          1  .
	   50036  directory    24          2  ..
	 2243138  regular      32         19  fatls.c
	 2243204  regular      40         22  .Makefile.swp
	 2243206  regular      32         23  Makefile
	 2243208  regular      32         32  fatls.o
	 2243245  directory    24         35  .git
	 2243353  regular      40         38  .README.md.swp
	 2243357  regular      32         39  README.md
	 2243364  regular      32 2147483647  fatls
	

really based on this
* https://stackoverflow.com/questions/54241059/how-do-i-include-the-s64-and-u64-types-used-by-the-linux-dirent64-struct and this
* https://unix.stackexchange.com/questions/120077/the-ls-command-is-not-working-for-a-directory-with-a-huge-number-of-files
* http://unixetc.co.uk/2012/05/20/large-directory-causes-ls-to-hang/

just changed the BUFFER SIZE to be faster with big directories (which is the inital problem of standard ls)
