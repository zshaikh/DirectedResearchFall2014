.class Lcom/dolphin/browser/tablist/bs;
.super Ljava/lang/Object;
.source "TabListBottomBar.java"

# interfaces
.implements Lcom/dolphin/browser/core/ITabListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/TabListBottomBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bs;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabCountChanged(Lcom/dolphin/browser/core/TabManager;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bs;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->f(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    .line 248
    return-void
.end method

.method public onTabIconChanged(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onTabProgressChanged(Lcom/dolphin/browser/core/ITab;I)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onTabSelectionChanged(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onTabTitleChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onTabUrlChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
