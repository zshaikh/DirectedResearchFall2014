.class Lcom/dolphin/browser/sync/g;
.super Ljava/lang/Object;
.source "BaseSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/f;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dolphin/browser/sync/g;->a:Lcom/dolphin/browser/sync/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/sync/g;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/sync/g;->a:Lcom/dolphin/browser/sync/f;

    invoke-static {v0}, Lcom/dolphin/browser/sync/f;->a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/sync/o;->a(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method
