.class public Lorg/c/a/b/b;
.super Lorg/c/a/d/b/a;
.source "HttpBuffersImpl.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:Lorg/c/a/c/m;

.field private h:Lorg/c/a/c/m;

.field private i:Lorg/c/a/c/m;

.field private j:Lorg/c/a/c/m;

.field private k:Lorg/c/a/c/l;

.field private l:Lorg/c/a/c/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1800

    .line 49
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 32
    const/16 v0, 0x4000

    iput v0, p0, Lorg/c/a/b/b;->a:I

    .line 33
    iput v1, p0, Lorg/c/a/b/b;->b:I

    .line 34
    const v0, 0x8000

    iput v0, p0, Lorg/c/a/b/b;->c:I

    .line 35
    iput v1, p0, Lorg/c/a/b/b;->d:I

    .line 36
    const/16 v0, 0x400

    iput v0, p0, Lorg/c/a/b/b;->f:I

    .line 38
    sget-object v0, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    iput-object v0, p0, Lorg/c/a/b/b;->g:Lorg/c/a/c/m;

    .line 39
    sget-object v0, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    iput-object v0, p0, Lorg/c/a/b/b;->h:Lorg/c/a/c/m;

    .line 40
    sget-object v0, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    iput-object v0, p0, Lorg/c/a/b/b;->i:Lorg/c/a/c/m;

    .line 41
    sget-object v0, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    iput-object v0, p0, Lorg/c/a/b/b;->j:Lorg/c/a/c/m;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/c/l;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/c/a/b/b;->k:Lorg/c/a/c/l;

    return-object v0
.end method

.method public a(Lorg/c/a/c/m;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/c/a/b/b;->g:Lorg/c/a/c/m;

    .line 130
    return-void
.end method

.method public b()Lorg/c/a/c/l;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/c/a/b/b;->l:Lorg/c/a/c/l;

    return-object v0
.end method

.method public b(Lorg/c/a/c/m;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/c/a/b/b;->h:Lorg/c/a/c/m;

    .line 146
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/c/a/b/b;->f:I

    return v0
.end method

.method public c(Lorg/c/a/c/m;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/c/a/b/b;->i:Lorg/c/a/c/m;

    .line 162
    return-void
.end method

.method public d(Lorg/c/a/c/m;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/c/a/b/b;->j:Lorg/c/a/c/m;

    .line 178
    return-void
.end method

.method protected h()V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lorg/c/a/b/b;->h:Lorg/c/a/c/m;

    iget v1, p0, Lorg/c/a/b/b;->b:I

    iget-object v2, p0, Lorg/c/a/b/b;->g:Lorg/c/a/c/m;

    iget v3, p0, Lorg/c/a/b/b;->a:I

    iget-object v4, p0, Lorg/c/a/b/b;->g:Lorg/c/a/c/m;

    invoke-virtual {p0}, Lorg/c/a/b/b;->c()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/c/a/c/n;->a(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)Lorg/c/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/b;->k:Lorg/c/a/c/l;

    .line 201
    iget-object v0, p0, Lorg/c/a/b/b;->j:Lorg/c/a/c/m;

    iget v1, p0, Lorg/c/a/b/b;->d:I

    iget-object v2, p0, Lorg/c/a/b/b;->i:Lorg/c/a/c/m;

    iget v3, p0, Lorg/c/a/b/b;->c:I

    iget-object v4, p0, Lorg/c/a/b/b;->i:Lorg/c/a/c/m;

    invoke-virtual {p0}, Lorg/c/a/b/b;->c()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/c/a/c/n;->a(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)Lorg/c/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/b;->l:Lorg/c/a/c/l;

    .line 202
    invoke-super {p0}, Lorg/c/a/d/b/a;->h()V

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/b/b;->k:Lorg/c/a/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/b/b;->l:Lorg/c/a/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
