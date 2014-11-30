.class public Lorg/apache/c/b/g;
.super Lorg/apache/c/f;
.source "TProtocolException.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/c/f;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/b/g;->a:I

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/b/g;->a:I

    .line 52
    iput p1, p0, Lorg/apache/c/b/g;->a:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/b/g;->a:I

    .line 57
    return-void
.end method
