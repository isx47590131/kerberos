#!/bin/bash
/usr/sbin/kdb5_util create -s -P jupiter 
kadmin.local -q "addprinc -pw karnau arnau"
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kmarta marta "
kadmin.local -q "addprinc -pw kjordi jordi"
useradd pere
useradd pau 
useradd marta
useradd jordi

