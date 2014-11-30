.class Lcom/dolphin/browser/core/as;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ITab;

.field final synthetic b:Lcom/dolphin/browser/core/TabManager;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/dolphin/browser/core/as;->b:Lcom/dolphin/browser/core/TabManager;

    iput-object p2, p0, Lcom/dolphin/browser/core/as;->a:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/dolphin/browser/core/as;->a:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->destroy()V

    .line 1272
    return-void
.end method
