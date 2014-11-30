.class public Lcom/acmeaom/android/a/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/acmeaom/android/a/a/c/b;

.field private b:Lcom/acmeaom/android/a/a/c/b;

.field private c:F

.field private d:F

.field private e:Lcom/acmeaom/android/a/a/c/m;

.field private f:Lcom/acmeaom/android/a/a/c/b;

.field private g:Lcom/acmeaom/android/a/a/c/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/acmeaom/android/a/a/a/a;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/acmeaom/android/a/a/a/a;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/acmeaom/android/a/a/a/a;->c:F

    .line 87
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/b;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/a/a/a/a;->a:Lcom/acmeaom/android/a/a/c/b;

    .line 35
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/d;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 42
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 44
    const v10, 0x3fc90fdb

    .line 45
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    neg-float v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 48
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 51
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v7

    iget v8, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    move-object v6, v0

    move v9, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 55
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 58
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v3, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    mul-float v4, v12, v10

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 62
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 65
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    iget-object v2, v2, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget v3, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    iget v2, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    mul-float v3, v12, v10

    const/high16 v4, 0x40400000

    mul-float/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 69
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 71
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->c()Lcom/acmeaom/android/a/a/c/i;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 72
    iget-object v1, p0, Lcom/acmeaom/android/a/a/a/a;->a:Lcom/acmeaom/android/a/a/c/b;

    invoke-static {p1, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 73
    invoke-static {p1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 75
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->c()Lcom/acmeaom/android/a/a/c/i;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 76
    iget v0, p0, Lcom/acmeaom/android/a/a/a/a;->c:F

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;F)V

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/a/a/a/a;->b:Lcom/acmeaom/android/a/a/c/b;

    invoke-static {p1, v0}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 78
    invoke-static {p1}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;)V

    .line 79
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/m;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/acmeaom/android/a/a/a/a;->e:Lcom/acmeaom/android/a/a/c/m;

    .line 95
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/n;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/acmeaom/android/a/a/a/a;->g:Lcom/acmeaom/android/a/a/c/n;

    .line 103
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/acmeaom/android/a/a/a/a;->d:F

    .line 91
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/a/c/b;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/acmeaom/android/a/a/a/a;->b:Lcom/acmeaom/android/a/a/c/b;

    .line 83
    return-void
.end method

.method public c(Lcom/acmeaom/android/a/a/c/b;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/acmeaom/android/a/a/a/a;->f:Lcom/acmeaom/android/a/a/c/b;

    .line 99
    return-void
.end method
