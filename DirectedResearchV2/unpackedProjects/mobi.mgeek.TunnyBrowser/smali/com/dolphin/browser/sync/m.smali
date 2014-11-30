.class Lcom/dolphin/browser/sync/m;
.super Ljava/lang/Object;
.source "BaseSynchronizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/sync/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/k;I)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/sync/m;->b:Lcom/dolphin/browser/sync/k;

    iput p2, p0, Lcom/dolphin/browser/sync/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/sync/m;->b:Lcom/dolphin/browser/sync/k;

    invoke-static {v0}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/k;)Lcom/dolphin/browser/sync/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lcom/dolphin/browser/sync/m;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/sync/m;->b:Lcom/dolphin/browser/sync/k;

    invoke-static {v1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/k;)Lcom/dolphin/browser/sync/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/sync/o;->a(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
