# SPDX-License-Identifier: Apache-2.0
# Copyright © 2025 Fitiavana Ramanandafy

CURRENT_DIR := $(shell pwd)
IMAGE_NAME := custom

build:
	@docker build \
		-t $(IMAGE_NAME) \
		--build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g) \
		.

run:
	docker run -it --rm -v "$(CURRENT_DIR)/app_home:/home/app" custom

.PHONY: build run
