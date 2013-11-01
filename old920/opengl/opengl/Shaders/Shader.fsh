//
//  Shader.fsh
//  opengl
//
//  Created by hey on 13-8-25.
//  Copyright (c) 2013年 hey. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
