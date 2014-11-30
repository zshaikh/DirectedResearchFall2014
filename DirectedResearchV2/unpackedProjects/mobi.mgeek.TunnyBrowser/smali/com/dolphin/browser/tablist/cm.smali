.class Lcom/dolphin/browser/tablist/cm;
.super Ljava/lang/Object;
.source "TabThumbLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/bk;

.field final synthetic b:Lcom/dolphin/browser/tablist/cl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/cl;Lcom/dolphin/browser/tablist/bk;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cm;->b:Lcom/dolphin/browser/tablist/cl;

    iput-object p2, p0, Lcom/dolphin/browser/tablist/cm;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/tablist/cm;->a:Lcom/dolphin/browser/tablist/bk;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cm;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
