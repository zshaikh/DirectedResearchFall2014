.class public Lcom/acmeaom/android/b/e/a;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/a/b/n;

.field private final b:Ljava/util/HashMap;

.field private c:F

.field private d:Lcom/acmeaom/android/a/a/c/l;

.field private e:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    const/high16 v0, 0x3f800000

    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/a/f/k;->a:Lcom/acmeaom/android/a/f/k;

    iget v2, v2, Lcom/acmeaom/android/a/f/k;->d:I

    add-int/lit8 v2, v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/acmeaom/android/b/e/a;-><init>(FLcom/acmeaom/android/a/a/c/l;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(FLcom/acmeaom/android/a/a/c/l;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 33
    new-instance v0, Lcom/acmeaom/android/a/a/b/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    .line 46
    iput p1, p0, Lcom/acmeaom/android/b/e/a;->c:F

    .line 47
    iput-object p2, p0, Lcom/acmeaom/android/b/e/a;->d:Lcom/acmeaom/android/a/a/c/l;

    .line 48
    iput p3, p0, Lcom/acmeaom/android/b/e/a;->e:I

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/d/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 58
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/acmeaom/android/b/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 60
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/acmeaom/android/a/a/b/o;

    .line 61
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/acmeaom/android/a/a/d/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 68
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/acmeaom/android/b/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/acmeaom/android/a/a/d/a;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/o;->a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/o;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/acmeaom/android/a/a/b/e;
    .locals 7

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    new-instance v1, Lcom/acmeaom/android/a/a/b/e;

    iget-object v2, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/acmeaom/android/a/a/b/e;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->a()I

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v3

    .line 89
    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/e;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 90
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/acmeaom/android/a/a/b/e;

    move-object v1, v2

    .line 93
    check-cast v1, Lcom/acmeaom/android/a/a/c/d;

    invoke-static {v1}, Lcom/acmeaom/android/a/a/c/d;->c(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v5

    move-object v1, v2

    .line 94
    check-cast v1, Lcom/acmeaom/android/a/a/c/d;

    invoke-static {v1}, Lcom/acmeaom/android/a/a/c/d;->d(Lcom/acmeaom/android/a/a/c/d;)I

    move-result v1

    .line 95
    int-to-float v5, v5

    iget v6, p0, Lcom/acmeaom/android/b/e/a;->c:F

    div-float/2addr v5, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/acmeaom/android/b/e/a;->c:F

    div-float/2addr v1, v6

    invoke-static {v5, v1}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    .line 97
    new-instance v5, Lcom/acmeaom/android/c/g/c/f;

    check-cast v2, Lcom/acmeaom/android/a/a/c/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lcom/acmeaom/android/c/g/c/f;-><init>(Lcom/acmeaom/android/a/a/c/d;Ljava/util/ArrayList;)V

    .line 98
    invoke-virtual {v5, v1}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 99
    iget v0, p0, Lcom/acmeaom/android/b/e/a;->e:I

    invoke-virtual {v5, v0}, Lcom/acmeaom/android/c/g/c/f;->a(I)V

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->d:Lcom/acmeaom/android/a/a/c/l;

    invoke-virtual {v5, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 101
    sget-object v0, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    invoke-virtual {v5, v0}, Lcom/acmeaom/android/c/g/c/f;->a(Lcom/acmeaom/android/c/b;)V

    .line 102
    invoke-virtual {v3, v5}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 106
    :cond_1
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->a()V

    .line 111
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v0, p0, Lcom/acmeaom/android/b/e/a;->a:Lcom/acmeaom/android/a/a/b/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/n;->b()V

    .line 113
    return-void
.end method
