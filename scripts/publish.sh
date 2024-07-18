while getopts d: flag
do
    case "${flag}" in
        d) directory=${OPTARG};;
    esac
done

cd ../custom-server--client
npx expo export
cd ../custom-server
rm -rf updates/$directory/
cp -r ../custom-server--client/dist/ updates/$directory

node ./scripts/exportClientExpoConfig.js > updates/$directory/expoConfig.json
