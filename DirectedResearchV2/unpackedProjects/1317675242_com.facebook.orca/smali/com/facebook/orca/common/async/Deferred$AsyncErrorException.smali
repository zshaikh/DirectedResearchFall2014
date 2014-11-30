.class public Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;
.super Ljava/lang/RuntimeException;
.source "Deferred.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/Deferred;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 399
    iput-object p2, p0, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;->b:Ljava/lang/Object;

    .line 400
    return-void
.end method
