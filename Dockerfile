FROM marcelmaatkamp/freeradius

# device
ENV DEVICE_NAME=router
ENV DEVICE_HOSTNAME=10.251.32.5
ENV DEVICE_SECRET=SECRET

# user
ENV USERNAME=testing
ENV PASSWORD=password

RUN echo "$USERNAME Cleartext-Password := \"$PASSWORD\"" >> /etc/raddb/users
RUN echo -e "client $DEVICE_NAME {\n ipaddr = $DEVICE_HOSTNAME\n secret = $DEVICE_SECRET\n}" >> /etc/raddb/clients.conf
