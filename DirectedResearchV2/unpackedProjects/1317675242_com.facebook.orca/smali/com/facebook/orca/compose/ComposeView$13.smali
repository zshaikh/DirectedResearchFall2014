.class Lcom/facebook/orca/compose/ComposeView$13;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$13;->b:Lcom/facebook/orca/compose/ComposeView;

    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeView$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$13;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$13;->b:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/content/Intent;)V

    .line 683
    return-void
.end method
