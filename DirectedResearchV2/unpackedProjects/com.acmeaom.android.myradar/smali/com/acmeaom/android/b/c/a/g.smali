.class public Lcom/acmeaom/android/b/c/a/g;
.super Lcom/acmeaom/android/c/f/c;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/f/y;


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field private final b:Lcom/acmeaom/android/a/a/b/o;

.field private final d:Lcom/acmeaom/android/a/a/b/n;

.field private e:Lcom/acmeaom/android/a/a/b/e;

.field private f:Lcom/acmeaom/android/a/f/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/b/c/a/g;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v0, Lcom/acmeaom/android/b/c/a/g;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/c;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 40
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    .line 41
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    .line 49
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/acmeaom/android/b/c/a/h;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/a/h;-><init>(Lcom/acmeaom/android/b/c/a/g;)V

    const-string v2, "kAirmetsStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v1, Lcom/acmeaom/android/b/c/a/i;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/a/i;-><init>(Lcom/acmeaom/android/b/c/a/g;)V

    const-string v2, "kSigmetsStatusChanged"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private a(Lcom/acmeaom/android/b/c/a/a;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/a/a;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/d/e;->a(Ljava/lang/Iterable;)V

    .line 129
    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Lcom/acmeaom/android/a/a/b/e;)V

    .line 130
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-string v0, "fi2"

    const-string v1, "AirSigmets"

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/f/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->g()V

    .line 134
    check-cast p2, Lcom/acmeaom/android/a/a/b/k;

    .line 135
    new-instance v1, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v1}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    .line 137
    const-string v0, "d"

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    const-string v2, "features"

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    .line 143
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    .line 145
    invoke-static {v0}, Lcom/acmeaom/android/b/c/a/a;->a(Lcom/acmeaom/android/a/a/b/k;)Lcom/acmeaom/android/b/c/a/a;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    iput-object v1, p0, Lcom/acmeaom/android/b/c/a/g;->e:Lcom/acmeaom/android/a/a/b/e;

    .line 152
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->r()V

    .line 153
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "kAirmetsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->d()Z

    move-result v1

    .line 65
    const-string v0, "kSigmetsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->d()Z

    move-result v0

    .line 68
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/a/g;->c(Lcom/acmeaom/android/a/f/o;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->e:Lcom/acmeaom/android/a/a/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->g()V

    .line 174
    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->b_()V

    .line 175
    return-void
.end method

.method public c(Lcom/acmeaom/android/a/f/o;)Lcom/acmeaom/android/a/a/b/k;
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ident"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/k;->a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 80
    :cond_0
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->c()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    .line 81
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    .line 82
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 83
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 89
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 90
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->g()V

    .line 93
    const-string v0, "kAirmetsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->b(Ljava/lang/String;)Z

    move-result v1

    .line 94
    const-string v0, "kSigmetsStatusKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->b(Ljava/lang/String;)Z

    move-result v2

    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->e:Lcom/acmeaom/android/a/a/b/e;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->e:Lcom/acmeaom/android/a/a/b/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/a/a;

    .line 98
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIGMET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/g;->a(Lcom/acmeaom/android/b/c/a/a;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/a/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIRMET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/a/g;->a(Lcom/acmeaom/android/b/c/a/a;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 107
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 111
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/a/g;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Ljava/lang/Iterable;)V

    .line 112
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->b:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->g()V

    .line 113
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->d:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 114
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/a/g;->f:Lcom/acmeaom/android/a/f/o;

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/acmeaom/android/c/f/c;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
