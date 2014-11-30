.class public Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;
.super Ljava/lang/RuntimeException;
.source "Deferred.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 381
    return-void
.end method
