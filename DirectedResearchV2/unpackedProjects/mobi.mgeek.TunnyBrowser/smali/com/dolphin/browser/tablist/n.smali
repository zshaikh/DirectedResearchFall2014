.class Lcom/dolphin/browser/tablist/n;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dolphin/browser/tablist/n;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/n;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->c(Lcom/dolphin/browser/tablist/j;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    iget-object v1, p0, Lcom/dolphin/browser/tablist/n;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->c(Lcom/dolphin/browser/tablist/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method
