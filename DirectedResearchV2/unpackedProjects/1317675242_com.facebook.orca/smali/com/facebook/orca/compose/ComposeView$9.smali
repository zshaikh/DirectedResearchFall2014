.class Lcom/facebook/orca/compose/ComposeView$9;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$9;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$9;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->j(Lcom/facebook/orca/compose/ComposeView;)V

    .line 283
    return-void
.end method
