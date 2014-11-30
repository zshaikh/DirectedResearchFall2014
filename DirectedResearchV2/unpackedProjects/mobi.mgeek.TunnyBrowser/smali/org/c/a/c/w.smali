.class public Lorg/c/a/c/w;
.super Lorg/c/a/c/b;
.source "ThreadLocalBuffers.java"


# instance fields
.field private final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/c/a/c/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/c/a/c/b;-><init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;)V

    .line 31
    new-instance v0, Lorg/c/a/c/x;

    invoke-direct {v0, p0}, Lorg/c/a/c/x;-><init>(Lorg/c/a/c/w;)V

    iput-object v0, p0, Lorg/c/a/c/w;->f:Ljava/lang/ThreadLocal;

    .line 44
    return-void
.end method


# virtual methods
.method public b(I)Lorg/c/a/c/f;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lorg/c/a/c/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/y;

    .line 92
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->v()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 94
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    .line 95
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/c/a/c/w;->a(I)Lorg/c/a/c/f;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lorg/c/a/c/f;)V
    .locals 2

    .prologue
    .line 105
    invoke-interface {p1}, Lorg/c/a/c/f;->e()V

    .line 106
    invoke-interface {p1}, Lorg/c/a/c/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/c/a/c/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/y;

    .line 111
    iget-object v1, v0, Lorg/c/a/c/y;->b:Lorg/c/a/c/f;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/c/a/c/w;->a(Lorg/c/a/c/f;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iput-object p1, v0, Lorg/c/a/c/y;->b:Lorg/c/a/c/f;

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, v0, Lorg/c/a/c/y;->a:Lorg/c/a/c/f;

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/c/a/c/w;->b(Lorg/c/a/c/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iput-object p1, v0, Lorg/c/a/c/y;->a:Lorg/c/a/c/f;

    goto :goto_0

    .line 116
    :cond_3
    iput-object p1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    goto :goto_0
.end method

.method public e()Lorg/c/a/c/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lorg/c/a/c/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/y;

    .line 71
    iget-object v1, v0, Lorg/c/a/c/y;->b:Lorg/c/a/c/f;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, v0, Lorg/c/a/c/y;->b:Lorg/c/a/c/f;

    .line 74
    iput-object v2, v0, Lorg/c/a/c/y;->b:Lorg/c/a/c/f;

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    invoke-virtual {p0, v1}, Lorg/c/a/c/w;->a(Lorg/c/a/c/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    .line 81
    iput-object v2, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    move-object v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/w;->c()Lorg/c/a/c/f;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lorg/c/a/c/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/c/a/c/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/y;

    .line 50
    iget-object v1, v0, Lorg/c/a/c/y;->a:Lorg/c/a/c/f;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, v0, Lorg/c/a/c/y;->a:Lorg/c/a/c/f;

    .line 53
    iput-object v2, v0, Lorg/c/a/c/y;->a:Lorg/c/a/c/f;

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    invoke-virtual {p0, v1}, Lorg/c/a/c/w;->b(Lorg/c/a/c/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    .line 60
    iput-object v2, v0, Lorg/c/a/c/y;->c:Lorg/c/a/c/f;

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/c/a/c/w;->d()Lorg/c/a/c/f;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/c/w;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/c/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
