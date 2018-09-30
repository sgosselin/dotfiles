#!/bin/bash

CSCOPE_DIR="$(pwd)/cscope"

if [[ ! -d "${CSCOPE_DIR}" ]];
then
	mkdir "${CSCOPE_DIR}"
fi

echo "Finding files ..."
find "$(pwd)" -name '*.[ch]' \
	-o -name '*.java' \
	-o -name '*properties' \
	-o -name '*.cpp' \
	-o -name '*.cc' \
	-o -name '*.hpp' \
	-o -name '*.py' \
	-o -name '*.php' > "${CSCOPE_DIR}/cscope.files"

echo "Adding files to cscope db: $(pwd)/cscope.db ..."
cscope -b -i "${CSCOPE_DIR}/cscope.files"

export CSCOPE_DB="$(pwd)/cscope.out"
echo "Exported CSCOPE_DB to: '${CSCOPE_DB}'"
