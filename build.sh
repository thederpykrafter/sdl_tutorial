glslc shader.glsl.frag -o shader.spv.frag
if [[ $? != 0 ]]; then exit 1; else continue; fi

glslc shader.glsl.vert -o shader.spv.vert
if [[ $? != 0 ]]; then exit 1; else continue; fi

odin build . -debug
if [[ $? != 0 ]]; then exit 1; else continue; fi
