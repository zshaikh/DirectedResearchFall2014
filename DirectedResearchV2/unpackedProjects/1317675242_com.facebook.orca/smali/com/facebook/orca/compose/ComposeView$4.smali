.class Lcom/facebook/orca/compose/ComposeView$4;
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
    .line 232
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$4;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$4;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->e(Lcom/facebook/orca/compose/ComposeView;)V

    .line 236
    return-void
.end method
