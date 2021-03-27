workdir= pwd

echo "Test push to see everything is online"
./git-v2.sh

echo "Making Package from PKGBUILD"

cd ..
cd alg-pkgbuild/alg-calamares-config/
./cleanup.sh

makepkg

echo "Copying .zst file from current folder to repo folder"
cp -v
