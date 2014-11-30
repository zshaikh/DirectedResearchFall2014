.class Lorg/c/a/a/d;
.super Lorg/c/a/b/r;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic a:Lorg/c/a/a/a;


# direct methods
.method private constructor <init>(Lorg/c/a/a/a;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    invoke-direct {p0}, Lorg/c/a/b/r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/a/a;Lorg/c/a/a/b;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lorg/c/a/a/d;-><init>(Lorg/c/a/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 322
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 338
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;)V

    .line 330
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 273
    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lorg/c/a/a/a;->i()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "No exchange for response"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    invoke-static {v0}, Lorg/c/a/a/a;->a(Lorg/c/a/a/a;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 300
    :goto_0
    return-void

    .line 280
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 295
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    sget-object v2, Lorg/c/a/b/x;->d:Lorg/c/a/c/f;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/c/a/a/a;->d:Z

    .line 296
    iget-object v1, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iput p2, v1, Lorg/c/a/a/a;->e:I

    .line 297
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 298
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    goto :goto_0

    .line 285
    :sswitch_0
    new-instance v1, Lorg/c/a/a/e;

    iget-object v2, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    invoke-direct {v1, v2, v0}, Lorg/c/a/a/e;-><init>(Lorg/c/a/a/a;Lorg/c/a/a/t;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    goto :goto_1

    .line 290
    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {v0}, Lorg/c/a/a/t;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v1, v1, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/c/a/b/q;->a(Z)V

    goto :goto_1

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 306
    if-eqz v0, :cond_1

    .line 308
    sget-object v1, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    invoke-virtual {v1, p1}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 310
    iget-object v1, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    sget-object v2, Lorg/c/a/b/n;->a:Lorg/c/a/b/n;

    invoke-virtual {v2, p2}, Lorg/c/a/b/n;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v2

    iput-object v2, v1, Lorg/c/a/a/a;->f:Lorg/c/a/c/f;

    .line 312
    :cond_0
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 314
    :cond_1
    return-void
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lorg/c/a/a/d;->a:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lorg/c/a/a/t;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    new-instance v1, Lorg/c/a/c/t;

    const-string v2, "early EOF"

    invoke-direct {v1, v2}, Lorg/c/a/c/t;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 352
    :cond_0
    return-void
.end method
