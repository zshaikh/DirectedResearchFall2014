.class public Lcom/acmeaom/android/a/a/b/e;
.super Ljava/util/AbstractList;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    .line 19
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    .line 15
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/a/b/e;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/e;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    .line 36
    iget-object v1, v0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v0
.end method

.method public static d()Lcom/acmeaom/android/a/a/b/e;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/acmeaom/android/a/a/b/e;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/e;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
