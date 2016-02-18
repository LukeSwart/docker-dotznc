docker stop znc
docker rm znc
docker run -d \
    --name znc \
    -p 5005:6667 \
    -p 5007:5007 \
    --restart=always \
    --volumes-from zncdata \
    -v ~/znc-data_current:/znc-data \
    jimeh/znc
    
#     --link zncdata:zncdata \
#     -v $HOME/.znc:/znc-data jimeh/znc
