.class final Lorg/c/a/b/f;
.super Ljava/lang/ThreadLocal;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/c/a/b/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/c/a/b/h;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lorg/c/a/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/b/h;-><init>(Lorg/c/a/b/f;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/c/a/b/f;->a()Lorg/c/a/b/h;

    move-result-object v0

    return-object v0
.end method
