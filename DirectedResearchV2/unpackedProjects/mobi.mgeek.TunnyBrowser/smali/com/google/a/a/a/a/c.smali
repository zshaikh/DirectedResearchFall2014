.class final Lcom/google/a/a/a/a/c;
.super Ljava/lang/ThreadLocal;
.source "UnicodeEscaper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[C
    .locals 1

    .prologue
    .line 457
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/a/a/a/a/c;->a()[C

    move-result-object v0

    return-object v0
.end method
