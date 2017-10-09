#!/bin/bash
#Script untuk menghapus user SSH & OpenVPN

read -p "ชื่อผู้ใช้งานที่จะลบ : " Pengguna

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "User $Pengguna ถูกลบแล้ว"
else
        echo -e "GAGAL: User $Pengguna tidak ada."
fi
