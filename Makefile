all: build

build:
	@docker build --tag=julichan/docker-gitlab-multi-runner .

release: build
	@docker build --tag=julichan/docker-gitlab-multi-runner:$(shell cat VERSION) .
