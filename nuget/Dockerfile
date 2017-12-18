FROM mono

RUN mkdir -p /app/nuget

ADD nuget.exe /app/nuget/nuget.exe
ADD nuget.sh /app/nuget/nuget.sh
RUN chmod +x /app/nuget/nuget.sh

RUN mono --version
ENV PATH="/app/nuget:${PATH}"
RUN nuget.sh help
