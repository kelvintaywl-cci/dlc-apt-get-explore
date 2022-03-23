# dlc-apt-get-explore
Exploring how Docker Layer Caching (DLC) may be affected by apt-get

## Notes

From [Docker's documentation](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#leverage-build-cache), the checksum for a RUN command is not based on the files changes (like with ADD or COPY):

> Aside from the ADD and COPY commands, cache checking does not look at the files in the container to determine a cache match. For example, when processing a RUN apt-get -y update command the files updated in the container are not examined to determine if a cache hit exists. In that case just the command string itself is used to find a match.


Hence, if the RUN command's content is not changed, we should see caching in effect, right? 🤔

Refs:
- https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run
