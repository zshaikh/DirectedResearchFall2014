.class Lcom/facebook/orca/compose/ComposeView$7;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$7;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$7;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->h(Lcom/facebook/orca/compose/ComposeView;)V

    .line 266
    return-void
.end method
