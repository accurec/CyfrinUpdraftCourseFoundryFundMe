-include .env

build: 
	forge build

deploy-local:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(LOCAL_RPC_URL) --private-key $(LOCAL_PRIVATE_KEY) --broadcast

run-tests-on-sepolia:
	forge test --fork-url $(SEPOLIA_ALCHEMY_API_URL)

format:
	forge fmt