.class public Lcom/acmeaom/android/b/c/a/e;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# static fields
.field private static a:Lcom/acmeaom/android/b/c/a/e;

.field private static final b:Lcom/acmeaom/android/a/i/d;


# instance fields
.field private c:Lcom/acmeaom/android/a/a/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x3e99999a

    .line 60
    const v0, 0x3ecccccd

    invoke-static {v1, v1, v1, v0}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/b/c/a/e;->b:Lcom/acmeaom/android/a/i/d;

    .line 66
    new-instance v0, Lcom/acmeaom/android/b/c/a/e;

    invoke-direct {v0}, Lcom/acmeaom/android/b/c/a/e;-><init>()V

    sput-object v0, Lcom/acmeaom/android/b/c/a/e;->a:Lcom/acmeaom/android/b/c/a/e;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;
    .locals 3

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/e;->c()Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/e;->c()Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 160
    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/e;->c()Lcom/acmeaom/android/a/a/b/k;

    move-result-object v1

    const-string v2, "Default"

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/k;
    .locals 1

    .prologue
    .line 175
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-virtual {p2, p1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v0, "Default"

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    goto :goto_0
.end method

.method private a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/i/d;
    .locals 4

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    sget-object v0, Lcom/acmeaom/android/b/c/a/e;->b:Lcom/acmeaom/android/a/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->g()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const-string v0, "Red"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    .line 212
    const-string v1, "Green"

    invoke-virtual {p1, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/b/aa;

    .line 213
    const-string v2, "Blue"

    invoke-virtual {p1, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/acmeaom/android/a/a/b/aa;

    .line 214
    const-string v3, "Alpha"

    invoke-virtual {p1, v3}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acmeaom/android/a/a/b/aa;

    .line 215
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v0

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v1

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v2

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 190
    const-string v0, "Color"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 191
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/e;->a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;
    .locals 2

    .prologue
    .line 168
    const-string v0, "Default"

    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/b/c/a/e;->a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 197
    .line 199
    const-string v0, "Border color"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 201
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/e;->a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public static b()Lcom/acmeaom/android/b/c/a/e;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/acmeaom/android/b/c/a/e;->a:Lcom/acmeaom/android/b/c/a/e;

    return-object v0
.end method

.method private c(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)F
    .locals 4

    .prologue
    .line 223
    const/high16 v1, 0x3fc00000

    .line 225
    const-string v0, "Border width"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Lcom/acmeaom/android/a/a/b/ah;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/acmeaom/android/a/a/b/ah;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/ah;->a()Lcom/acmeaom/android/a/a/b/aa;

    move-result-object v0

    .line 236
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v0

    .line 241
    :goto_1
    return v0

    .line 230
    :cond_0
    instance-of v2, v0, Lcom/acmeaom/android/a/a/b/aa;

    if-eqz v2, :cond_1

    .line 231
    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private c()Lcom/acmeaom/android/a/a/b/k;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/e;->c:Lcom/acmeaom/android/a/a/b/k;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/acmeaom/android/a/a/b/f;->a()Lcom/acmeaom/android/a/a/b/f;

    move-result-object v0

    const-string v1, "bsSigmetsFactory"

    const-string v2, "plist"

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/e;->c:Lcom/acmeaom/android/a/a/b/k;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/e;->c:Lcom/acmeaom/android/a/a/b/k;

    return-object v0
.end method

.method private d(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/i;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    .line 247
    if-nez p1, :cond_3

    move-object v2, v1

    .line 250
    :goto_0
    if-nez v2, :cond_4

    move-object v0, v1

    .line 255
    :goto_1
    if-nez v0, :cond_0

    .line 256
    if-nez v2, :cond_5

    move-object v0, v1

    .line 262
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p2}, Lcom/acmeaom/android/b/c/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/e;->b(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    .line 264
    if-nez v0, :cond_6

    move-object v0, v1

    .line 271
    :cond_1
    :goto_3
    invoke-static {}, Lcom/acmeaom/android/a/a/b/l;->a()Lcom/acmeaom/android/a/a/b/l;

    move-result-object v2

    invoke-static {}, Lcom/acmeaom/android/a/a/b/f;->a()Lcom/acmeaom/android/a/a/b/f;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/acmeaom/android/a/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/a/a/b/l;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-static {v0}, Lcom/acmeaom/android/a/i/i;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/i;

    move-result-object v1

    .line 280
    :cond_2
    return-object v1

    .line 247
    :cond_3
    const-string v0, "Icons"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    move-object v2, v0

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p2}, Lcom/acmeaom/android/b/c/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 256
    :cond_5
    const-string v0, "Default"

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 264
    :cond_6
    const-string v2, "Icons"

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    const-string v2, "Default"

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->e(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0, p1}, Lcom/acmeaom/android/b/c/a/e;->b(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public b(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/b/c/a/d;
    .locals 2

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/acmeaom/android/b/c/a/d;

    invoke-direct {v0, p1}, Lcom/acmeaom/android/b/c/a/d;-><init>(Lcom/acmeaom/android/b/c/a/a;)V
    :try_end_0
    .catch Lcom/acmeaom/android/c/g/c/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->e(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v1, p1}, Lcom/acmeaom/android/b/c/a/e;->a(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/a/d;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 101
    sget-object v1, Lcom/acmeaom/android/a/f/l;->k:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/a/d;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/c/g/c/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->e(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v2

    .line 108
    if-nez v2, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/acmeaom/android/b/c/a/e;->c(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)F

    move-result v3

    .line 116
    :try_start_0
    new-instance v1, Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->e()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lcom/acmeaom/android/c/g/c/b;-><init>(Ljava/util/List;F)V
    :try_end_0
    .catch Lcom/acmeaom/android/c/g/c/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-direct {p0, v2, p1}, Lcom/acmeaom/android/b/c/a/e;->b(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 123
    sget-object v0, Lcom/acmeaom/android/a/f/l;->j:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/f/l;)V

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/c/g/c/e;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->f(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/i;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/acmeaom/android/c/g/c/e;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/i/i;)V

    .line 136
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->d()Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 137
    sget-object v1, Lcom/acmeaom/android/a/f/l;->h:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/f/l;)V

    goto :goto_0
.end method

.method public e(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/a/b/k;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/e;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/acmeaom/android/b/c/a/e;->a(Ljava/lang/String;Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public f(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/i;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/e;->e(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/acmeaom/android/b/c/a/e;->d(Lcom/acmeaom/android/a/a/b/k;Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/i;

    move-result-object v0

    return-object v0
.end method
