.class public final Lcom/d/f;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/d/c;

.field private final b:Lcom/d/h;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/d/c;Lcom/d/h;)V
    .locals 1

    .prologue
    .line 711
    iput-object p1, p0, Lcom/d/f;->a:Lcom/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/d/f;->b:Lcom/d/h;

    .line 713
    invoke-static {p2}, Lcom/d/h;->d(Lcom/d/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/d/f;->c:[Z

    .line 714
    return-void

    .line 713
    :cond_0
    invoke-static {p1}, Lcom/d/c;->e(Lcom/d/c;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/d/c;Lcom/d/h;Lcom/d/d;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1, p2}, Lcom/d/f;-><init>(Lcom/d/c;Lcom/d/h;)V

    return-void
.end method

.method static synthetic a(Lcom/d/f;)Lcom/d/h;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/d/f;->b:Lcom/d/h;

    return-object v0
.end method

.method static synthetic a(Lcom/d/f;Z)Z
    .locals 0

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/d/f;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/d/f;)[Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/d/f;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 753
    iget-object v2, p0, Lcom/d/f;->a:Lcom/d/c;

    monitor-enter v2

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/d/f;->b:Lcom/d/h;

    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 757
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/d/f;->b:Lcom/d/h;

    invoke-static {v0}, Lcom/d/h;->d(Lcom/d/h;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/d/f;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/d/f;->b:Lcom/d/h;

    invoke-virtual {v0, p1}, Lcom/d/h;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 763
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 774
    :goto_0
    :try_start_3
    new-instance v0, Lcom/d/g;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/d/g;-><init>(Lcom/d/f;Ljava/io/OutputStream;Lcom/d/d;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 764
    :catch_0
    move-exception v0

    .line 766
    iget-object v0, p0, Lcom/d/f;->a:Lcom/d/c;

    invoke-static {v0}, Lcom/d/c;->f(Lcom/d/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 768
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 772
    goto :goto_0

    .line 769
    :catch_1
    move-exception v0

    .line 771
    :try_start_5
    invoke-static {}, Lcom/d/c;->c()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 796
    iget-boolean v0, p0, Lcom/d/f;->d:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/d/f;->a:Lcom/d/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/d/c;->a(Lcom/d/c;Lcom/d/f;Z)V

    .line 798
    iget-object v0, p0, Lcom/d/f;->a:Lcom/d/c;

    iget-object v1, p0, Lcom/d/f;->b:Lcom/d/h;

    invoke-static {v1}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/c;->c(Ljava/lang/String;)Z

    .line 802
    :goto_0
    iput-boolean v2, p0, Lcom/d/f;->e:Z

    .line 803
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/d/f;->a:Lcom/d/c;

    invoke-static {v0, p0, v2}, Lcom/d/c;->a(Lcom/d/c;Lcom/d/f;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/d/f;->a:Lcom/d/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/d/c;->a(Lcom/d/c;Lcom/d/f;Z)V

    .line 811
    return-void
.end method
