.class public Lcom/dolphin/browser/promoted/f;
.super Ljava/util/Observable;
.source "PromotedAppManager.java"

# interfaces
.implements Lcom/dolphin/browser/util/bg;


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Lcom/dolphin/browser/promoted/f;


# instance fields
.field private b:Lcom/dolphin/browser/promoted/i;

.field private c:Lcom/dolphin/browser/promoted/v;

.field private d:Lcom/dolphin/browser/promoted/g;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dolphin/browser/promoted/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/promoted/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/promoted/f;->e:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/dolphin/browser/promoted/i;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/promoted/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    .line 49
    invoke-static {}, Lcom/dolphin/browser/promoted/v;->a()Lcom/dolphin/browser/promoted/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/f;->c:Lcom/dolphin/browser/promoted/v;

    .line 50
    invoke-static {p1, p0}, Lcom/dolphin/browser/util/be;->a(Landroid/content/Context;Lcom/dolphin/browser/util/bg;)Lcom/dolphin/browser/util/be;

    .line 51
    return-void
.end method

.method public static a()Lcom/dolphin/browser/promoted/f;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/promoted/f;->f:Lcom/dolphin/browser/promoted/f;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Promoted app web service client not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/promoted/f;->f:Lcom/dolphin/browser/promoted/f;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/promoted/e;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/e;

    .line 121
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    return-object v1
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/promoted/i;->a(J)V

    .line 180
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/dolphin/browser/promoted/y;)V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/dolphin/browser/promoted/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/promoted/f;->f:Lcom/dolphin/browser/promoted/f;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/dolphin/browser/promoted/v;->a(Lcom/dolphin/browser/promoted/y;)V

    .line 35
    new-instance v0, Lcom/dolphin/browser/promoted/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/promoted/f;->f:Lcom/dolphin/browser/promoted/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/f;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/f;->j()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/promoted/f;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/f;->setChanged()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/promoted/i;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/promoted/i;->b(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/promoted/i;->c(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/promoted/i;->d(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private j()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/promoted/f;->c:Lcom/dolphin/browser/promoted/v;

    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/f;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/promoted/v;->a(J)Lcom/dolphin/browser/promoted/h;

    move-result-object v1

    .line 93
    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/promoted/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/dolphin/browser/util/be;->a()Lcom/dolphin/browser/util/be;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/dolphin/browser/promoted/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/util/be;->b(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/promoted/f;->b(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/promoted/f;->c(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/promoted/f;->d(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/promoted/f;->e(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/h;->a()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/promoted/f;->a(J)V
    :try_end_0
    .catch Lcom/dolphin/browser/promoted/z; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/z;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;JZ)Z
    .locals 1

    .prologue
    .line 214
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->d:Lcom/dolphin/browser/promoted/g;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/dolphin/browser/promoted/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/g;-><init>(Lcom/dolphin/browser/promoted/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/f;->d:Lcom/dolphin/browser/promoted/g;

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->d:Lcom/dolphin/browser/promoted/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 64
    :cond_0
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/promoted/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/i;->a()Ljava/util/List;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/e;

    .line 145
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolphin/browser/promoted/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_1
    return-object v1
.end method

.method public f()J
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/promoted/f;->b:Lcom/dolphin/browser/promoted/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
