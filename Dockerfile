FROM microsoft/mssql-server-linux:latest
# Install node/npm

RUN apt-get -y update
		
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/import-data.sh

EXPOSE 1433

CMD /bin/bash ./init.sh