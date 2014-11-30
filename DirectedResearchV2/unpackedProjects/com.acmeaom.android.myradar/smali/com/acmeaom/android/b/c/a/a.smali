.class public Lcom/acmeaom/android/b/c/a/a;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/acmeaom/android/a/a/b/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private transient k:Lcom/acmeaom/android/a/i/i;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/a/a/b/k;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    const-wide/high16 v6, -0x4000000000000000L

    .line 60
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 61
    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 62
    const-string v1, "coordinates"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    .line 65
    new-instance v1, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v1}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    .line 66
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/e;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v3

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->a()D

    move-result-wide v0

    .line 70
    cmpl-double v5, v3, v6

    if-lez v5, :cond_1

    cmpg-double v5, v3, v8

    if-ltz v5, :cond_0

    :cond_1
    cmpl-double v5, v0, v6

    if-lez v5, :cond_2

    cmpg-double v5, v0, v8

    if-ltz v5, :cond_0

    .line 74
    :cond_2
    new-instance v5, Lcom/acmeaom/android/a/a/d/a;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    .line 75
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0, v5}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/a;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/o;->c(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 80
    new-instance v0, Lcom/acmeaom/android/b/c/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/acmeaom/android/b/c/a/c;-><init>(Lcom/acmeaom/android/b/c/a/a;Lcom/acmeaom/android/b/c/a/b;)V

    throw v0

    .line 83
    :cond_4
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->d:Ljava/lang/String;

    .line 85
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 87
    const-string v1, "severity"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->c:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->c:Ljava/lang/String;

    .line 90
    const-string v1, "hazard"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->b:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->b:Ljava/lang/String;

    .line 93
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->e:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->e:Ljava/lang/String;

    .line 96
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->f:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->f:Ljava/lang/String;

    .line 99
    const-string v1, "MinFtMSL"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->g:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->g:Ljava/lang/String;

    .line 102
    const-string v1, "MaxFtMSL"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->h:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->h:Ljava/lang/String;

    .line 105
    const-string v1, "MoveDirDeg"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->i:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/a;->i:Ljava/lang/String;

    .line 108
    const-string v1, "MoveSpdKts"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->j:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->j:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/e;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {p1}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    .line 127
    :cond_0
    :goto_0
    return-object p1

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/acmeaom/android/a/a/b/o;->c(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/o;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v7}, Lcom/acmeaom/android/a/a/b/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/a;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v2

    .line 118
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/o;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/a;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 120
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    .line 124
    :cond_2
    invoke-virtual {v1, v7}, Lcom/acmeaom/android/a/a/b/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 125
    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/e;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/b/c/a/a;
    .locals 1

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Lcom/acmeaom/android/b/c/a/a;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/b/c/a/a;-><init>(Lcom/acmeaom/android/a/a/b/k;)V
    :try_end_0
    .catch Lcom/acmeaom/android/b/c/a/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const-string p0, "N/A"

    .line 134
    :cond_0
    return-object p0
.end method

.method private l()Lcom/acmeaom/android/c/g/c/a;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/acmeaom/android/b/c/a/e;->b()Lcom/acmeaom/android/b/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/b/c/a/e;->b(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/b/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/acmeaom/android/c/g/c/b;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/acmeaom/android/b/c/a/e;->b()Lcom/acmeaom/android/b/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/b/c/a/e;->c(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/c/g/c/b;

    move-result-object v0

    return-object v0
.end method

.method private n()Lcom/acmeaom/android/c/g/c/e;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/acmeaom/android/b/c/a/e;->b()Lcom/acmeaom/android/b/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/b/c/a/e;->d(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/c/g/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/acmeaom/android/a/a/b/ac;->a()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "%@ : Type: %@, Id: %@, Hazard: %@"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/acmeaom/android/b/c/a/a;->e:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/acmeaom/android/b/c/a/a;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/acmeaom/android/b/c/a/a;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    .line 190
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/a;->l()Lcom/acmeaom/android/c/g/c/a;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/a;->m()Lcom/acmeaom/android/c/g/c/b;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/a/a;->n()Lcom/acmeaom/android/c/g/c/e;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 205
    :cond_2
    return-object v0
.end method

.method public c()Lcom/acmeaom/android/a/i/i;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->k:Lcom/acmeaom/android/a/i/i;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/acmeaom/android/b/c/a/e;->b()Lcom/acmeaom/android/b/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/b/c/a/e;->f(Lcom/acmeaom/android/b/c/a/a;)Lcom/acmeaom/android/a/i/i;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->k:Lcom/acmeaom/android/a/i/i;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->k:Lcom/acmeaom/android/a/i/i;

    return-object v0
.end method

.method public d()Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->a:Lcom/acmeaom/android/a/a/b/o;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/a;->h:Ljava/lang/String;

    return-object v0
.end method
