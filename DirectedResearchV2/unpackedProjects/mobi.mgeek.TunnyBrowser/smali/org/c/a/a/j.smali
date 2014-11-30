.class public Lorg/c/a/a/j;
.super Lorg/c/a/a/i;
.source "ContentExchange.java"


# instance fields
.field private a:I

.field private g:Ljava/lang/String;

.field private h:Ljava/io/ByteArrayOutputStream;

.field private i:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/c/a/a/i;-><init>(Z)V

    .line 38
    const/16 v0, 0x1000

    iput v0, p0, Lorg/c/a/a/j;->a:I

    .line 39
    const-string v0, "utf-8"

    iput-object v0, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/c/a/a/i;-><init>(Z)V

    .line 38
    const/16 v0, 0x1000

    iput v0, p0, Lorg/c/a/a/j;->a:I

    .line 39
    const-string v0, "utf-8"

    iput-object v0, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private declared-synchronized y()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/c/a/a/j;->i:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized a(Lorg/c/a/c/f;)V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/c/a/a/i;->a(Lorg/c/a/c/f;)V

    .line 103
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/c/a/a/j;->a:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1, v0}, Lorg/c/a/c/f;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 72
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/a/i;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/c/a/a/i;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 79
    sget-object v0, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    invoke-virtual {v0, p1}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 80
    sparse-switch v0, :sswitch_data_0

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :sswitch_0
    :try_start_1
    invoke-static {p2}, Lorg/c/a/c/k;->a(Lorg/c/a/c/f;)I

    move-result v0

    iput v0, p0, Lorg/c/a/a/j;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :sswitch_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/c/a/d/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "charset="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 88
    if-lez v1, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 92
    if-lez v0, :cond_0

    .line 93
    iget-object v1, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/c/a/a/j;->h:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/c/a/a/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized f()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/j;->i:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/c/a/a/j;->c(Lorg/c/a/c/f;)V

    .line 114
    invoke-direct {p0}, Lorg/c/a/a/j;->y()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/j;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/c/a/a/i;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
