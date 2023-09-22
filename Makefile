mkfile_path := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

all:
	python3 src/util/generate_build_files.py cmake

clean:
	find "$(mkfile_path)" -mindepth 1 -maxdepth 1 ! -name Makefile ! -name .github ! -name README.md \
		! -name .git ! -name .gitmodules ! -name src -delete
