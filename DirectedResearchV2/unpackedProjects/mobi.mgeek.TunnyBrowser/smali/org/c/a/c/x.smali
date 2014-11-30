.class Lorg/c/a/c/x;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/c/a/c/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/c/a/c/w;


# direct methods
.method constructor <init>(Lorg/c/a/c/w;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/c/a/c/x;->a:Lorg/c/a/c/w;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/c/a/c/y;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/c/a/c/y;

    invoke-direct {v0}, Lorg/c/a/c/y;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/c/a/c/x;->a()Lorg/c/a/c/y;

    move-result-object v0

    return-object v0
.end method
