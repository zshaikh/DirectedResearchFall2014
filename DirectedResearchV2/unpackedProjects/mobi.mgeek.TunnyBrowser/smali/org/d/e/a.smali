.class public Lorg/d/e/a;
.super Ljava/lang/Object;
.source "OAuth10aServiceImpl.java"

# interfaces
.implements Lorg/d/e/c;


# instance fields
.field private a:Lorg/d/d/a;

.field private b:Lorg/d/a/a/b;


# direct methods
.method public constructor <init>(Lorg/d/a/a/b;Lorg/d/d/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    .line 30
    iput-object p2, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    .line 31
    return-void
.end method

.method private a(Lorg/d/d/c;)V
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lorg/d/e/b;->a:[I

    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v1}, Lorg/d/d/a;->d()Lorg/d/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lorg/d/d/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    const-string v1, "using Http Header signature"

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v0}, Lorg/d/a/a/b;->j()Lorg/d/c/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/d/c/d;->a(Lorg/d/d/c;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/d/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    const-string v1, "using Querystring signature"

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/d/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lorg/d/d/c;Lorg/d/d/i;)V
    .locals 3

    .prologue
    .line 57
    const-string v0, "oauth_timestamp"

    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->m()Lorg/d/f/c;

    move-result-object v1

    invoke-interface {v1}, Lorg/d/f/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "oauth_nonce"

    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->m()Lorg/d/f/c;

    move-result-object v1

    invoke-interface {v1}, Lorg/d/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v1}, Lorg/d/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->l()Lorg/d/f/b;

    move-result-object v1

    invoke-interface {v1}, Lorg/d/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "oauth_version"

    invoke-virtual {p0}, Lorg/d/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v0}, Lorg/d/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scope"

    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v1}, Lorg/d/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v0, "oauth_signature"

    invoke-direct {p0, p1, p2}, Lorg/d/e/a;->b(Lorg/d/d/c;Lorg/d/d/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appended additional OAuth parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/d/d/c;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lorg/d/g/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private b(Lorg/d/d/c;Lorg/d/d/i;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    const-string v1, "generating signature..."

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v0}, Lorg/d/a/a/b;->i()Lorg/d/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/d/c/b;->a(Lorg/d/d/c;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->l()Lorg/d/f/b;

    move-result-object v1

    iget-object v2, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v2}, Lorg/d/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/d/d/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/d/f/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base string is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 122
    return-object v1
.end method


# virtual methods
.method public a(Lorg/d/d/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v0, p1}, Lorg/d/a/a/b;->a(Lorg/d/d/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/d/d/i;
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtaining request token from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v2}, Lorg/d/a/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/d/d/c;

    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->o()Lorg/d/d/j;

    move-result-object v1

    iget-object v2, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v2}, Lorg/d/a/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/d/d/c;-><init>(Lorg/d/d/j;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting oauth_callback to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v3}, Lorg/d/d/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 42
    const-string v1, "oauth_callback"

    iget-object v2, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    invoke-virtual {v2}, Lorg/d/d/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lorg/d/d/b;->a:Lorg/d/d/i;

    invoke-direct {p0, v0, v1}, Lorg/d/e/a;->a(Lorg/d/d/c;Lorg/d/d/i;)V

    .line 44
    invoke-direct {p0, v0}, Lorg/d/e/a;->a(Lorg/d/d/c;)V

    .line 46
    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    const-string v2, "sending request..."

    invoke-virtual {v1, v2}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lorg/d/d/c;->i()Lorg/d/d/g;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/d/d/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/d/d/g;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v0}, Lorg/d/a/a/b;->k()Lorg/d/c/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/d/c/f;->a(Ljava/lang/String;)Lorg/d/d/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/d/d/i;Lorg/d/d/k;)Lorg/d/d/i;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtaining access token from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v2}, Lorg/d/a/a/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lorg/d/d/c;

    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->n()Lorg/d/d/j;

    move-result-object v1

    iget-object v2, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v2}, Lorg/d/a/a/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/d/d/c;-><init>(Lorg/d/d/j;Ljava/lang/String;)V

    .line 75
    const-string v1, "oauth_token"

    invoke-virtual {p1}, Lorg/d/d/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "oauth_verifier"

    invoke-virtual {p2}, Lorg/d/d/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lorg/d/e/a;->a:Lorg/d/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting token to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and verifier to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/d/d/a;->a(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v0, p1}, Lorg/d/e/a;->a(Lorg/d/d/c;Lorg/d/d/i;)V

    .line 80
    invoke-direct {p0, v0}, Lorg/d/e/a;->a(Lorg/d/d/c;)V

    .line 81
    invoke-virtual {v0}, Lorg/d/d/c;->i()Lorg/d/d/g;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/d/e/a;->b:Lorg/d/a/a/b;

    invoke-virtual {v1}, Lorg/d/a/a/b;->h()Lorg/d/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/d/d/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/d/c/a;->a(Ljava/lang/String;)Lorg/d/d/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "1.0"

    return-object v0
.end method
