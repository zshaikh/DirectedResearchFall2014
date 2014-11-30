.class public Lcom/dolphin/browser/q/b/ag;
.super Ljava/lang/Object;
.source "EvernoteManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/q/b/ag;


# instance fields
.field private b:Lcom/dolphin/browser/q/b/f;

.field private c:Lcom/dolphin/browser/q/b/bi;

.field private d:Z

.field private e:Lcom/dolphin/browser/q/b/bj;

.field private f:Ljava/lang/String;

.field private g:Lcom/dolphin/browser/q/b/ba;

.field private h:Lcom/dolphin/browser/javascript/EvernotePageClipHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/dolphin/browser/q/b/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/q/b/aq;-><init>(Lcom/dolphin/browser/q/b/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/ag;->g:Lcom/dolphin/browser/q/b/ba;

    .line 50
    new-instance v0, Lcom/dolphin/browser/q/b/f;

    invoke-direct {v0}, Lcom/dolphin/browser/q/b/f;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    .line 51
    new-instance v0, Lcom/dolphin/browser/q/b/bi;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/b/bi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/ag;->c:Lcom/dolphin/browser/q/b/bi;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->g:Lcom/dolphin/browser/q/b/ba;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/az;->a(Lcom/dolphin/browser/q/b/ba;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/q/b/ag;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/dolphin/browser/q/b/ag;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/q/b/ag;->a:Lcom/dolphin/browser/q/b/ag;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/dolphin/browser/q/b/ag;

    invoke-direct {v0}, Lcom/dolphin/browser/q/b/ag;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/b/ag;->a:Lcom/dolphin/browser/q/b/ag;

    .line 46
    :cond_0
    sget-object v0, Lcom/dolphin/browser/q/b/ag;->a:Lcom/dolphin/browser/q/b/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/ag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/ag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ag;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/q/b/ag;->b(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V
    .locals 2

    .prologue
    .line 257
    const-string v0, "Evernote"

    const-string v1, "waitENMLAndPost"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dolphin/browser/q/b/ap;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/q/b/ap;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/b/ag;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/dolphin/browser/q/b/ag;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bi;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->c:Lcom/dolphin/browser/q/b/bi;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V
    .locals 2

    .prologue
    .line 282
    const-string v0, "Evernote"

    const-string v1, "updateENMLAndPost"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/ag;->i()V

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/n;ZLcom/dolphin/browser/q/b/at;)V

    .line 287
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bj;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->e:Lcom/dolphin/browser/q/b/bj;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ax;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/b/f;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ax;)V

    .line 291
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ay;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->c:Lcom/dolphin/browser/q/b/bi;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/bi;->a(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->c:Lcom/dolphin/browser/q/b/bi;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/bi;->b(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/b/f;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ay;)V

    .line 307
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/be;)V
    .locals 2

    .prologue
    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/b/f;->b(Lcom/dolphin/browser/q/b/au;)V

    .line 123
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/ak;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/ak;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/be;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/b/bf;)V
    .locals 2

    .prologue
    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/au;)V

    .line 90
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/ah;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/ah;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bf;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/b/bg;)V
    .locals 2

    .prologue
    .line 130
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/av;)V

    .line 155
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/al;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/q/b/al;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bg;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/b/bj;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ag;->e:Lcom/dolphin/browser/q/b/bj;

    .line 358
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V
    .locals 3

    .prologue
    .line 203
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/n;ZLcom/dolphin/browser/q/b/at;)V

    .line 218
    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/an;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/b/an;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bh;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/q/b/bd;)V
    .locals 2

    .prologue
    .line 158
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/b/f;->a(Ljava/lang/String;Lcom/dolphin/browser/q/b/av;)V

    .line 182
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/am;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/b/am;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bd;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Observer;I)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/q/b/f;->a(Ljava/util/Observer;I)V

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/ag;->d()Ljava/util/List;

    move-result-object v3

    .line 186
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 187
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 188
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/x;

    .line 189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/c/b/c/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/4 v2, 0x1

    .line 194
    :cond_0
    return v2

    .line 187
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/f;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string v2, "<div><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/></div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dolphin/browser/q/b/n;->e:Ljava/lang/String;

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V

    .line 229
    return-void
.end method

.method public c()Lcom/c/b/c/l;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/f;->d()Lcom/c/b/c/l;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V
    .locals 2

    .prologue
    .line 233
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ag;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/q/b/ag;->b(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V

    .line 253
    :goto_1
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/b/ao;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/q/b/ao;-><init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bh;Lcom/dolphin/browser/q/b/n;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V

    goto :goto_1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/f;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/f;->e()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->c:Lcom/dolphin/browser/q/b/bi;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/bi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/dolphin/browser/q/b/ag;->d:Z

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/q/b/ag;->d:Z

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->b:Lcom/dolphin/browser/q/b/f;

    new-instance v1, Lcom/dolphin/browser/q/b/ai;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/ai;-><init>(Lcom/dolphin/browser/q/b/ag;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/f;->a(Lcom/dolphin/browser/q/b/aw;)V

    goto :goto_0
.end method

.method public h()Lcom/dolphin/browser/javascript/EvernotePageClipHandler;
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;

    invoke-direct {v0}, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/b/ag;->h:Lcom/dolphin/browser/javascript/EvernotePageClipHandler;

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->h:Lcom/dolphin/browser/javascript/EvernotePageClipHandler;

    new-instance v1, Lcom/dolphin/browser/q/b/aj;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/b/aj;-><init>(Lcom/dolphin/browser/q/b/ag;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/javascript/EvernotePageClipHandler;->a(Lcom/dolphin/browser/javascript/c;)V

    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ag;->h:Lcom/dolphin/browser/javascript/EvernotePageClipHandler;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/q/b/ag;->f:Ljava/lang/String;

    .line 399
    return-void
.end method
