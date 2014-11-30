.class public Lcom/acmeaom/android/c/g/b/a;
.super Lcom/acmeaom/android/c/g/b/g;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "uniform sampler2D texture;uniform lowp float opacity;varying lowp vec2 TexCoordOut;void main() {   lowp vec4 texColor = texture2D(texture, TexCoordOut);   gl_FragColor = vec4(0.5*(texColor - vec4(0.36328125))) * opacity;}"

    return-object v0
.end method
