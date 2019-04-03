FROM lampo/azure-functions:base
COPY . /home/app
WORKDIR /home/app
RUN mvn install
EXPOSE 7071
CMD [ "mvn", "azure-functions:run" ]