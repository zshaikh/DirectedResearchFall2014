.class final Lb/g;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/c;

.field final synthetic b:Lb/e;

.field final synthetic c:Lb/n;


# direct methods
.method constructor <init>(Lb/c;Lb/e;Lb/n;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lb/g;->a:Lb/c;

    iput-object p2, p0, Lb/g;->b:Lb/e;

    iput-object p3, p0, Lb/g;->c:Lb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/c;

    iget-object v1, p0, Lb/g;->b:Lb/e;

    invoke-interface {v0, v1}, Lb/c;->then(Lb/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e;

    .line 481
    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lb/g;->c:Lb/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/n;->b(Ljava/lang/Object;)V

    .line 501
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v1, Lb/h;

    invoke-direct {v1, p0}, Lb/h;-><init>(Lb/g;)V

    invoke-virtual {v0, v1}, Lb/e;->a(Lb/c;)Lb/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    iget-object v1, p0, Lb/g;->c:Lb/n;

    invoke-virtual {v1, v0}, Lb/n;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
