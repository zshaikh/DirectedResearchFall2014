.class public Lcom/acmeaom/android/a/a/b/o;
.super Lcom/acmeaom/android/a/a/b/e;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/e;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/o;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    .line 39
    iget-object v1, v0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method public static c(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/a/b/o;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    .line 33
    iget-object v1, v0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    return-object v0
.end method

.method public static f()Lcom/acmeaom/android/a/a/b/o;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/acmeaom/android/a/a/b/o;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/a/b/e;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acmeaom/android/a/a/b/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method
