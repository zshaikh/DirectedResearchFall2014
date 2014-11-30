.class public Lorg/a/a/c/f;
.super Lorg/a/a/ap;
.source "ReasonFlags.java"


# direct methods
.method public constructor <init>(Lorg/a/a/ap;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/a/a/ap;->e()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/ap;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/a/a/ap;-><init>([BI)V

    .line 84
    return-void
.end method
