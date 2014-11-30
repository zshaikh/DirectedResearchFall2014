.class Lcom/dolphin/browser/tablist/bt;
.super Ljava/lang/Object;
.source "TabListBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/TabManager;

.field final synthetic b:Lcom/dolphin/browser/tablist/TabListBottomBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/TabListBottomBar;Lcom/dolphin/browser/core/TabManager;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bt;->b:Lcom/dolphin/browser/tablist/TabListBottomBar;

    iput-object p2, p0, Lcom/dolphin/browser/tablist/bt;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bt;->b:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->g(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/bt;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method
