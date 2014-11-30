.class Lcom/dolphin/browser/util/aw;
.super Ljava/lang/Object;
.source "DolphinUIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/AlertDialogBuilder;

.field final synthetic b:Lcom/dolphin/browser/util/av;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/av;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dolphin/browser/util/aw;->b:Lcom/dolphin/browser/util/av;

    iput-object p2, p0, Lcom/dolphin/browser/util/aw;->a:Lcom/dolphin/browser/addons/AlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/util/aw;->a:Lcom/dolphin/browser/addons/AlertDialogBuilder;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
