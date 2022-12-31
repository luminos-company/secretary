buf generate
protoc 	-I ./proto \
        --gotag_out=. --gotag_opt outdir=./generated --gotag_opt paths=source_relative \
    	  ./**/*.proto

