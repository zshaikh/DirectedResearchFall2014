.class public Lcom/dolphin/browser/q/a/j;
.super Ljava/lang/Object;
.source "BoxManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/q/a/j;


# instance fields
.field private b:Lcom/b/a/a;

.field private c:Lcom/dolphin/browser/q/a/u;

.field private d:Lcom/dolphin/browser/q/a/y;

.field private e:Z

.field private f:Lcom/dolphin/browser/q/a/z;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "dq7q7yto94v0z8378pyr95hqdvyjzymu"

    invoke-static {v0}, Lcom/b/a/a;->a(Ljava/lang/String;)Lcom/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    .line 46
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/dolphin/browser/q/a/u;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/q/a/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/q/a/j;->c:Lcom/dolphin/browser/q/a/u;

    .line 48
    new-instance v1, Lcom/dolphin/browser/q/a/y;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/q/a/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/q/a/j;->d:Lcom/dolphin/browser/q/a/y;

    .line 49
    new-instance v0, Lcom/dolphin/browser/q/a/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/q/a/o;-><init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/k;)V

    .line 50
    invoke-static {v0}, Lcom/dolphin/browser/q/a/r;->a(Lcom/dolphin/browser/q/a/s;)V

    .line 51
    invoke-static {v0}, Lcom/dolphin/browser/q/a/r;->a(Lcom/dolphin/browser/q/a/t;)V

    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 53
    return-void
.end method

.method public static a()Lcom/dolphin/browser/q/a/j;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/q/a/j;->a:Lcom/dolphin/browser/q/a/j;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/dolphin/browser/q/a/j;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/q/a/j;->a:Lcom/dolphin/browser/q/a/j;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/q/a/j;

    invoke-direct {v0}, Lcom/dolphin/browser/q/a/j;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/a/j;->a:Lcom/dolphin/browser/q/a/j;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/dolphin/browser/q/a/j;->a:Lcom/dolphin/browser/q/a/j;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/u;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->c:Lcom/dolphin/browser/q/a/u;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/a/j;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/dolphin/browser/q/a/j;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/y;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->d:Lcom/dolphin/browser/q/a/y;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/z;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->f:Lcom/dolphin/browser/q/a/z;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/q/a/j;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/b/a/c/c;)V
    .locals 6

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v1}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nofiles"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    move-wide v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/a;->a(Ljava/lang/String;J[Ljava/lang/String;Lcom/b/a/c/c;)V

    .line 273
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/a/p;)V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/dolphin/browser/q/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    new-instance v2, Lcom/dolphin/browser/q/a/l;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/q/a/l;-><init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/p;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/dolphin/browser/q/a/b;-><init>(Lcom/b/a/a;Landroid/content/Context;Lcom/dolphin/browser/q/a/a;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/b;->show()V

    .line 164
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/q/a/q;)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/dolphin/browser/q/a/r;->b()V

    .line 174
    if-eqz p2, :cond_0

    .line 175
    invoke-interface {p2}, Lcom/dolphin/browser/q/a/q;->a()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v1}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/q/a/m;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/q/a/m;-><init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Ljava/lang/String;Lcom/b/a/c/f;)V

    .line 199
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLcom/dolphin/browser/q/a/i;)V
    .locals 10

    .prologue
    .line 204
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read file for upload - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    invoke-interface {p5}, Lcom/dolphin/browser/q/a/i;->a()V

    .line 266
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 216
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v5, v0

    .line 218
    iget-object v7, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "upload"

    new-instance v0, Lcom/dolphin/browser/q/a/n;

    move-object v1, p0

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/q/a/n;-><init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/i;ILjava/lang/String;I)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v6

    move-wide v5, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;)Lcom/b/a/e/d;

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/q/a/z;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dolphin/browser/q/a/j;->f:Lcom/dolphin/browser/q/a/z;

    .line 96
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->c:Lcom/dolphin/browser/q/a/u;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/a/u;->a(Lcom/b/a/a;)Z

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->d:Lcom/dolphin/browser/q/a/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v0}, Lcom/b/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/dolphin/browser/q/a/j;->e:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/q/a/j;->e:Z

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/q/a/j;->b:Lcom/b/a/a;

    invoke-virtual {v1}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/q/a/k;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/q/a/k;-><init>(Lcom/dolphin/browser/q/a/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Ljava/lang/String;Lcom/b/a/c/b;)V

    goto :goto_0
.end method
