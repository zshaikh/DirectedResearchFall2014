.class public Lcom/b/a/a/d;
.super Lcom/b/a/a/c;
.source "User.java"


# instance fields
.field protected a:J

.field protected b:J

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:J

.field protected h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/b/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/b/a/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/b/a/a/d;->a:J

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/b/a/a/d;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d;->a(J)V

    .line 238
    :cond_1
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0, p2}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 259
    :cond_2
    :goto_0
    return-void

    .line 241
    :cond_3
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {p0, p2}, Lcom/b/a/a/d;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_4
    const-string v0, "space_amount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d;->c(J)V

    goto :goto_0

    .line 247
    :cond_5
    const-string v0, "space_used"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d;->d(J)V

    goto :goto_0

    .line 250
    :cond_6
    const-string v0, "max_upload_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d;->e(J)V

    goto :goto_0

    .line 253
    :cond_7
    const-string v0, "access_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    invoke-static {p2}, Lcom/b/a/e/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d;->b(J)V

    goto :goto_0

    .line 256
    :cond_8
    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0, p2}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/b/a/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/b/a/a/d;->b:J

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/b/a/a/d;->d:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/b/a/a/d;->f:J

    .line 177
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/b/a/a/d;->e:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public d(J)V
    .locals 0

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/b/a/a/d;->g:J

    .line 196
    return-void
.end method

.method public e(J)V
    .locals 0

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/b/a/a/d;->h:J

    .line 215
    return-void
.end method
