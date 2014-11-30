.class public Lcom/acmeaom/android/b/c/g/e;
.super Lcom/acmeaom/android/b/c/g/b;
.source "ProGuard"


# instance fields
.field private b:Lcom/acmeaom/android/a/a/d/b;

.field private c:Ljava/lang/Number;

.field private d:Lcom/acmeaom/android/a/a/b/j;

.field private e:Lcom/acmeaom/android/a/a/b/ak;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/b;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/acmeaom/android/b/e/a/a;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/g/b;-><init>(Lcom/acmeaom/android/b/e/a/a;)V

    .line 51
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/acmeaom/android/b/e/a/c;->c_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "Can not create hurricane point with feature: %@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->c()V

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/g/e;->a(Lcom/acmeaom/android/b/e/a/a;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/b/e/a/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/acmeaom/android/b/e/a/c;->c_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, "Can not create hurricane point with feature: %@"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->c()Lcom/acmeaom/android/b/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/acmeaom/android/b/e/a/c;->c()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/a;->a()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->b:Lcom/acmeaom/android/a/a/d/b;

    .line 66
    invoke-virtual {p1}, Lcom/acmeaom/android/b/e/a/a;->b()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "wind"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->c:Ljava/lang/Number;

    .line 68
    const-string v0, "tz"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    const-string v1, "date"

    const-class v2, Ljava/lang/Number;

    invoke-virtual {p1, v1, v2}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 70
    const-string v2, "off"

    const-class v3, Ljava/lang/Number;

    invoke-virtual {p1, v2, v3}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 72
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 73
    new-instance v3, Lcom/acmeaom/android/a/a/b/aj;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/j;->a(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/g/e;->d:Lcom/acmeaom/android/a/a/b/j;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/ak;->a(I)Lcom/acmeaom/android/a/a/b/ak;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/b/c/g/e;->e:Lcom/acmeaom/android/a/a/b/ak;

    .line 75
    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->f:Ljava/lang/String;

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->e:Lcom/acmeaom/android/a/a/b/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->d:Lcom/acmeaom/android/a/a/b/j;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->e:Lcom/acmeaom/android/a/a/b/ak;

    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/e;->d:Lcom/acmeaom/android/a/a/b/j;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/f/z;->a(Lcom/acmeaom/android/a/a/b/ak;Lcom/acmeaom/android/a/a/b/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->g:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "%@ %@"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/acmeaom/android/b/c/g/e;->g:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/acmeaom/android/b/c/g/e;->f:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->g:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected d()Lcom/acmeaom/android/b/c/g/f;
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->c:Lcom/acmeaom/android/b/c/g/f;

    .line 89
    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/e;->c:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 91
    const/high16 v2, 0x431c0000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 92
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->i:Lcom/acmeaom/android/b/c/g/f;

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    const/high16 v2, 0x43030000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x431b0000

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    .line 94
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->h:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 95
    :cond_2
    const/high16 v2, 0x42de0000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x43020000

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    .line 96
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->g:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 97
    :cond_3
    const/high16 v2, 0x42c00000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4

    const/high16 v2, 0x42dc0000

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_4

    .line 98
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->f:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 99
    :cond_4
    const/high16 v2, 0x42940000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    const/high16 v2, 0x42be0000

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_5

    .line 100
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->e:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 101
    :cond_5
    const/high16 v2, 0x421c0000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42920000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 102
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->d:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const-string v0, "hp-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/g/e;->d()Lcom/acmeaom/android/b/c/g/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/g/f;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->c:Ljava/lang/Number;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lcom/acmeaom/android/a/a/d/b;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/e;->b:Lcom/acmeaom/android/a/a/d/b;

    return-object v0
.end method
