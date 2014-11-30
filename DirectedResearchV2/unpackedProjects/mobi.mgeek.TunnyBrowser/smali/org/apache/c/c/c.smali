.class public Lorg/apache/c/c/c;
.super Lorg/apache/c/f;
.source "TTransportException.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/c/f;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/c/c;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/c/f;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/c/c;->a:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/c/f;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/c/c/c;->a:I

    .line 65
    return-void
.end method
