.class Lcom/dolphin/browser/core/ax;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/addons/ag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/core/au;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/au;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/dolphin/browser/core/ax;->c:Lcom/dolphin/browser/core/au;

    iput-object p2, p0, Lcom/dolphin/browser/core/ax;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dolphin/browser/core/ax;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/ag;
    .locals 3

    .prologue
    .line 1989
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 1990
    if-eqz v0, :cond_2

    .line 1991
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->m()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 1992
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 1993
    if-eqz v2, :cond_0

    .line 1994
    invoke-interface {v2, v1}, Lcom/dolphin/browser/core/ITab;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    .line 1996
    :cond_0
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->addTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 1997
    iget-object v2, p0, Lcom/dolphin/browser/core/ax;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1998
    iget-boolean v2, p0, Lcom/dolphin/browser/core/ax;->b:Z

    if-nez v2, :cond_1

    .line 1999
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 2001
    :cond_1
    new-instance v0, Lcom/dolphin/browser/addons/bb;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/bb;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 2003
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/dolphin/browser/core/ax;->a()Lcom/dolphin/browser/addons/ag;

    move-result-object v0

    return-object v0
.end method
