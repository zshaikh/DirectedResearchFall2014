.class Lcom/dolphin/browser/t/u;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/dolphin/browser/core/TabManager;

.field final synthetic c:Z

.field final synthetic d:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;Ljava/util/ArrayList;Lcom/dolphin/browser/core/TabManager;Z)V
    .locals 0

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/dolphin/browser/t/u;->d:Lcom/dolphin/browser/t/l;

    iput-object p2, p0, Lcom/dolphin/browser/t/u;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/dolphin/browser/t/u;->b:Lcom/dolphin/browser/core/TabManager;

    iput-boolean p4, p0, Lcom/dolphin/browser/t/u;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/dolphin/browser/t/u;->d:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lcom/dolphin/browser/t/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/t/l;->a(Ljava/util/ArrayList;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1996
    iget-object v1, p0, Lcom/dolphin/browser/t/u;->b:Lcom/dolphin/browser/core/TabManager;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dolphin/browser/t/u;->c:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 1997
    return-void
.end method
