

cd "$(tutor config printroot)/env/build/openedx/requirements"

git clone https://github.com/murat-polat/jupyter-edx-viewer-xblock

echo "-e ./jupyter-edx-viewer-xblock" >> private.txt

pip3 install -e jupyter-edx-viewer-xblock

tutor plugins printroot

mkdir "$(tutor plugins printroot)"

cp jupyter_viewer.yml  "$(tutor plugins printroot)"

tutor plugins enable jupyter_viewer

tutor config save

tutor images build openedx