.class public Lcom/acmeaom/android/c/g/b/b;
.super Lcom/acmeaom/android/c/g/b/g;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "uniform sampler2D texture;uniform lowp float opacity;varying lowp vec2 TexCoordOut;const mediump vec3 luminanceWeighting = vec3(-0.2125, -0.7154, -0.0721);void main() {   lowp vec4 textureColor = texture2D(texture, TexCoordOut);   mediump float luminance = dot(textureColor.rgb, luminanceWeighting);      gl_FragColor = vec4(vec3(luminance + 1.0), textureColor.w) * opacity;}"

    return-object v0
.end method
