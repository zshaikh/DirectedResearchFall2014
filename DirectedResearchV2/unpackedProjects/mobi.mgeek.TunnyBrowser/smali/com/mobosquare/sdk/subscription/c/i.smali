.class Lcom/mobosquare/sdk/subscription/c/i;
.super Ljava/io/OutputStream;
.source "Log.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
