DOCKER_BASE_IMAGE = $(shell cat Dockerfile | grep FROM | sed 's/.*FROM //')

docker_update:
	docker pull $(DOCKER_BASE_IMAGE)
	docker build -t jkutkut/docker4rust .

version_report:
	@echo "Docker base image: $(DOCKER_BASE_IMAGE)"
	@docker run -t --rm --entrypoint cargo jkutkut/docker4rust --version
	@docker run -t --rm --entrypoint cargo jkutkut/docker4rust watch --version

test_terminal:
	docker run --rm -it jkutkut/docker4rust
