.class public Lcom/facebook/orca/common/async/Deferred$CancelledException;
.super Ljava/lang/RuntimeException;
.source "Deferred.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$CancelledException;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 390
    return-void
.end method
