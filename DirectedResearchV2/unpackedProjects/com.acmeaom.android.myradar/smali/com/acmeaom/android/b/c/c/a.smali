.class public Lcom/acmeaom/android/b/c/c/a;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/c/g/c/e;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 36
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/acmeaom/android/b/c/c/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/c/b;-><init>(Lcom/acmeaom/android/b/c/c/a;)V

    const-string v2, "kLocationChanged"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private a(Lcom/acmeaom/android/a/a/d/b;Lcom/acmeaom/android/a/a/d/b;)V
    .locals 8

    .prologue
    const-wide/high16 v5, 0x3fe0000000000000L

    const-wide/high16 v3, -0x4020000000000000L

    .line 68
    const-string v0, "kMapFollowLocationKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 74
    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/acmeaom/android/b/c/c/a;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v1, p2}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/acmeaom/android/c/d/a;->b(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 79
    const v1, 0x3ea3d70a

    .line 80
    invoke-static {v0, v0}, Lcom/acmeaom/android/c/d/a;->c(Lcom/acmeaom/android/a/g/m;Lcom/acmeaom/android/a/g/m;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 82
    invoke-virtual {p2}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 83
    iget-object v4, p0, Lcom/acmeaom/android/b/c/c/a;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v4}, Lcom/acmeaom/android/c/d/e;->w()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v6

    add-double/2addr v0, v6

    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/acmeaom/android/a/a/d/b;-><init>(DD)V

    .line 87
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->c:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0, v5}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/c/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/c/a;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/c/a;->e()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/c/e;->f()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/c/e;->f()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/b/c/c/a;->a(Lcom/acmeaom/android/a/a/d/b;Lcom/acmeaom/android/a/a/d/b;)V

    .line 64
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->c()Lcom/acmeaom/android/a/a/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    const/high16 v4, 0x42400000

    .line 108
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/c/a;->g()V

    .line 109
    invoke-static {}, Lcom/acmeaom/android/a/f/b;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v1, "blue dot.png"

    invoke-static {v1}, Lcom/acmeaom/android/a/i/i;->a(Ljava/lang/String;)Lcom/acmeaom/android/a/i/i;

    move-result-object v1

    .line 118
    new-instance v2, Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/i;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v1

    new-instance v3, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v3, v4, v4}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    invoke-direct {v2, v1, v3}, Lcom/acmeaom/android/c/g/c/e;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    iput-object v2, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    .line 119
    iget-object v1, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 120
    iget-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    sget-object v1, Lcom/acmeaom/android/a/f/l;->a:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/e;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 121
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/c/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/c/a;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/c/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/c/a;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/c/a;->a:Lcom/acmeaom/android/c/g/c/e;

    .line 127
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
