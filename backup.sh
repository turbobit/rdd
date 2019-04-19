help()
{
    echo "Usage: $0 [targetDBName]"
}


if [ $# -ne 1 ]
then
    help
    exit 0
fi

./rdd "$1*" -o "$1.rdd" &&  rsync -azvh --progress * ubuntu@서버주소:/home/ubuntu/rdd/
