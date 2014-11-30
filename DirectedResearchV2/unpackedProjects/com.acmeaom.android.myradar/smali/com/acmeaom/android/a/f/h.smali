.class final Lcom/acmeaom/android/a/f/h;
.super Ljava/util/HashMap;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v0, "kRadarStatusKey"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "kRadarOpacityKey"

    const v1, 0x3ecccccd

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "kRadarSpeedKey"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "kRadarUseHDKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "kDynamicURLsKey"

    new-instance v1, Lcom/acmeaom/android/a/f/i;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/a/f/i;-><init>(Lcom/acmeaom/android/a/f/h;)V

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "kWarningsStatusKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "kTemperatureStatusKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "kTemperatureUnitKey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "kHurricanesStatusKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "kCloudsStatusKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "kCloudsOpacityKey"

    const v1, 0x3f266666

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "kCloudTileType"

    const-string v1, "Clouds"

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "kMapTileType"

    const-string v1, "Roads"

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "kAviationLayerStatusKey"

    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "kAirmetsStatusKey"

    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "kSigmetsStatusKey"

    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "kFlightTrackStatusKey"

    new-instance v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "kFlightNumberKey"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "kMapFollowLocationKey"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/acmeaom/android/a/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method
