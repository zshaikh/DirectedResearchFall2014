.class public Lcom/acmeaom/android/b/c/e/a;
.super Lcom/acmeaom/android/c/f/a;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/c/c/i;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    invoke-direct {p0, p1, v0}, Lcom/acmeaom/android/c/f/a;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/a/b/aj;)V

    .line 36
    const-string v0, "kMapTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/e/a;->a(Ljava/lang/String;)Lcom/acmeaom/android/c/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    .line 38
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/acmeaom/android/b/c/e/b;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/b/c/e/b;-><init>(Lcom/acmeaom/android/b/c/e/a;)V

    const-string v2, "kMapTileTypeChangedNotification"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/a/a/b/s;->a(Lcom/acmeaom/android/a/a/b/u;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/acmeaom/android/c/c/i;
    .locals 2

    .prologue
    .line 89
    .line 93
    const-string v0, "Gray"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/acmeaom/android/c/c/c;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/c/c;-><init>(Lcom/acmeaom/android/c/d/e;)V

    .line 105
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/c/i;->b(Z)V

    .line 106
    sget-object v1, Lcom/acmeaom/android/a/f/l;->n:Lcom/acmeaom/android/a/f/l;

    iget v1, v1, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/c/i;->a(I)V

    .line 107
    sget-object v1, Lcom/acmeaom/android/a/a/b/ae;->d:Lcom/acmeaom/android/a/a/b/ae;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/c/i;->a(Lcom/acmeaom/android/a/a/b/ae;)V

    .line 110
    return-object v0

    .line 95
    :cond_0
    const-string v0, "Aerial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lcom/acmeaom/android/c/c/a;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/c/a;-><init>(Lcom/acmeaom/android/c/d/e;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/acmeaom/android/c/c/e;

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->t()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/c/e;-><init>(Lcom/acmeaom/android/c/d/e;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/acmeaom/android/b/c/e/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/e/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->g()V

    .line 117
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/e/a;->a(Ljava/lang/String;)Lcom/acmeaom/android/c/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    .line 118
    const-string v0, "kMapTileType"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->r()V

    .line 123
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/e/a;->g()V

    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->b_()V

    .line 54
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->b_()V

    .line 55
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->g()V

    .line 68
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->e()V

    .line 70
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->g()V

    .line 76
    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->i()V

    .line 48
    invoke-super {p0}, Lcom/acmeaom/android/c/f/a;->i()V

    .line 49
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/acmeaom/android/b/c/e/a;->a:Lcom/acmeaom/android/c/c/i;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/c/i;->m()V

    .line 82
    :cond_0
    return-void
.end method
