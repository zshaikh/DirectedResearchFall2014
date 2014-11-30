.class public Lcom/android/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/android/a/w;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/a/h;

    invoke-direct {v0, p0, p1}, Lcom/android/a/h;-><init>(Lcom/android/a/g;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/a/g;->a:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/android/a/p;Lcom/android/a/aa;)V
    .locals 4

    .prologue
    .line 67
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/android/a/t;->a(Lcom/android/a/aa;)Lcom/android/a/t;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/a/g;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/a/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/a/i;-><init>(Lcom/android/a/g;Lcom/android/a/p;Lcom/android/a/t;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public a(Lcom/android/a/p;Lcom/android/a/t;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/a/g;->a(Lcom/android/a/p;Lcom/android/a/t;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Lcom/android/a/p;Lcom/android/a/t;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/a/p;->u()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/a/p;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/a/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/a/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/a/i;-><init>(Lcom/android/a/g;Lcom/android/a/p;Lcom/android/a/t;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
