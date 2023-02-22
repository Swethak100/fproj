src_dir="/home/ishu/Desktop/file"
dest_dir="/home/ishu/Desktop/backup"
backup_filename_prefix="backup"

daily_date_format="%Y-%m-%d"
weekly_date_format="%Y-%U"
monthly_date_format="%Y-%m"

#daily backup 
daily_backup_command="tar czf ${dest_dir}/${backup_filename_prefix}-$(date +${daily_date_format}).tar.gz ${src_dir}"

#weekly backup
if [ $(date +%u) -eq 7 ]; then
    weekly_backup_command="tar czf ${dest_dir}/${backup_filename_prefix}-$(date +${weekly_date_format}).tar.gz ${src_dir}"
fi

#monthly backup
if [ $(date +%d) -eq 01 ]; then
    monthly_backup_command="tar czf ${dest_dir}/${backup_filename_prefix}-$(date +${monthly_date_format}).tar.gz ${src_dir}"
fi

# Perform the backups
eval "$daily_backup_command"
if [ -n "$weekly_backup_command" ]; then
    eval "$weekly_backup_command"
fi
if [ -n "$monthly_backup_command" ]; then
    eval "$monthly_backup_command"
fi

exit 0
