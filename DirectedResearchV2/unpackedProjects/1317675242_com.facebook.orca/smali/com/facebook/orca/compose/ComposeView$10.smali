.class Lcom/facebook/orca/compose/ComposeView$10;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ComposeView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$10;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$10;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/Throwable;)V

    .line 301
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationResult;

    .line 295
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$10;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v1, v0}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/location/LocationResult;)V

    .line 296
    return-void
.end method
