.class public Lcom/acmeaom/android/b/c/k/e;
.super Lcom/acmeaom/android/c/g/c/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/b/a;


# instance fields
.field private a:Lcom/acmeaom/android/b/c/k/a;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/b/c/k/a;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lcom/acmeaom/android/b/c/k/e;->a(Lcom/acmeaom/android/b/c/k/a;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/acmeaom/android/c/g/c/a;-><init>(Ljava/util/ArrayList;Z)V

    .line 41
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/k/a;->h()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/k/e;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 42
    sget-object v0, Lcom/acmeaom/android/a/f/l;->k:Lcom/acmeaom/android/a/f/l;

    iget v0, v0, Lcom/acmeaom/android/a/f/l;->o:I

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/b/c/k/e;->a(I)V

    .line 43
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/e;->a:Lcom/acmeaom/android/b/c/k/a;

    .line 44
    return-void
.end method

.method private static a(Lcom/acmeaom/android/b/c/k/a;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    const-string v0, "can\'t create graphic with no polygons"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "can\'t create graphic with no locations"

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/acmeaom/android/a/i/t;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/e;->a:Lcom/acmeaom/android/b/c/k/a;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/k/g;->a(Lcom/acmeaom/android/b/c/k/a;)Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/acmeaom/android/a/i/i;
    .locals 5

    .prologue
    const/high16 v4, 0x42800000

    const/high16 v3, 0x42300000

    const/high16 v2, 0x41200000

    .line 74
    invoke-static {}, Lcom/acmeaom/android/a/a/a/a;->a()Lcom/acmeaom/android/a/a/a/a;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/acmeaom/android/b/c/k/e;->a:Lcom/acmeaom/android/b/c/k/a;

    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/k/a;->h()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->a(Lcom/acmeaom/android/a/a/c/b;)V

    .line 76
    iget-object v1, p0, Lcom/acmeaom/android/b/c/k/e;->a:Lcom/acmeaom/android/b/c/k/a;

    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/k/a;->g()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->b(Lcom/acmeaom/android/a/a/c/b;)V

    .line 77
    const/high16 v1, 0x3fc00000

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->a(F)V

    .line 78
    const/high16 v1, 0x41800000

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->b(F)V

    .line 79
    invoke-static {v2, v2, v3, v3}, Lcom/acmeaom/android/a/a/c/o;->a(FFFF)Lcom/acmeaom/android/a/a/c/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->a(Lcom/acmeaom/android/a/a/c/m;)V

    .line 80
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->c(Lcom/acmeaom/android/a/a/c/b;)V

    .line 81
    invoke-static {v2, v2}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 82
    invoke-static {v4, v4}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/a/i/h;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 83
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/a/a;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 84
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->b()Lcom/acmeaom/android/a/i/i;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->c()V

    .line 87
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/e;->a:Lcom/acmeaom/android/b/c/k/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
