.PHONY: proto_format proto_generate

# Go module
MODULE=github.com/rouzitalab/sharexp

# Proto directory
PROTO_DIR=proto

proto_format:
	buf format -w $(PROTO_DIR)

proto_generate:
	protoc \
		--go_out=module=$(MODULE):. \
		--go-grpc_out=module=$(MODULE):. \
		$(PROTO_DIR)/*.proto
