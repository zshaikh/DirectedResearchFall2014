.class public Ldolphin/net/http/o;
.super Ljava/lang/Object;
.source "HttpAuthHeader.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Ldolphin/net/http/o;->c(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 367
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iput-object p2, p0, Ldolphin/net/http/o;->d:Ljava/lang/String;

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    const-string v0, "stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0, p2}, Ldolphin/net/http/o;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_2
    const-string v0, "opaque"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iput-object p2, p0, Ldolphin/net/http/o;->e:Ljava/lang/String;

    goto :goto_0

    .line 382
    :cond_3
    const-string v0, "qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/http/o;->f:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_4
    const-string v0, "algorithm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/net/http/o;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0, p1}, Ldolphin/net/http/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 269
    iget v1, p0, Ldolphin/net/http/o;->a:I

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {p0, v0}, Ldolphin/net/http/o;->e(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    if-eqz p1, :cond_2

    .line 285
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 286
    if-ltz v0, :cond_2

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const/4 v1, 0x2

    iput v1, p0, Ldolphin/net/http/o;->a:I

    .line 292
    const-string v1, "md5"

    iput-object v1, p0, Ldolphin/net/http/o;->g:Ljava/lang/String;

    .line 299
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_1
    return-object v0

    .line 294
    :cond_1
    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x1

    iput v1, p0, Ldolphin/net/http/o;->a:I

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    if-eqz p1, :cond_1

    .line 319
    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 320
    if-gez v0, :cond_2

    .line 322
    invoke-direct {p0, p1}, Ldolphin/net/http/o;->f(Ljava/lang/String;)V

    .line 327
    :goto_0
    if-gez v0, :cond_0

    .line 329
    :cond_1
    return-void

    .line 324
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldolphin/net/http/o;->f(Ljava/lang/String;)V

    .line 325
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 338
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 339
    if-ltz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 341
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/net/http/o;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    iput-object v0, p0, Ldolphin/net/http/o;->c:Ljava/lang/String;

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget v2, p0, Ldolphin/net/http/o;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 354
    invoke-direct {p0, v1, v0}, Ldolphin/net/http/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/http/o;->b:Z

    .line 404
    :cond_0
    return-void
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 412
    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 414
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 416
    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 420
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Ldolphin/net/http/o;->i:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Ldolphin/net/http/o;->h:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/net/http/o;->h:Z

    .line 134
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Ldolphin/net/http/o;->j:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ldolphin/net/http/o;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ldolphin/net/http/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Ldolphin/net/http/o;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Ldolphin/net/http/o;->a:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Ldolphin/net/http/o;->b:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ldolphin/net/http/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Ldolphin/net/http/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldolphin/net/http/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ldolphin/net/http/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Ldolphin/net/http/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 241
    iget-object v2, p0, Ldolphin/net/http/o;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 242
    iget v2, p0, Ldolphin/net/http/o;->a:I

    if-ne v2, v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget v2, p0, Ldolphin/net/http/o;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 246
    iget-object v2, p0, Ldolphin/net/http/o;->g:Ljava/lang/String;

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldolphin/net/http/o;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldolphin/net/http/o;->f:Ljava/lang/String;

    const-string v3, "auth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 253
    goto :goto_0
.end method
