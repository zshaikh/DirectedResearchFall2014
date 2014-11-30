.class Lcom/dolphin/browser/tablist/ai;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Lcom/dolphin/browser/core/ITabListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ai;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabCountChanged(Lcom/dolphin/browser/core/TabManager;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ai;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->j(Lcom/dolphin/browser/tablist/ac;)V

    .line 455
    return-void
.end method

.method public onTabIconChanged(Lcom/dolphin/browser/core/ITab;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onTabProgressChanged(Lcom/dolphin/browser/core/ITab;I)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public onTabSelectionChanged(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onTabTitleChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ai;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0, p1}, Lcom/dolphin/browser/tablist/ac;->a(Lcom/dolphin/browser/tablist/ac;Lcom/dolphin/browser/core/ITab;)V

    .line 434
    return-void
.end method

.method public onTabUrlChanged(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method
