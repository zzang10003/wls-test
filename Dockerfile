#--------------------
# WebLogic Domain
#--------------------
FROM container-registry.oracle.com/middleware/weblogic:14.1.1.0-11-ol8

ENV ORACLE_HOME=/u01/oacle \
    USER_MEM_ARGS="-Djava.security.egd=file:/dev/./urandom" \
    PATH=#{PATH}:${JAVA_HOME}/bin:/u01/oracle/oracle_common/common/bin:/u01/oracle/wlserver/common/bin
    
RUN mkdir /u01 && \
    useradd -b /u01 -d /u01/oracle -m -s /bin/bash oracle && \
    chown oracle:root -R /u01 && \
    chmod -R 775 /u01
    
