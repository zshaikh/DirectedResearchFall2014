.class Lcom/facebook/orca/compose/ComposeView$14;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$14;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$14;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Z)Z

    .line 864
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$14;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0, v1, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;ZZ)V

    .line 865
    return-void
.end method
