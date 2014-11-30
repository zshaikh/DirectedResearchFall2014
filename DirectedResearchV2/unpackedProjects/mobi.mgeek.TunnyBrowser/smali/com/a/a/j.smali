.class final Lcom/a/a/j;
.super Ljava/lang/Object;
.source "TrackMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/i;


# direct methods
.method constructor <init>(Lcom/a/a/i;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v0, v0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->c(Lcom/a/a/g;)Lcom/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v1}, Lcom/a/a/g;->b(Lcom/a/a/g;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v0, v0, Lcom/a/a/i;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->d(Lcom/a/a/g;)V

    .line 222
    :cond_0
    return-void
.end method
