.class public abstract Ldolphin/webkit/a/a/k;
.super Ldolphin/webkit/a/a/bb;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ldolphin/webkit/a/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ldolphin/webkit/a/a/bf;)V
.end method

.method abstract a(Ldolphin/webkit/a/a/bb;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ldolphin/webkit/a/a/ap;

    if-eqz v1, :cond_2

    check-cast p1, Ldolphin/webkit/a/a/ap;

    invoke-interface {p1}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/k;->a(Ldolphin/webkit/a/a/bb;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method
