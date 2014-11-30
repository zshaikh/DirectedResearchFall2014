.class public Lcom/c/b/d/b;
.super Ljava/lang/Object;
.source "UserStore.java"


# instance fields
.field protected a:Lorg/apache/c/b/f;

.field protected b:Lorg/apache/c/b/f;

.field protected c:I


# direct methods
.method public constructor <init>(Lorg/apache/c/b/f;Lorg/apache/c/b/f;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    .line 47
    iput-object p2, p0, Lcom/c/b/d/b;->b:Lorg/apache/c/b/f;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Lcom/c/b/c/z;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->i()Lorg/apache/c/b/e;

    move-result-object v0

    .line 245
    iget-byte v1, v0, Lorg/apache/c/b/e;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v0, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    invoke-static {v0}, Lorg/apache/c/a;->a(Lorg/apache/c/b/f;)Lorg/apache/c/a;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 248
    throw v0

    .line 250
    :cond_0
    iget v0, v0, Lorg/apache/c/b/e;->c:I

    iget v1, p0, Lcom/c/b/d/b;->c:I

    if-eq v0, v1, :cond_1

    .line 251
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x4

    const-string v2, "getUser failed: out of sequence response"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    new-instance v0, Lcom/c/b/d/e;

    invoke-direct {v0}, Lcom/c/b/d/e;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/d/e;->a(Lorg/apache/c/b/f;)V

    .line 255
    iget-object v1, p0, Lcom/c/b/d/b;->a:Lorg/apache/c/b/f;

    invoke-virtual {v1}, Lorg/apache/c/b/f;->a()V

    .line 256
    invoke-virtual {v0}, Lcom/c/b/d/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    invoke-static {v0}, Lcom/c/b/d/e;->c(Lcom/c/b/d/e;)Lcom/c/b/c/z;

    move-result-object v0

    return-object v0

    .line 259
    :cond_2
    invoke-static {v0}, Lcom/c/b/d/e;->d(Lcom/c/b/d/e;)Lcom/c/b/a/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 260
    invoke-static {v0}, Lcom/c/b/d/e;->d(Lcom/c/b/d/e;)Lcom/c/b/a/f;

    move-result-object v0

    throw v0

    .line 262
    :cond_3
    invoke-static {v0}, Lcom/c/b/d/e;->e(Lcom/c/b/d/e;)Lcom/c/b/a/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 263
    invoke-static {v0}, Lcom/c/b/d/e;->e(Lcom/c/b/d/e;)Lcom/c/b/a/d;

    move-result-object v0

    throw v0

    .line 265
    :cond_4
    new-instance v0, Lorg/apache/c/a;

    const/4 v1, 0x5

    const-string v2, "getUser failed: unknown result"

    invoke-direct {v0, v1, v2}, Lorg/apache/c/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/c/b/c/z;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/c/b/d/b;->b(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/c/b/d/b;->a()Lcom/c/b/c/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/c/b/d/b;->b:Lorg/apache/c/b/f;

    new-instance v1, Lorg/apache/c/b/e;

    const-string v2, "getUser"

    const/4 v3, 0x1

    iget v4, p0, Lcom/c/b/d/b;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/c/b/d/b;->c:I

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/c/b/e;-><init>(Ljava/lang/String;BI)V

    invoke-virtual {v0, v1}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/e;)V

    .line 235
    new-instance v0, Lcom/c/b/d/c;

    invoke-direct {v0}, Lcom/c/b/d/c;-><init>()V

    .line 236
    invoke-virtual {v0, p1}, Lcom/c/b/d/c;->a(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/c/b/d/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0, v1}, Lcom/c/b/d/c;->a(Lorg/apache/c/b/f;)V

    .line 238
    iget-object v0, p0, Lcom/c/b/d/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->b()V

    .line 239
    iget-object v0, p0, Lcom/c/b/d/b;->b:Lorg/apache/c/b/f;

    invoke-virtual {v0}, Lorg/apache/c/b/f;->C()Lorg/apache/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/c/c/b;->a()V

    .line 240
    return-void
.end method
