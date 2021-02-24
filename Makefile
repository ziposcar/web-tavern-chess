
generate:
	if [ -d "./idl" ]; then cd ./idl; git pull --rebase origin main; cd -; else git clone git@github.com:ziposcar/web-tavern-chess-idl.git idl; fi
	protoc -I=./idl/api/v1/ --go_out=proto_gen/ ./idl/api/v1/*.proto
