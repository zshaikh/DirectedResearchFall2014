.class Lcom/facebook/orca/compose/ComposeView$6;
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
    .line 255
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$6;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$6;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->g(Lcom/facebook/orca/compose/ComposeView;)V

    .line 259
    return-void
.end method
