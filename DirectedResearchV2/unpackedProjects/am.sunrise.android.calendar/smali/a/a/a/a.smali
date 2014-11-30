.class La/a/a/a;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:La/a/a/l;

.field private final b:La/a/a/c;


# direct methods
.method constructor <init>(La/a/a/c;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, La/a/a/a;->b:La/a/a/c;

    .line 32
    new-instance v0, La/a/a/l;

    invoke-direct {v0}, La/a/a/l;-><init>()V

    iput-object v0, p0, La/a/a/a;->a:La/a/a/l;

    .line 33
    return-void
.end method


# virtual methods
.method public a(La/a/a/p;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {p1, p2}, La/a/a/k;->a(La/a/a/p;Ljava/lang/Object;)La/a/a/k;

    move-result-object v0

    .line 37
    iget-object v1, p0, La/a/a/a;->a:La/a/a/l;

    invoke-virtual {v1, v0}, La/a/a/l;->a(La/a/a/k;)V

    .line 38
    sget-object v0, La/a/a/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, La/a/a/a;->a:La/a/a/l;

    invoke-virtual {v0}, La/a/a/l;->a()La/a/a/k;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v1, p0, La/a/a/a;->b:La/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/c;->a(La/a/a/k;)V

    .line 48
    return-void
.end method
