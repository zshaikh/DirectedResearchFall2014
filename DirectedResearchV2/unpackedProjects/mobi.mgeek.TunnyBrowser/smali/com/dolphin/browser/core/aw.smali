.class Lcom/dolphin/browser/core/aw;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/core/au;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/au;I)V
    .locals 0

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/dolphin/browser/core/aw;->b:Lcom/dolphin/browser/core/au;

    iput p2, p0, Lcom/dolphin/browser/core/aw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1933
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1934
    if-eqz v0, :cond_0

    .line 1935
    iget v1, p0, Lcom/dolphin/browser/core/aw;->a:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/TabManager;I)Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1936
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 1938
    :cond_0
    return-void
.end method
