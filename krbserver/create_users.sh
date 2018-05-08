#!/bin/bash
/usr/sbin/kdb5_util create -s -P jupiter 
kadmin.local -q "addprinc arnau -pw karnau"
kadmin.local -q "addprinc pere -pw kpere "
kadmin.local -q "addprinc pau -pw kpau"
kadmin.local -q "addprinc marta -pw kmarta"
kadmin.local -q "addprinc jordi -pw kjordi"


