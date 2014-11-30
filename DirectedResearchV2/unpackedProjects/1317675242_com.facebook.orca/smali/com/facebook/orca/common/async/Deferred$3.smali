.class Lcom/facebook/orca/common/async/Deferred$3;
.super Ljava/lang/Object;
.source "Deferred.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$3;->a:Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$3;->a:Lcom/facebook/orca/common/async/Deferred;

    invoke-static {v0, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
