.class Lorg/c/a/c/b/i;
.super Ljava/lang/Object;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/c/a/c/b/g;


# direct methods
.method constructor <init>(Lorg/c/a/c/b/g;J)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/c/a/c/b/i;->b:Lorg/c/a/c/b/g;

    iput-wide p2, p0, Lorg/c/a/c/b/i;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 304
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/i;->b:Lorg/c/a/c/b/g;

    iget-wide v1, p0, Lorg/c/a/c/b/i;->a:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/b/g;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v0, p0, Lorg/c/a/c/b/i;->b:Lorg/c/a/c/b/g;

    invoke-virtual {v0, v3}, Lorg/c/a/c/b/g;->a(Z)V

    .line 310
    return-void

    .line 308
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/i;->b:Lorg/c/a/c/b/g;

    invoke-virtual {v1, v3}, Lorg/c/a/c/b/g;->a(Z)V

    throw v0
.end method
