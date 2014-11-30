.class Lcom/dolphin/browser/ui/menu/b;
.super Ljava/lang/Object;
.source "IconMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/menu/IconMenuView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/menu/IconMenuView;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/b;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/b;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Lcom/dolphin/browser/ui/menu/IconMenuView;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/b;->a:Lcom/dolphin/browser/ui/menu/IconMenuView;

    invoke-static {v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Lcom/dolphin/browser/ui/menu/IconMenuView;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    .line 336
    :cond_0
    return-void
.end method
