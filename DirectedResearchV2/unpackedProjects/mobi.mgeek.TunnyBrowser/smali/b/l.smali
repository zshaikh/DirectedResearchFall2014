.class final Lb/l;
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
    .line 443
    iput-object p1, p0, Lb/l;->a:Lb/c;

    iput-object p2, p0, Lb/l;->b:Lb/e;

    iput-object p3, p0, Lb/l;->c:Lb/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lb/l;->a:Lb/c;

    iget-object v1, p0, Lb/l;->b:Lb/e;

    invoke-interface {v0, v1}, Lb/c;->then(Lb/e;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lb/l;->c:Lb/n;

    invoke-virtual {v1, v0}, Lb/n;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    iget-object v1, p0, Lb/l;->c:Lb/n;

    invoke-virtual {v1, v0}, Lb/n;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
