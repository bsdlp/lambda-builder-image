img-name = bsdlp/lambda-builder
img-commit = $(img-name):$(TRAVIS_COMMIT)

build:
	docker build -t $(img-commit) - < $(CURDIR)/Dockerfile

deploy_commit:
	docker push $(img-commit)

deploy_latest:
	docker tag $(img-commit) $(img-name):latest
	docker push $(img-name):latest
