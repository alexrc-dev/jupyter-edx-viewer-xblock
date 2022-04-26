

cd "$(tutor config printroot)/env/build/openedx/requirements"

rm -rf ./jupyter-edx-viewer-xblock

git clone https://github.com/alexrc-dev/jupyter-edx-viewer-xblock.git

echo "-e ./jupyter-edx-viewer-xblock" >> private.txt

pip3 install -e jupyter-edx-viewer-xblock

tutor plugins printroot

mkdir "$(tutor plugins printroot)"

rm "$(tutor plugins printroot)"/jupyter_viewer.yml

cp jupyter_viewer.yml  "$(tutor plugins printroot)"

tutor plugins enable jupyter_viewer

tutor config save

tutor images build openedx