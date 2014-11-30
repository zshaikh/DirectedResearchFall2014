.class Lcom/facebook/orca/compose/ComposeView$11;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
.source "ComposeView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$11;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationResult;

    .line 307
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$11;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v1, v0}, Lcom/facebook/orca/compose/ComposeView;->b(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/location/LocationResult;)V

    .line 308
    return-void
.end method
