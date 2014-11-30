.class Lcom/dolphin/browser/core/e;
.super Landroid/content/ContextWrapper;
.source "DolphinWebkitManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/DolphinWebkitManager;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/DolphinWebkitManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/dolphin/browser/core/e;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    .line 518
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 519
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/dolphin/browser/core/e;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a(Lcom/dolphin/browser/core/DolphinWebkitManager;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/core/e;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b(Lcom/dolphin/browser/core/DolphinWebkitManager;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 533
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/core/e;->a:Lcom/dolphin/browser/core/DolphinWebkitManager;

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->c(Lcom/dolphin/browser/core/DolphinWebkitManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
