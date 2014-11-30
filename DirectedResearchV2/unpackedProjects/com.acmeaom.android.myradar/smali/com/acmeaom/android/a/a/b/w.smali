.class public abstract Lcom/acmeaom/android/a/a/b/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)V
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/a/b/w;->a([Ljava/lang/Object;)V

    .line 24
    return-void
.end method
