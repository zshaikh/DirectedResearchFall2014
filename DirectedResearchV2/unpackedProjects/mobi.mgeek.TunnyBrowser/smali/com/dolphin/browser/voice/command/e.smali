.class Lcom/dolphin/browser/voice/command/e;
.super Ljava/lang/Object;
.source "RecognizingTask.java"

# interfaces
.implements Lcom/dolphin/browser/voice/command/a/g;


# instance fields
.field a:Lcom/dolphin/browser/voice/command/m;

.field final b:Z

.field final synthetic c:Lcom/dolphin/browser/voice/command/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/d;Z)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-boolean p2, p0, Lcom/dolphin/browser/voice/command/e;->b:Z

    .line 222
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/m;->b()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/m;->a()V

    goto :goto_0

    .line 238
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    new-instance v0, Lcom/dolphin/browser/voice/command/b;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/b;-><init>(I)V

    .line 242
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 243
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->c(Lcom/dolphin/browser/voice/command/d;)V

    goto :goto_0

    .line 246
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 248
    new-instance v0, Lcom/dolphin/browser/voice/command/b;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/b;-><init>(I)V

    .line 250
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 251
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->c(Lcom/dolphin/browser/voice/command/d;)V

    goto :goto_0

    .line 254
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/m;->c()V

    goto :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->c(Lcom/dolphin/browser/voice/command/d;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/voice/command/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/dolphin/browser/voice/command/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/dolphin/browser/voice/command/b;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/b;-><init>(I)V

    .line 270
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 272
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v0}, Lcom/dolphin/browser/voice/command/m;->a()V

    .line 279
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/voice/command/e;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    new-instance v1, Lcom/dolphin/browser/voice/command/g;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/voice/command/g;-><init>(Lcom/dolphin/browser/voice/command/h;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 281
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/e;->c:Lcom/dolphin/browser/voice/command/d;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/h;Lcom/dolphin/browser/voice/command/m;)V

    .line 286
    iput-object v2, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/voice/command/m;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/e;->a:Lcom/dolphin/browser/voice/command/m;

    .line 227
    return-void
.end method
