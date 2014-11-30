.class Lorg/c/a/a/c;
.super Lorg/c/a/d/g/f;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic a:Lorg/c/a/a/a;


# direct methods
.method private constructor <init>(Lorg/c/a/a/a;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lorg/c/a/a/c;->a:Lorg/c/a/a/a;

    invoke-direct {p0}, Lorg/c/a/d/g/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/a/a;Lorg/c/a/a/b;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lorg/c/a/a/c;-><init>(Lorg/c/a/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lorg/c/a/a/c;->a:Lorg/c/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/a;->b(Lorg/c/a/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/c/a/a/c;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    iget-object v1, p0, Lorg/c/a/a/c;->a:Lorg/c/a/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/o;->b(Lorg/c/a/a/a;)V

    .line 485
    :cond_0
    return-void
.end method
