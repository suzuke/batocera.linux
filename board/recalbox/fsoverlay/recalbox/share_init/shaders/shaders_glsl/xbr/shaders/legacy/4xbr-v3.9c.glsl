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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
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
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP52;
vec3 _TMP63;
float _TMP62;
float _TMP61;
float _TMP60;
float _TMP51;
float _TMP50;
float _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec3 _TMP45;
vec3 _TMP44;
vec3 _TMP43;
vec3 _TMP42;
vec3 _TMP41;
vec3 _TMP40;
vec3 _TMP39;
vec4 _TMP38;
vec4 _TMP31;
vec4 _TMP30;
vec4 _TMP64;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0078;
vec4 _r0122;
vec4 _r0132;
vec4 _r0142;
vec4 _r0152;
vec4 _r0162;
vec4 _r0172;
vec4 _TMP183;
vec4 _a0186;
vec4 _TMP189;
vec4 _a0192;
vec4 _TMP195;
vec4 _a0198;
vec4 _TMP201;
vec4 _a0204;
vec4 _TMP207;
vec4 _a0210;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP219;
vec4 _a0222;
vec4 _TMP225;
vec4 _a0228;
vec4 _TMP231;
vec4 _a0234;
vec4 _x0238;
vec4 _TMP239;
vec4 _x0248;
vec4 _TMP249;
vec4 _x0258;
vec4 _TMP259;
vec4 _TMP267;
vec4 _a0270;
vec4 _TMP271;
vec4 _a0274;
vec4 _TMP275;
vec4 _a0278;
vec4 _TMP279;
vec4 _a0282;
vec4 _TMP283;
vec4 _a0286;
vec4 _TMP289;
vec4 _a0292;
vec4 _TMP293;
vec4 _a0296;
vec4 _TMP297;
vec4 _a0300;
vec4 _TMP301;
vec4 _a0304;
vec4 _TMP305;
vec4 _a0308;
vec4 _TMP309;
vec4 _a0312;
vec4 _TMP313;
vec4 _a0316;
vec4 _TMP317;
vec4 _a0320;
vec4 _TMP321;
vec4 _a0324;
vec4 _TMP325;
vec4 _a0328;
vec4 _TMP329;
vec4 _a0332;
vec3 _df0366;
vec3 _a0368;
vec3 _df0370;
vec3 _a0372;
vec3 _TMP385;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _E;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    vec3 _res;
    _x0078 = TEX0.xy*TextureSize;
    _fp = fract(_x0078);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0122.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0162.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0162.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0162.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0162.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0172.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0172.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0172.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0172.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0186 = _r0122.wxyz - _r0122;
    _TMP183 = abs(_a0186);
    _TMP21 = bvec4(_TMP183.x < 1.00000000E+01, _TMP183.y < 1.00000000E+01, _TMP183.z < 1.00000000E+01, _TMP183.w < 1.00000000E+01);
    _a0192 = _r0122.zwxy - _r0122.yzwx;
    _TMP189 = abs(_a0192);
    _TMP22 = bvec4(_TMP189.x < 1.00000000E+01, _TMP189.y < 1.00000000E+01, _TMP189.z < 1.00000000E+01, _TMP189.w < 1.00000000E+01);
    _a0198 = _r0142 - _r0132.wxyz;
    _TMP195 = abs(_a0198);
    _TMP23 = bvec4(_TMP195.x < 1.00000000E+01, _TMP195.y < 1.00000000E+01, _TMP195.z < 1.00000000E+01, _TMP195.w < 1.00000000E+01);
    _a0204 = _r0122.wxyz - _r0152;
    _TMP201 = abs(_a0204);
    _TMP24 = bvec4(_TMP201.x < 1.00000000E+01, _TMP201.y < 1.00000000E+01, _TMP201.z < 1.00000000E+01, _TMP201.w < 1.00000000E+01);
    _a0210 = _r0122.zwxy - _r0162;
    _TMP207 = abs(_a0210);
    _TMP25 = bvec4(_TMP207.x < 1.00000000E+01, _TMP207.y < 1.00000000E+01, _TMP207.z < 1.00000000E+01, _TMP207.w < 1.00000000E+01);
    _a0216 = _r0142 - _r0132.zwxy;
    _TMP213 = abs(_a0216);
    _TMP26 = bvec4(_TMP213.x < 1.00000000E+01, _TMP213.y < 1.00000000E+01, _TMP213.z < 1.00000000E+01, _TMP213.w < 1.00000000E+01);
    _a0222 = _r0142 - _r0132;
    _TMP219 = abs(_a0222);
    _TMP27 = bvec4(_TMP219.x < 1.00000000E+01, _TMP219.y < 1.00000000E+01, _TMP219.z < 1.00000000E+01, _TMP219.w < 1.00000000E+01);
    _a0228 = _r0122 - _r0152.yzwx;
    _TMP225 = abs(_a0228);
    _TMP28 = bvec4(_TMP225.x < 1.00000000E+01, _TMP225.y < 1.00000000E+01, _TMP225.z < 1.00000000E+01, _TMP225.w < 1.00000000E+01);
    _a0234 = _r0122.yzwx - _r0162.wxyz;
    _TMP231 = abs(_a0234);
    _TMP29 = bvec4(_TMP231.x < 1.00000000E+01, _TMP231.y < 1.00000000E+01, _TMP231.z < 1.00000000E+01, _TMP231.w < 1.00000000E+01);
    _interp_restriction_lv1 = bvec4(_r0142.x != _r0122.w && _r0142.x != _r0122.z && (!_TMP21.x && !_TMP22.x || _TMP23.x && !_TMP24.x && !_TMP25.x || _TMP26.x || _TMP27.x) && (_r0122.w != _r0172.y && _r0122.w != _r0132.w || _r0122.z != _r0172.x && _r0122.z != _r0132.w || _r0122.z != _r0132.z || _r0122.w != _r0132.x || _TMP28.x && _TMP29.x), _r0142.y != _r0122.x && _r0142.y != _r0122.w && (!_TMP21.y && !_TMP22.y || _TMP23.y && !_TMP24.y && !_TMP25.y || _TMP26.y || _TMP27.y) && (_r0122.x != _r0172.z && _r0122.x != _r0132.x || _r0122.w != _r0172.y && _r0122.w != _r0132.x || _r0122.w != _r0132.w || _r0122.x != _r0132.y || _TMP28.y && _TMP29.y), _r0142.z != _r0122.y && _r0142.z != _r0122.x && (!_TMP21.z && !_TMP22.z || _TMP23.z && !_TMP24.z && !_TMP25.z || _TMP26.z || _TMP27.z) && (_r0122.y != _r0172.w && _r0122.y != _r0132.y || _r0122.x != _r0172.z && _r0122.x != _r0132.y || _r0122.x != _r0132.x || _r0122.y != _r0132.z || _TMP28.z && _TMP29.z), _r0142.w != _r0122.z && _r0142.w != _r0122.y && (!_TMP21.w && !_TMP22.w || _TMP23.w && !_TMP24.w && !_TMP25.w || _TMP26.w || _TMP27.w) && (_r0122.z != _r0172.x && _r0122.z != _r0132.z || _r0122.y != _r0172.w && _r0122.y != _r0132.z || _r0122.y != _r0132.y || _r0122.z != _r0132.w || _TMP28.w && _TMP29.w));
    _interp_restriction_lv2_left = bvec4(_r0142.x != _r0132.z && _r0122.y != _r0132.z, _r0142.y != _r0132.w && _r0122.z != _r0132.w, _r0142.z != _r0132.x && _r0122.w != _r0132.x, _r0142.w != _r0132.y && _r0122.x != _r0132.y);
    _interp_restriction_lv2_up = bvec4(_r0142.x != _r0132.x && _r0122.x != _r0132.x, _r0142.y != _r0132.y && _r0122.y != _r0132.y, _r0142.z != _r0132.z && _r0122.z != _r0132.z, _r0142.w != _r0132.w && _r0122.w != _r0132.w);
    _x0238 = (_fx - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0238);
    _TMP239 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _fx45 = _TMP239*_TMP239*(3.00000000E+00 - 2.00000000E+00*_TMP239);
    _x0248 = (_fx_left - vec4( 6.00000024E-01, 6.00000024E-01, -8.99999976E-01, -4.00000006E-01))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 8.00000012E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0248);
    _TMP249 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _fx30 = _TMP249*_TMP249*(3.00000000E+00 - 2.00000000E+00*_TMP249);
    _x0258 = (_fx_up - vec4( 1.60000002E+00, -4.00000006E-01, -1.39999998E+00, 9.99999940E-02))/vec4( 8.00000072E-01, 8.00000012E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0258);
    _TMP259 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _fx60 = _TMP259*_TMP259*(3.00000000E+00 - 2.00000000E+00*_TMP259);
    _a0270 = _r0142 - _r0132;
    _TMP267 = abs(_a0270);
    _a0274 = _r0142 - _r0132.zwxy;
    _TMP271 = abs(_a0274);
    _a0278 = _r0132.wxyz - _r0172;
    _TMP275 = abs(_a0278);
    _a0282 = _r0132.wxyz - _r0172.yzwx;
    _TMP279 = abs(_a0282);
    _a0286 = _r0122.zwxy - _r0122.wxyz;
    _TMP283 = abs(_a0286);
    _TMP30 = _TMP267 + _TMP271 + _TMP275 + _TMP279 + 4.00000000E+00*_TMP283;
    _a0292 = _r0122.zwxy - _r0122.yzwx;
    _TMP289 = abs(_a0292);
    _a0296 = _r0122.zwxy - _r0162;
    _TMP293 = abs(_a0296);
    _a0300 = _r0122.wxyz - _r0152;
    _TMP297 = abs(_a0300);
    _a0304 = _r0122.wxyz - _r0122;
    _TMP301 = abs(_a0304);
    _a0308 = _r0142 - _r0132.wxyz;
    _TMP305 = abs(_a0308);
    _TMP31 = _TMP289 + _TMP293 + _TMP297 + _TMP301 + 4.00000000E+00*_TMP305;
    _edr = bvec4(_TMP30.x < _TMP31.x && _interp_restriction_lv1.x, _TMP30.y < _TMP31.y && _interp_restriction_lv1.y, _TMP30.z < _TMP31.z && _interp_restriction_lv1.z, _TMP30.w < _TMP31.w && _interp_restriction_lv1.w);
    _a0312 = _r0122.wxyz - _r0132.zwxy;
    _TMP309 = abs(_a0312);
    _a0316 = _r0122.zwxy - _r0132;
    _TMP313 = abs(_a0316);
    _edr_left = bvec4((2.00000000E+00*_TMP309).x <= _TMP313.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP309).y <= _TMP313.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP309).z <= _TMP313.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP309).w <= _TMP313.w && _interp_restriction_lv2_left.w);
    _a0320 = _r0122.wxyz - _r0132.zwxy;
    _TMP317 = abs(_a0320);
    _a0324 = _r0122.zwxy - _r0132;
    _TMP321 = abs(_a0324);
    _edr_up = bvec4(_TMP317.x >= (2.00000000E+00*_TMP321).x && _interp_restriction_lv2_up.x, _TMP317.y >= (2.00000000E+00*_TMP321).y && _interp_restriction_lv2_up.y, _TMP317.z >= (2.00000000E+00*_TMP321).z && _interp_restriction_lv2_up.z, _TMP317.w >= (2.00000000E+00*_TMP321).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0328 = _r0142 - _r0122.wxyz;
    _TMP325 = abs(_a0328);
    _a0332 = _r0142 - _r0122.zwxy;
    _TMP329 = abs(_a0332);
    _px = bvec4(_TMP325.x <= _TMP329.x, _TMP325.y <= _TMP329.y, _TMP325.z <= _TMP329.z, _TMP325.w <= _TMP329.w);
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP38 = max(_final30, _final60);
    _maximo = max(_TMP38, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP39 = _TMP8.xyz;
        } else {
            _TMP39 = _TMP10.xyz;
        } 
        _pix1 = _TMP39;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP40 = _TMP4.xyz;
            } else {
                _TMP40 = _TMP8.xyz;
            } 
            _pix1 = _TMP40;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP41 = _TMP6.xyz;
                } else {
                    _TMP41 = _TMP4.xyz;
                } 
                _pix1 = _TMP41;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP42 = _TMP10.xyz;
                    } else {
                        _TMP42 = _TMP6.xyz;
                    } 
                    _pix1 = _TMP42;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP43 = _TMP10.xyz;
        } else {
            _TMP43 = _TMP6.xyz;
        } 
        _pix2 = _TMP43;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP44 = _TMP6.xyz;
            } else {
                _TMP44 = _TMP4.xyz;
            } 
            _pix2 = _TMP44;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP45 = _TMP4.xyz;
                } else {
                    _TMP45 = _TMP8.xyz;
                } 
                _pix2 = _TMP45;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP46 = _TMP8.xyz;
                    } else {
                        _TMP46 = _TMP10.xyz;
                    } 
                    _pix2 = _TMP46;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _TMP60 = pow(_TMP7.x, 2.40000010E+00);
    _TMP61 = pow(_TMP7.y, 2.40000010E+00);
    _TMP62 = pow(_TMP7.z, 2.40000010E+00);
    _E = vec3(_TMP60, _TMP61, _TMP62);
    _TMP60 = pow(_pix1.x, 2.40000010E+00);
    _TMP61 = pow(_pix1.y, 2.40000010E+00);
    _TMP62 = pow(_pix1.z, 2.40000010E+00);
    _TMP47 = vec3(_TMP60, _TMP61, _TMP62);
    _res1 = _E + _blend1*(_TMP47 - _E);
    _TMP60 = pow(_pix2.x, 2.40000010E+00);
    _TMP61 = pow(_pix2.y, 2.40000010E+00);
    _TMP62 = pow(_pix2.z, 2.40000010E+00);
    _TMP48 = vec3(_TMP60, _TMP61, _TMP62);
    _res2 = _E + _blend2*(_TMP48 - _E);
    _a0368 = _E - _res1;
    _df0366 = abs(_a0368);
    _TMP49 = _df0366.x + _df0366.y + _df0366.z;
    _a0372 = _E - _res2;
    _df0370 = abs(_a0372);
    _TMP50 = _df0370.x + _df0370.y + _df0370.z;
    _TMP51 = float((_TMP50 >= _TMP49));
    _res = _res1 + _TMP51*(_res2 - _res1);
    _TMP60 = pow(_res.x, 4.54545438E-01);
    _TMP61 = pow(_res.y, 4.54545438E-01);
    _TMP62 = pow(_res.z, 4.54545438E-01);
    _TMP52 = vec3(_TMP60, _TMP61, _TMP62);
    _TMP63 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP52);
    _TMP385 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP63);
    _ret_0 = vec4(_TMP385.x, _TMP385.y, _TMP385.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
