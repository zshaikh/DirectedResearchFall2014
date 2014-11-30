.class public Lcom/acmeaom/android/b/c/h/c;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/a/b/u;


# static fields
.field public static final a:Lcom/acmeaom/android/a/a/b/aj;

.field public static final b:Lcom/acmeaom/android/a/a/b/aj;

.field private static final d:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private final e:Lcom/acmeaom/android/a/f/m;

.field private final f:Lcom/acmeaom/android/b/c/h/j;

.field private final g:Lcom/acmeaom/android/a/i/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4062c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/h/c;->a:Lcom/acmeaom/android/a/a/b/aj;

    .line 38
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4072c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/h/c;->b:Lcom/acmeaom/android/a/a/b/aj;

    .line 40
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/h/c;->d:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/i/q;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    sget-object v0, Lcom/acmeaom/android/b/c/h/c;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 53
    iput-object p2, p0, Lcom/acmeaom/android/b/c/h/c;->g:Lcom/acmeaom/android/a/i/q;

    .line 54
    invoke-static {p1}, Lcom/acmeaom/android/a/f/m;->a(Lcom/acmeaom/android/c/d/e;)Lcom/acmeaom/android/a/f/m;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->e:Lcom/acmeaom/android/a/f/m;

    .line 57
    invoke-direct {p0, v3}, Lcom/acmeaom/android/b/c/h/c;->a(Lcom/acmeaom/android/a/a/b/r;)V

    .line 60
    new-instance v0, Lcom/acmeaom/android/b/c/h/j;

    iget-object v1, p0, Lcom/acmeaom/android/b/c/h/c;->e:Lcom/acmeaom/android/a/f/m;

    invoke-direct {v0, p1, v1}, Lcom/acmeaom/android/b/c/h/j;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/f/m;)V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    .line 62
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/acmeaom/android/b/c/h/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/d;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kDynamicURLsUpdated"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/acmeaom/android/b/c/h/e;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/e;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kRadarStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/acmeaom/android/b/c/h/f;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/f;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kRadarOpacityChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    new-instance v1, Lcom/acmeaom/android/b/c/h/g;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/g;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kRadarSpeedChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lcom/acmeaom/android/b/c/h/h;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/h;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kRadarUseHDStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    new-instance v1, Lcom/acmeaom/android/b/c/h/i;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/h/i;-><init>(Lcom/acmeaom/android/b/c/h/c;)V

    const-string v2, "kFullScreenRequestedNotification"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->n()V

    .line 100
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->o()V

    .line 101
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/r;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/h/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->o()V

    return-void
.end method

.method private b(Lcom/acmeaom/android/a/a/b/r;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/h/c;->r()V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/acmeaom/android/b/c/h/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->n()V

    return-void
.end method

.method static synthetic c(Lcom/acmeaom/android/b/c/h/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->l()V

    return-void
.end method

.method static synthetic d(Lcom/acmeaom/android/b/c/h/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->k()V

    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/h/c;->a(Lcom/acmeaom/android/a/a/b/r;)V

    .line 105
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/h/c;->b(Lcom/acmeaom/android/a/a/b/r;)V

    .line 122
    return-void
.end method

.method private m()V
    .locals 9

    .prologue
    const/16 v5, 0xc

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/j;->g()V

    .line 183
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->o()V

    .line 185
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->q()Ljava/lang/String;

    move-result-object v2

    .line 187
    if-nez v2, :cond_1

    .line 188
    const-string v0, "radar url is null, not generating radar layers"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void

    .line 192
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/a/b/af;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/a/a/b/af;-><init>(II)V

    .line 193
    invoke-static {v2, v0}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/af;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v3, Lcom/acmeaom/android/a/a/b/af;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, v8}, Lcom/acmeaom/android/a/a/b/af;-><init>(II)V

    .line 196
    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/af;)Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    invoke-static {v0}, Lcom/acmeaom/android/a/g/b;->a(Ljava/lang/String;)V

    .line 204
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 206
    rem-int/lit8 v4, v3, 0x5

    sub-int/2addr v3, v4

    .line 207
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 208
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 212
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 213
    new-instance v3, Lcom/acmeaom/android/a/a/b/aj;

    int-to-double v4, v1

    sget-object v6, Lcom/acmeaom/android/b/c/h/c;->d:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v6, v6, Lcom/acmeaom/android/a/a/b/aj;->b:D

    mul-double/2addr v4, v6

    sget-object v6, Lcom/acmeaom/android/b/c/h/c;->b:Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v6, v6, Lcom/acmeaom/android/a/a/b/aj;->b:D

    add-double/2addr v4, v6

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 215
    new-instance v4, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v4, v3, v0}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;Ljava/util/Calendar;)V

    .line 216
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/h/c;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v3

    invoke-static {v3, v2, v4}, Lcom/acmeaom/android/b/c/h/k;->a(Lcom/acmeaom/android/c/d/e;Ljava/lang/String;Lcom/acmeaom/android/a/a/b/j;)Lcom/acmeaom/android/b/c/h/k;

    move-result-object v3

    .line 217
    invoke-virtual {v3, v8}, Lcom/acmeaom/android/c/c/i;->b(Z)V

    .line 218
    invoke-virtual {v3, v8}, Lcom/acmeaom/android/c/c/i;->a(Z)V

    .line 219
    iget-object v4, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v4, v3}, Lcom/acmeaom/android/b/c/h/j;->a(Lcom/acmeaom/android/c/c/f;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 224
    const-string v0, "kRadarSpeedKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/b/c/h/j;->a(F)V

    .line 228
    invoke-static {}, Lcom/acmeaom/android/a/f/a;->a()Lcom/acmeaom/android/a/f/a;

    move-result-object v0

    const-string v1, "kLogRadarSpeedChanged"

    const-string v2, "speed"

    iget-object v3, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/h/j;->a()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/acmeaom/android/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;F)V

    .line 231
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 234
    const-string v0, "kRadarOpacityKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 237
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/b/c/h/j;->b(F)V

    .line 241
    invoke-static {}, Lcom/acmeaom/android/a/f/a;->a()Lcom/acmeaom/android/a/f/a;

    move-result-object v0

    const-string v1, "kLogRadarOpacityChanged"

    const-string v2, "opacity"

    iget-object v3, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/h/j;->a()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/acmeaom/android/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;F)V

    .line 243
    return-void
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->b()Lcom/acmeaom/android/a/f/g;

    const-string v0, "kRadarUseHDKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private q()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 263
    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->p()Z

    move-result v2

    .line 271
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->b()Lcom/acmeaom/android/a/f/g;

    const-string v0, "kDynamicURLsKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 275
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 276
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    const-string v1, "hdradcache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected HD radar URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 152
    const-string v0, "kRadarStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/j;->b_()V

    .line 148
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->b_()V

    .line 149
    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/h/c;->m()V

    .line 161
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->e:Lcom/acmeaom/android/a/f/m;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/m;->a()Lcom/acmeaom/android/a/i/q;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/q;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/j;->g()V

    .line 169
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->e:Lcom/acmeaom/android/a/f/m;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/m;->a()Lcom/acmeaom/android/a/i/q;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/q;->a(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/b/c/h/j;->a(II)V

    .line 179
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/j;->b()V

    .line 143
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/acmeaom/android/b/c/h/c;->f:Lcom/acmeaom/android/b/c/h/j;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/j;->i()V

    .line 175
    return-void
.end method
