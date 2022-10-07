#!/bin/bash
systemctl stop proftpd
apt --purge autoremove proftpd-*
