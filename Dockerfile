#--------------------
# WebLogic Domain
#--------------------
FROM container-registry.oracle.com/middleware/weblogic:14.1.1.0-11

#ENV ORACLE_HOME=/u01/oracle \
#    USER_MEM_ARGS="-Djava.security.egd=file:/dev/./urandom" \
#    SCRIPT_FILE=/u01/oracle/createAndStartEmptyDomain.sh \
#    HEALTH_SCRIPT_FILE=/u01/oracle/get_healthcheck_url.sh \
#    PATH=${PATH}:${JAVA_HOME}/bin:/u01/oracle/oracle_common/common/bin:/u01/oracle/wlserver/common/bin
    
#ENV DOMAIN_NAME="${DOMAIN_NAME:-base_domain}" \
#    ADMIN_LISTEN_PORT="${ADMIN_LISTEN_PORT:-7001}" \
#    ADMIN_NAME="${ADMIN_NAME:-AdminServer}" \
#    ADMINISTRATION_PORT_ENABLED="${ADMINISTRATION_PORT_ENABLED:-false}" 
    
#RUN mkdir -p /u01 && \
#    chmod 775 /u01 && \
#    useradd -b /u01 -d /u01/oracle -m -s /bin/bash oracle && \
#    chown oracle:root /u01

#COPY --from=builder --chown=oracle:root /u01 /u01

#COPY container-scripts/createAndStartEmptyDomain.sh container-scripts/create-wls-domain.py container-scripts/get_healthcheck_url.sh /u01/oracle/

#RUN chmod +xr $SCRIPT_FILE $HEALTH_SCRIPT_FILE && \
#    chown oracle:root $SCRIPT_FILE /u01/oracle/create-wls-domain.py $HEALTH_SCRIPT_FILE

#USER oracle

#HEALTHCHECK --start-period=10s --timeout=30s --retries=3 CMD curl -k -s --fail `$HEALTH_SCRIPT_FILE` || exit 1

#WORKDIR ${ORACLE_HOME}

#CMD ["/u01/oracle/createAndStartEmptyDomain.sh"]
