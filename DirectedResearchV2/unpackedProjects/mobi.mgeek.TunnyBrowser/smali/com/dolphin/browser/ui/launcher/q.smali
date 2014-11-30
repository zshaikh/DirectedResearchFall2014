.class public Lcom/dolphin/browser/ui/launcher/q;
.super Ljava/lang/Object;
.source "MostVisitedFolderManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/ui/launcher/q;


# instance fields
.field private b:Lcom/dolphin/browser/launcher/be;

.field private c:Lcom/dolphin/browser/ui/launcher/s;

.field private d:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/launcher/be;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/launcher/be;)Lcom/dolphin/browser/launcher/be;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    return-object p1
.end method

.method public static a()Lcom/dolphin/browser/ui/launcher/q;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/dolphin/browser/ui/launcher/q;->a:Lcom/dolphin/browser/ui/launcher/q;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/dolphin/browser/ui/launcher/q;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/ui/launcher/q;->a:Lcom/dolphin/browser/ui/launcher/q;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/dolphin/browser/ui/launcher/q;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/q;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/launcher/q;->a:Lcom/dolphin/browser/ui/launcher/q;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/dolphin/browser/ui/launcher/q;->a:Lcom/dolphin/browser/ui/launcher/q;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/ui/launcher/s;)Lcom/dolphin/browser/ui/launcher/s;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    return-object p1
.end method

.method public static b()Lcom/dolphin/browser/launcher/be;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 79
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0386

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 82
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 83
    const-string v1, "most_visited_folder"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->b(Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/launcher/q;)Lcom/dolphin/browser/ui/launcher/s;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    .line 310
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bi;)V

    .line 311
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/b;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 253
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    .line 89
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/be;)Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/launcher/be;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-ne v0, p1, :cond_0

    .line 295
    const-string v0, "MostVisitedManager"

    const-string v1, "onFolderClosed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 298
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/bi;)V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->q()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 263
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/dolphin/browser/mostvisit/b;->a()Lcom/dolphin/browser/mostvisit/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/mostvisit/b;->c(Ljava/lang/String;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-ne p1, v0, :cond_0

    .line 266
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 267
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->m(Landroid/content/Context;Z)V

    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->e()V

    .line 269
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0304

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/widget/Toast;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/q;->g()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/s;->b(Z)Z

    .line 106
    :cond_2
    new-instance v0, Lcom/dolphin/browser/ui/launcher/s;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/q;->d:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/ui/launcher/s;-><init>(Lcom/dolphin/browser/ui/launcher/q;Lcom/dolphin/browser/ui/launcher/g;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->c:Lcom/dolphin/browser/ui/launcher/s;

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public c(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 277
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 287
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 302
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/q;->b:Lcom/dolphin/browser/launcher/be;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/dolphin/browser/ui/launcher/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/r;-><init>(Lcom/dolphin/browser/ui/launcher/q;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 324
    :cond_0
    return-void
.end method
