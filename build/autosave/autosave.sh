#!/bin/sh

nt_prefix="/nettools/nettool -q -s ${SERVER_ADDRESS} -p ${SERVER_ADMIN_PW}"
${nt_prefix} say "セーブするよ"
sleep 15
${nt_prefix} force-sync
