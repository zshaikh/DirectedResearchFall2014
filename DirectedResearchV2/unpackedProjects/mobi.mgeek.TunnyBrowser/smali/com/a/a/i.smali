.class final Lcom/a/a/i;
.super Ljava/lang/Object;
.source "TrackMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->a(Lcom/a/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "TrackMonitor"

    const-string v1, "[mSendReportRunnable] send report ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->e(Lcom/a/a/g;)Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/j;

    invoke-direct {v1, p0}, Lcom/a/a/j;-><init>(Lcom/a/a/i;)V

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->g(Lcom/a/a/g;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v1}, Lcom/a/a/g;->f(Lcom/a/a/g;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void
.end method
