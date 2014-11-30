.class public Lorg/b/c/o;
.super Lorg/b/c/j;
.source "JettyJSONContextClient.java"

# interfaces
.implements Lorg/b/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/j",
        "<",
        "Lorg/b/a/e;",
        ">;",
        "Lorg/b/c/h;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/b/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)[Lorg/b/a/e;
    .locals 1

    .prologue
    .line 31
    new-array v0, p1, [Lorg/b/a/e;

    return-object v0
.end method

.method protected b()Lorg/b/a/e;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/b/c/f;

    invoke-direct {v0}, Lorg/b/c/f;-><init>()V

    return-object v0
.end method
