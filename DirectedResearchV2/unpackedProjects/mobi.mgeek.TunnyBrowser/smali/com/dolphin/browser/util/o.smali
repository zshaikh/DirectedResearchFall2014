.class Lcom/dolphin/browser/util/o;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/dolphin/browser/util/n;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/n;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/util/o;->b:Lcom/dolphin/browser/util/n;

    iput-object p2, p0, Lcom/dolphin/browser/util/o;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/o;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/util/o;->b:Lcom/dolphin/browser/util/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/n;->a()V

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dolphin/browser/util/o;->b:Lcom/dolphin/browser/util/n;

    invoke-virtual {v1}, Lcom/dolphin/browser/util/n;->a()V

    throw v0
.end method
