.class Lcom/facebook/orca/cache/PendingSendMessage$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "PendingSendMessage.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/cache/PendingSendMessage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/orca/cache/PendingSendMessage$1;->a:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage$1;->a:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-static {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->b(Lcom/facebook/orca/cache/PendingSendMessage;)V

    .line 119
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage$1;->a:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-static {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->a(Lcom/facebook/orca/cache/PendingSendMessage;)V

    .line 114
    return-void
.end method
