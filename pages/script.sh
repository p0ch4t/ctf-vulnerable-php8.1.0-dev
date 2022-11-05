#!/bin/bash

lista=$(find / -name "cat" -o -name "tail" -o -name "head" -o -name "less" -o -name "more" -o -name "nl" -o -name "nano" -o -name "vim" -o -name "vi")

for command in $lista; do
	rm $command
done
