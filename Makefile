
.PHONY: default

default: dobby-swagger

SWAGGER := Dobby.swagger.yaml

OUT_DIR := dobby-swagger
JAVA_OPTS := -DapiTests=false -DmodelTests=false

dobby-swagger: $(SWAGGER)
	java $(JAVA_OPTS) -jar ~/bin/swagger-codegen-cli.jar generate \
    -i $^ \
    -l python \
    -c cg.json \
    -o $(OUT_DIR) \

dobby-image:
	docker build -f Dockerfile.allinone -t dobby .

dobby-image-old:
	docker build -f Dockerfile.old -t dobby .

