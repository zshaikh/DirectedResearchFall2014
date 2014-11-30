.class Lcom/dolphin/browser/sync/c;
.super Ljava/lang/Object;
.source "BaseProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/b;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/sync/c;->a:Lcom/dolphin/browser/sync/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/sync/c;->a:Lcom/dolphin/browser/sync/b;

    invoke-static {v0}, Lcom/dolphin/browser/sync/b;->a(Lcom/dolphin/browser/sync/b;)Lcom/dolphin/browser/sync/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/sync/c;->a:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/sync/c;->a:Lcom/dolphin/browser/sync/b;

    invoke-static {v1}, Lcom/dolphin/browser/sync/b;->a(Lcom/dolphin/browser/sync/b;)Lcom/dolphin/browser/sync/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/sync/d;->a(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
