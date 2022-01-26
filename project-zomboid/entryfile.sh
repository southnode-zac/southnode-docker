#!/bin/bash
	echo "Loading Steam Release Branch"
	bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${STEAMAPPDIR}" \
					+login anonymous \
					+app_update "${STEAMAPPID}" \
					+quit

bash "${STEAMAPPDIR}/start-server.sh" \
			-servername "${SERVERNAME}" \
			QueryPort="${QUERYPORT}" \
			RCONPORT="${RCONPORT}" \
			FIXEDMAXPLAYERS="${FIXEDMAXPLAYERS}" \
			FIXEDMAXTICKRATE="${FIXEDMAXTICKRATE}" \
			RANDOM="${RANDOM}"
