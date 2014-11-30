.class public Lcom/acmeaom/android/b/c/f/a;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/aa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/acmeaom/android/a/a/b/j;

.field private g:Lcom/acmeaom/android/a/a/b/j;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/acmeaom/android/a/a/b/aa;

.field private l:Lcom/acmeaom/android/a/a/b/aa;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/acmeaom/android/a/a/b/aa;

.field private p:Lcom/acmeaom/android/a/a/b/e;

.field private q:Lcom/acmeaom/android/a/a/b/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/b/k;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/k;->a()Lcom/acmeaom/android/a/a/b/k;

    move-result-object v1

    .line 103
    const-string v0, "ACCat"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->a:Lcom/acmeaom/android/a/a/b/aa;

    .line 104
    const-string v0, "CID"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->b:Ljava/lang/String;

    .line 105
    const-string v0, "Center"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->c:Ljava/lang/String;

    .line 106
    const-string v0, "Dept"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->d:Ljava/lang/String;

    .line 107
    const-string v0, "Dest"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->e:Ljava/lang/String;

    .line 108
    const-string v0, "ETA"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/f/a;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->f:Lcom/acmeaom/android/a/a/b/j;

    .line 109
    const-string v0, "ETD"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/f/a;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->g:Lcom/acmeaom/android/a/a/b/j;

    .line 110
    const-string v0, "EquipQual"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->h:Ljava/lang/String;

    .line 111
    const-string v0, "Filed"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->i:Ljava/lang/String;

    .line 112
    const-string v0, "Ident"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->j:Ljava/lang/String;

    .line 113
    const-string v0, "Speed"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->k:Lcom/acmeaom/android/a/a/b/aa;

    .line 114
    const-string v0, "Status"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->l:Lcom/acmeaom/android/a/a/b/aa;

    .line 115
    const-string v0, "Touched"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->m:Ljava/lang/String;

    .line 116
    const-string v0, "Type"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->n:Ljava/lang/String;

    .line 117
    const-string v0, "UserCat"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->o:Lcom/acmeaom/android/a/a/b/aa;

    .line 118
    invoke-direct {p0, v1}, Lcom/acmeaom/android/b/c/f/a;->c(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->p:Lcom/acmeaom/android/a/a/b/e;

    .line 119
    const-string v0, "Fixes"

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->q:Lcom/acmeaom/android/a/a/b/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lcom/acmeaom/android/b/d/a;

    invoke-direct {v1, v0}, Lcom/acmeaom/android/b/d/a;-><init>(Ljava/lang/ClassCastException;)V

    throw v1
.end method

.method private a(Lcom/acmeaom/android/a/a/b/aa;)F
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/aa;->c()F

    move-result v0

    .line 136
    return v0
.end method

.method private a(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/j;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/b/c/f/a;
    .locals 2

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    new-instance v0, Lcom/acmeaom/android/b/c/f/a;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/b/c/f/a;-><init>(Lcom/acmeaom/android/a/a/b/k;)V
    :try_end_0
    .catch Lcom/acmeaom/android/b/d/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 126
    const-string v0, "Waypoints"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    return-object v0
.end method

.method private c(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/e;
    .locals 15

    .prologue
    .line 141
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v5

    .line 142
    invoke-direct/range {p0 .. p1}, Lcom/acmeaom/android/b/c/f/a;->b(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v1

    .line 143
    if-nez v1, :cond_0

    .line 144
    new-instance v0, Lcom/acmeaom/android/b/d/a;

    const-string v1, "no waypoints in response"

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/d/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L

    const-wide/high16 v6, 0x7ff8000000000000L

    invoke-static {v2, v3, v6, v7}, Lcom/acmeaom/android/a/a/d/b;->a(DD)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 150
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 151
    const-string v1, "latitudeDecimal"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {p0, v1}, Lcom/acmeaom/android/b/c/f/a;->a(Lcom/acmeaom/android/a/a/b/aa;)F

    move-result v1

    float-to-double v3, v1

    const-wide/high16 v7, 0x404e000000000000L

    div-double/2addr v3, v7

    .line 154
    const-string v1, "longitudeDecimal"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/f/a;->a(Lcom/acmeaom/android/a/a/b/aa;)F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    const-wide/high16 v7, 0x404e000000000000L

    div-double/2addr v0, v7

    .line 157
    invoke-static {v2}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 158
    invoke-virtual {v2, v3, v4}, Lcom/acmeaom/android/a/a/d/b;->b(D)V

    .line 159
    invoke-virtual {v2, v0, v1}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    .line 174
    :goto_1
    new-instance v7, Lcom/acmeaom/android/a/a/d/a;

    invoke-direct {v7, v3, v4, v1, v2}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 175
    invoke-virtual {v5, v7}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    move-object v2, v0

    .line 176
    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v7

    sub-double/2addr v7, v0

    const-wide v9, -0x3f99800000000000L

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    .line 163
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v0

    add-double/2addr v0, v3

    const-wide/high16 v2, 0x3fe0000000000000L

    mul-double/2addr v2, v0

    .line 164
    new-instance v0, Lcom/acmeaom/android/a/a/d/a;

    const-wide v7, -0x3f998051eb851eb8L

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 165
    invoke-virtual {v5, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 166
    new-instance v0, Lcom/acmeaom/android/a/a/d/a;

    const-wide v7, -0x3f997fae147ae148L

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 167
    invoke-virtual {v5, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 168
    const-wide v0, 0x40667fae147ae148L

    .line 171
    :goto_2
    invoke-static {v2, v3, v0, v1}, Lcom/acmeaom/android/a/a/d/b;->a(DD)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v4

    move-wide v11, v0

    move-object v0, v4

    move-wide v13, v2

    move-wide v3, v13

    move-wide v1, v11

    goto :goto_1

    .line 177
    :cond_2
    return-object v5

    :cond_3
    move-wide v2, v3

    goto :goto_2
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/a;->p:Lcom/acmeaom/android/a/a/b/e;

    return-object v0
.end method
