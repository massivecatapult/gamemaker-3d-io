    uv_lay = bm.loops.layers.uv.active
    
    for face in bm.faces:
        for loop in face.loops:
            uv = loop[uv_lay].uv
            output += str("Loop UV: %f, %f" % uv[:]) + "\n"
            vert = loop.vert
            output += str("Loop Vert: (%f,%f,%f)" % vert.co[:]) + "\n"
            normal = vert.normal
            output += str("Loop Normal: (%f,%f,%f)" % normal[:]) + "\n\n"