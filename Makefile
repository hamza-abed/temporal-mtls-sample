generate: ## generate certificates
	cd certs/ && sh ./generate-test-certs-openssl.sh
	cd ..

up: ## Starts docker compose for testing purposes
	TEMPORAL_TLS_CERTS_DIR=/etc/temporal/config/certs TEMPORAL_LOCAL_CERT_DIR=./certs/certs docker compose up -d --build
