.class public Lcom/acmeaom/android/a/f/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:I

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;

.field private static final e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/acmeaom/android/a/f/g;->a:I

    .line 111
    new-instance v0, Lcom/acmeaom/android/a/f/h;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/h;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    .line 144
    new-instance v0, Lcom/acmeaom/android/a/f/j;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/j;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/f/g;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 21
    sput p0, Lcom/acmeaom/android/a/f/g;->a:I

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/acmeaom/android/a/f/g;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 167
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/acmeaom/android/a/f/g;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 171
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0060

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kRadarSpeedKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b005d

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kRadarStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0046

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kRadarUseHDKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b004d

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kMapFollowLocationKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b005f

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kRadarOpacityKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b006b

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kTemperatureStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b006c

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kTemperatureUnitKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0073

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kWarningsStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0049

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kHurricanesStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0029

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kCloudsStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b002a

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kCloudsOpacityKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b002b

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kCloudTileType"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b000b

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kMapTileType"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0040

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kDynamicURLsKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b000a

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kAviationLayerStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0069

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kSigmetsStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const/high16 v2, 0x7f0b0000

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kAirmetsStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0043

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kFlightTrackStatusKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    const v2, 0x7f0b0042

    invoke-static {v2}, Lcom/acmeaom/android/a/f/g;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kFlightNumberKey"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kRadarSpeedKey"

    const-string v3, "kRadarSpeedChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kRadarStatusKey"

    const-string v3, "kRadarStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kRadarUseHDKey"

    const-string v3, "kRadarUseHDStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kRadarOpacityKey"

    const-string v3, "kRadarOpacityChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kTemperatureStatusKey"

    const-string v3, "kTemperatureStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kTemperatureUnitKey"

    const-string v3, "kTemperatureUnitChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kWarningsStatusKey"

    const-string v3, "kWarningsStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kHurricanesStatusKey"

    const-string v3, "kHurricanesStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kCloudsStatusKey"

    const-string v3, "kCloudsStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kCloudsOpacityKey"

    const-string v3, "kCloudsOpacityChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kCloudTileType"

    const-string v3, "kCloudTileTypeChangedNotification"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kMapTileType"

    const-string v3, "kMapTileTypeChangedNotification"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kDynamicURLsKey"

    const-string v3, "kDynamicURLsUpdated"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kAviationLayerStatusKey"

    const-string v3, "kAviationLayerStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kSigmetsStatusKey"

    const-string v3, "kSigmetsStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kAirmetsStatusKey"

    const-string v3, "kAirmetsStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kFlightTrackStatusKey"

    const-string v3, "kFlightTrackStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    const-string v2, "kFlightNumberKey"

    const-string v3, "kFlightNumberStatusChanged"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 211
    sget-object v0, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    if-eqz v3, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {v0, v3}, Lcom/acmeaom/android/a/f/g;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    invoke-static {p1, p0}, Lcom/acmeaom/android/a/f/g;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public static b()Lcom/acmeaom/android/a/f/g;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/acmeaom/android/a/f/g;

    invoke-direct {v0}, Lcom/acmeaom/android/a/f/g;-><init>()V

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/acmeaom/android/a/f/g;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    instance-of v1, v0, Lcom/acmeaom/android/a/a/b/aa;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->d()Z

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 332
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 333
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 335
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected val: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/acmeaom/android/a/f/g;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/acmeaom/android/a/f/g;->a:I

    return v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    sget-object v1, Lcom/acmeaom/android/a/f/g;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    if-nez v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    move-object v0, p1

    .line 321
    goto :goto_0

    .line 257
    :cond_2
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 258
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 259
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 260
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 261
    :cond_3
    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 262
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    .line 265
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_1

    .line 267
    :cond_5
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 268
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 269
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 270
    :cond_6
    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 271
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    .line 274
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_8
    move-object p1, v0

    .line 277
    goto/16 :goto_1

    .line 279
    :cond_9
    const-class v3, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 280
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_c

    .line 281
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 282
    new-instance v0, Lcom/acmeaom/android/a/a/b/aa;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Integer;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 283
    :cond_a
    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_b

    .line 284
    new-instance v0, Lcom/acmeaom/android/a/a/b/aa;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Ljava/lang/Float;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 287
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 289
    :cond_c
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 290
    new-instance v0, Lcom/acmeaom/android/a/a/b/aa;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/aa;-><init>(Z)V

    move-object p1, v0

    goto/16 :goto_1

    .line 291
    :cond_d
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 292
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 293
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_1

    .line 294
    :cond_e
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_f

    .line 295
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1

    .line 296
    :cond_f
    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 297
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_1

    .line 300
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_11
    move-object p1, v0

    .line 303
    goto/16 :goto_1

    .line 305
    :cond_12
    instance-of v1, v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_14

    .line 306
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 308
    :cond_13
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1

    .line 318
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_1
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/acmeaom/android/a/f/g;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/acmeaom/android/a/f/g;->d:Ljava/util/HashMap;

    return-object v0
.end method
