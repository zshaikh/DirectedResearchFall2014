.class public Lorg/c/a/a/s;
.super Ljava/lang/Object;
.source "HttpEventListenerWrapper.java"

# interfaces
.implements Lorg/c/a/a/r;


# instance fields
.field a:Lorg/c/a/a/r;

.field b:Z

.field c:Z

.field d:Z

.field private e:Lorg/c/a/c/f;

.field private f:I

.field private g:Lorg/c/a/c/f;


# direct methods
.method public constructor <init>(Lorg/c/a/a/r;Z)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/s;->d:Z

    .line 45
    iput-object p1, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    .line 46
    iput-boolean p2, p0, Lorg/c/a/a/s;->b:Z

    .line 47
    iput-boolean p2, p0, Lorg/c/a/a/s;->c:Z

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->a()V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->a(Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0, p1, p2, p3}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lorg/c/a/a/s;->e:Lorg/c/a/c/f;

    .line 154
    iput p2, p0, Lorg/c/a/a/s;->f:I

    .line 155
    iput-object p3, p0, Lorg/c/a/a/s;->g:Lorg/c/a/c/f;

    goto :goto_0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0, p1, p2}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 137
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/c/a/a/s;->b:Z

    .line 73
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->b()V

    .line 113
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 95
    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/c/a/a/s;->c:Z

    .line 78
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->c()V

    .line 143
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lorg/c/a/a/s;->d:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    iget-object v1, p0, Lorg/c/a/a/s;->e:Lorg/c/a/c/f;

    iget v2, p0, Lorg/c/a/a/s;->f:I

    iget-object v3, p0, Lorg/c/a/a/s;->g:Lorg/c/a/c/f;

    invoke-interface {v0, v1, v2, v3}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->d()V

    .line 125
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->e()V

    .line 101
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/c/a/a/s;->b:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/c/a/a/s;->a:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->f()V

    .line 163
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/c/a/a/s;->c:Z

    return v0
.end method
