IMAGE_NAME = hlowrld
IMAGE_TAG = v1 

all: build push deploy

build:
	@docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

push:
	@docker tag ${IMAGE_NAME}:${IMAGE_TAG} rakesh446/${IMAGE_NAME}:${IMAGE_TAG}
	@docker login
	@docker push rakesh446/${IMAGE_NAME}:${IMAGE_TAG}

deploy:
	@kubectl create ns hello-world
	@helm install --namespace hello-world --name hlowrld ./helm-hlowrld
