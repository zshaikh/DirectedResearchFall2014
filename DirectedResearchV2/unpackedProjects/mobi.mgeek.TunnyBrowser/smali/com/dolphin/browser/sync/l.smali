.class Lcom/dolphin/browser/sync/l;
.super Ljava/lang/Object;
.source "BaseSynchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/k;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/sync/l;->a:Lcom/dolphin/browser/sync/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/sync/l;->a:Lcom/dolphin/browser/sync/k;

    invoke-static {v0}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/k;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/sync/l;->a:Lcom/dolphin/browser/sync/k;

    invoke-static {v0}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/k;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/sync/o;->a()V

    .line 119
    :cond_0
    return-void
.end method
