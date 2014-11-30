.class public Lcom/acmeaom/android/a/a/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/acmeaom/android/a/a/b/af;)Ljava/util/List;
    .locals 2

    .prologue
    .line 8
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/af;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/af;->b()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
