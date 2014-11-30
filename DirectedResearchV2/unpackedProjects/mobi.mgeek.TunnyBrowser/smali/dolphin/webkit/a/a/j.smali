.class public abstract Ldolphin/webkit/a/a/j;
.super Ldolphin/webkit/a/a/k;
.source "ASN1Null.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method abstract a(Ldolphin/webkit/a/a/bf;)V
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 1

    .prologue
    .line 25
    instance-of v0, p1, Ldolphin/webkit/a/a/j;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "NULL"

    return-object v0
.end method
