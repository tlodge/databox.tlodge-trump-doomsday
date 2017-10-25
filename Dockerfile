FROM tlodge/databox-sdk-red:latest
ADD flows.json /data/flows.json
LABEL databox.type="app"
LABEL databox.manifestURL="/tlodge-trump-doomsday/databox-manifest.json"
RUN cd /data/nodes/databox && npm install --save sentiment
EXPOSE 8080
CMD /root/start.sh