.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/x",
        "<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lc/m/x/a/gv/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lc/m/x/a/gv/ac",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onCreateLoader()Lcom/facebook/widget/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Lc/m/x/a/gv/ac;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/m/x/a/gv/ac",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Lc/m/x/a/gv/ac;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->onLoadFinished(Lc/m/x/a/gv/ac;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Lc/m/x/a/gv/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/m/x/a/gv/ac",
            "<",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadReset(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    return-void
.end method
