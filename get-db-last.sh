mysql -uroot -pnew-password -h127.0.0.1 -D$1 --execute "select avs_last_incremental from avs_version;" | grep -o "[0-9]*"

