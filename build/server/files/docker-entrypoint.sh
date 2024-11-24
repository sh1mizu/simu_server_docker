#!/bin/bash
set -eu

PREFIX=""
if [[ $(id -u) == 0 ]]; then
	usermod -o -u "${PUID}" simutrans
	groupmod -o -g "${PGID}" simutrans
	chown -R simutrans:simutrans /simutrans /simu_bin
	PREFIX="runuser -u simutrans -g simutrans --"
fi

EXEC="/simu_bin/sim -use_workdir -lang ${SIMU_LANG} -server ${PORT} -server_admin_pw ${SERVER_ADMIN_PW}"

exec ${PREFIX} ${EXEC} "$@"
