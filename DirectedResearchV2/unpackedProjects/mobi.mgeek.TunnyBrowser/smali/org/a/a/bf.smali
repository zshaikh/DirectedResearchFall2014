.class public Lorg/a/a/bf;
.super Lorg/a/a/n;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/a/a/n;-><init>([B)V

    .line 15
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/a/a/bf;->a:[B

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 28
    return-void
.end method
