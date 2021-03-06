#!/bin/sh

#
# Desktop OpenGL
#

rm -Rf gl

# Extension specifications, .spec and .tm files

wget -P gl --mirror --no-parent --no-host-directories --cut-dirs=1 --accept=txt,spec,tm,h \
  http://www.opengl.org/registry/

# OpenGL Software Development Kit - manual pages for GL and GLSL

mkdir -p gl/docs

wget -P gl/docs --mirror --no-parent --no-host-directories --cut-dirs=4 --accept=html \
  http://www.opengl.org/sdk/docs/man4/html/

# Tidy-up

rm gl/robots.txt gl/docs/robots.txt

# Leave out the old specs

rm gl/api/*.h

#
# OpenGL ES
#

rm -Rf gles

wget -P gles --mirror --no-parent --no-host-directories --cut-dirs=2 --accept=txt,spec,tm,h \
  http://www.khronos.org/registry/gles/

# SDK - manual pages for ES

mkdir -p gles/docs

wget -P gles/docs --mirror --no-parent --no-host-directories --cut-dirs=5 --accept=html \
  http://www.khronos.org/opengles/sdk/docs/man3/html/

# Tidy-up

rm gles/robots.txt gles/docs/robots.txt

#
# EGL
#

rm -Rf egl

wget -P egl --mirror --no-parent --no-host-directories --cut-dirs=2 --accept=txt,spec,tm,h,html \
  http://www.khronos.org/registry/egl/

# Tidy-up

rm egl/robots.txt

#
# XML specs
#

rm -Rf xml

wget -P xml --no-parent --no-host-directories --cut-dirs=8 https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/egl.xml
wget -P xml --no-parent --no-host-directories --cut-dirs=8 https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/gl.xml
wget -P xml --no-parent --no-host-directories --cut-dirs=8 https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/glx.xml
wget -P xml --no-parent --no-host-directories --cut-dirs=8 https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/wgl.xml
wget -P xml --no-parent --no-host-directories --cut-dirs=8 https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/readme.pdf
