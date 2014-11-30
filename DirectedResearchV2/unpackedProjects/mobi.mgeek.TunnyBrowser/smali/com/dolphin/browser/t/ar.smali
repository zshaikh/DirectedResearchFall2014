.class Lcom/dolphin/browser/t/ar;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/mgeek/android/ui/j;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 2001
    iput-object p1, p0, Lcom/dolphin/browser/t/ar;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/t/m;)V
    .locals 0

    .prologue
    .line 2001
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/ar;-><init>(Lcom/dolphin/browser/t/l;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/dolphin/browser/t/ar;->a:Lcom/dolphin/browser/t/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/t/l;->b(Ljava/lang/String;Z)V

    .line 2007
    return-void
.end method

.method public a(Ljava/util/ArrayList;Lcom/dolphin/browser/core/ITab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dolphin/browser/core/ITab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2012
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2013
    iget-object v2, p0, Lcom/dolphin/browser/t/ar;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/t/l;->j(Ljava/lang/String;)Z

    goto :goto_0

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/t/ar;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 2016
    return-void
.end method
