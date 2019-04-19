help()
{
    echo "Usage: $0 [targetDBName]"
}


if [ $# -ne 1 ]
then
    help
    exit 0
fi


./rdd "$1.rdd" -o insert
