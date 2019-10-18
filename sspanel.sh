read -p "节点ID: "  username
read -p "节点名字: "  ssrmu
docker run -d --name=$ssrmu -e NODE_ID=$username -e API_INTERFACE=modwebapi -e WEBAPI_URL=http://lesu.xyz -e WEBAPI_TOKEN=Lesu --network=host --log-opt max-size=50m --log-opt max-file=3 --restart=always fanvinga/docker-ssrmu
