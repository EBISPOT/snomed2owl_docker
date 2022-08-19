
# Building docker image
VERSION = "0.0.1"
PRODUCT=snomed-owl
IM=ebispot/$(PRODUCT)

docker-build-no-cache:
	@docker build --no-cache -t $(IM):$(VERSION) . \
	&& docker tag $(IM):$(VERSION) $(IM):latest
	
docker-build:
	@docker build -t $(IM):$(VERSION) . \
	&& docker tag $(IM):$(VERSION) $(IM):latest

docker-clean:
	docker kill $(IM) || echo not running ;
	docker rm $(IM) || echo not made 

docker-publish-no-build:
	@docker push $(IM):$(VERSION) \
	&& docker push $(IM):latest
	
docker-publish: docker-build
	@docker push $(IM):$(VERSION) \
	&& docker push $(IM):latest
	
