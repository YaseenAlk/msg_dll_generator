CATKIN_WS_SRC="$(dirname $(dirname $(dirname $PWD)))"/Desktop/src
OUTPUT_DIR="$PWD"/Messages_Proj

mkdir -p $OUTPUT_DIR
cd bin
dotnet YAMLParser.dll -m $CATKIN_WS_SRC -o $OUTPUT_DIR
mkdir -p "$(dirname "$PWD")"/"autogenerated_msg_dll"
cp -r "$(dirname "$PWD")"/Messages_Proj/bin/Debug/netcoreapp2.1/ "$(dirname "$PWD")"/"autogenerated_msg_dll"
