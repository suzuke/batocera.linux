// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xyxy + vec4(0.00000000E+00, -_ps.y, -_ps.x, 0.00000000E+00);
    _OUT._t2 = TexCoord.xyxy + vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0006;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
};
vec3 _TMP10;
vec3 _TMP13;
vec3 _TMP15;
vec3 _TMP14;
vec3 _TMP9;
vec3 _TMP8;
vec3 _TMP7;
vec3 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0020;
vec2 _x0022;
bool _TMP33;
bvec3 _a0036;
bool _TMP37;
bvec3 _a0040;
bool _TMP41;
bvec3 _a0044;
bool _TMP45;
bvec3 _a0048;
bool _TMP49;
bvec3 _a0052;
bool _TMP53;
bvec3 _a0056;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    _x0020 = TEX0.xy*TextureSize;
    _TMP0 = fract(_x0020);
    _x0022 = 2.00000000E+00*_TMP0;
    _fp = floor(_x0022);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _a0036 = bvec3(_TMP1.x == _TMP2.x, _TMP1.y == _TMP2.y, _TMP1.z == _TMP2.z);
    _TMP33 = _a0036.x && _a0036.y && _a0036.z;
    if (_TMP33) { 
        _TMP6 = _TMP1.xyz;
    } else {
        _TMP6 = _TMP3.xyz;
    } 
    _a0040 = bvec3(_TMP1.x == _TMP4.x, _TMP1.y == _TMP4.y, _TMP1.z == _TMP4.z);
    _TMP37 = _a0040.x && _a0040.y && _a0040.z;
    if (_TMP37) { 
        _TMP7 = _TMP1.xyz;
    } else {
        _TMP7 = _TMP3.xyz;
    } 
    _a0044 = bvec3(_TMP5.x == _TMP2.x, _TMP5.y == _TMP2.y, _TMP5.z == _TMP2.z);
    _TMP41 = _a0044.x && _a0044.y && _a0044.z;
    if (_TMP41) { 
        _TMP8 = _TMP5.xyz;
    } else {
        _TMP8 = _TMP3.xyz;
    } 
    _a0048 = bvec3(_TMP5.x == _TMP4.x, _TMP5.y == _TMP4.y, _TMP5.z == _TMP4.z);
    _TMP45 = _a0048.x && _a0048.y && _a0048.z;
    if (_TMP45) { 
        _TMP9 = _TMP5.xyz;
    } else {
        _TMP9 = _TMP3.xyz;
    } 
    _a0052 = bvec3(_TMP1.x != _TMP5.x, _TMP1.y != _TMP5.y, _TMP1.z != _TMP5.z);
    _TMP49 = _a0052.x || _a0052.y || _a0052.z;
    _a0056 = bvec3(_TMP2.x != _TMP4.x, _TMP2.y != _TMP4.y, _TMP2.z != _TMP4.z);
    _TMP53 = _a0056.x || _a0056.y || _a0056.z;
    if (_TMP49 && _TMP53) { 
        if (_fp.y == 0.00000000E+00) { 
            if (_fp.x == 0.00000000E+00) { 
                _TMP14 = _TMP6;
            } else {
                _TMP14 = _TMP7;
            } 
            _TMP13 = _TMP14;
        } else {
            if (_fp.x == 0.00000000E+00) { 
                _TMP15 = _TMP8;
            } else {
                _TMP15 = _TMP9;
            } 
            _TMP13 = _TMP15;
        } 
        _TMP10 = _TMP13;
    } else {
        _TMP10 = _TMP3.xyz;
    } 
    FragColor.xyz = _TMP10;
    return;
} 
#endif
