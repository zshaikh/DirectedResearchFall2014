.class public Lcom/acmeaom/android/b/c/f/b;
.super Lcom/acmeaom/android/c/f/c;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/f/y;


# static fields
.field public static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field b:Z

.field private d:Lcom/acmeaom/android/b/c/f/a;

.field private e:Lcom/acmeaom/android/c/g/c/b;

.field private f:Lcom/acmeaom/android/a/f/o;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide/high16 v1, 0x404e000000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/f/b;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    sget-object v0, Lcom/acmeaom/android/b/c/f/b;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/c;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 59
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/acmeaom/android/b/c/f/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/f/c;-><init>(Lcom/acmeaom/android/b/c/f/b;)V

    const-string v2, "kFlightTrackStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/acmeaom/android/b/c/f/d;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/f/d;-><init>(Lcom/acmeaom/android/b/c/f/b;)V

    const-string v2, "kFlightNumberStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/acmeaom/android/b/c/f/e;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/f/e;-><init>(Lcom/acmeaom/android/b/c/f/b;)V

    const-string v2, "kMapTileTypeChangedNotification"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->k()V

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const-string v0, "fi2"

    const-string v1, "FlightPath"

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/f/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 168
    check-cast p2, Lcom/acmeaom/android/a/a/b/k;

    .line 169
    const-string v0, "d"

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/acmeaom/android/b/c/f/b;->g:Z

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Lcom/acmeaom/android/b/c/f/a;->a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/b/c/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->d:Lcom/acmeaom/android/b/c/f/a;

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->r()V

    .line 178
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->d:Lcom/acmeaom/android/b/c/f/a;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 79
    const-string v0, "kFlightTrackStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/f/b;->c(Lcom/acmeaom/android/a/f/o;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->d:Lcom/acmeaom/android/b/c/f/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acmeaom/android/b/c/f/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->g()V

    .line 215
    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->b_()V

    .line 216
    return-void
.end method

.method public c(Lcom/acmeaom/android/a/f/o;)Lcom/acmeaom/android/a/a/b/k;
    .locals 3

    .prologue
    .line 186
    const-string v0, "kFlightNumberKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "ident"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/k;->a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    .line 93
    :cond_0
    const-string v0, "kFlightNumberKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/b/c/f/b;->g:Z

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->c()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 102
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->s()V

    goto :goto_0
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->g()V

    .line 107
    iget-object v1, p0, Lcom/acmeaom/android/b/c/f/b;->d:Lcom/acmeaom/android/b/c/f/a;

    .line 108
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/f/a;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/f/a;->c()Ljava/util/List;

    move-result-object v2

    const/high16 v3, 0x40400000

    invoke-direct {v0, v2, v3}, Lcom/acmeaom/android/c/g/c/b;-><init>(Ljava/util/List;F)V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    .line 118
    const-string v0, "kMapTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    const-string v2, "Roads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VFR Sectional"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IFR Enroute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    :cond_2
    const v0, 0x3eb0b0b1

    const v2, 0x3e189899

    invoke-static {v4, v0, v2, v5}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {v2, v0}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 133
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    sget-object v2, Lcom/acmeaom/android/a/f/l;->i:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 134
    iget-boolean v0, p0, Lcom/acmeaom/android/b/c/f/b;->b:Z

    if-nez v0, :cond_3

    .line 135
    const-string v0, "New flight plan on file for \"%@\"!"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/f/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v0, v0, Lcom/acmeaom/android/c/d/e;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/acmeaom/android/b/c/f/f;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/f/f;-><init>(Lcom/acmeaom/android/b/c/f/b;)V

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/d/b;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    iput-boolean v6, p0, Lcom/acmeaom/android/b/c/f/b;->b:Z

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/c/a;)V

    goto :goto_0

    .line 127
    :cond_4
    const v0, 0x3f48c8c9

    const v2, 0x3da0a0a1

    invoke-static {v4, v0, v2, v5}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    goto :goto_1
.end method

.method public g()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/c/a;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->e:Lcom/acmeaom/android/c/g/c/b;

    .line 157
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 210
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->g()V

    .line 193
    iput-boolean v1, p0, Lcom/acmeaom/android/b/c/f/b;->g:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/f/b;->d:Lcom/acmeaom/android/b/c/f/a;

    .line 195
    iput-boolean v1, p0, Lcom/acmeaom/android/b/c/f/b;->b:Z

    .line 196
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->r()V

    .line 197
    return-void
.end method

.method k()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->g()V

    .line 202
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/f/b;->r()V

    .line 203
    return-void
.end method
