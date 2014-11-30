.class abstract Ldolphin/webkit/gw;
.super Ljava/lang/Object;
.source "StreamLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:[B

.field private b:Ldolphin/util/j;

.field protected final c:Landroid/content/Context;

.field protected final d:Ldolphin/webkit/LoadListener;

.field protected e:Ljava/io/InputStream;

.field protected f:J


# direct methods
.method constructor <init>(Ldolphin/webkit/LoadListener;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    .line 72
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/gw;->c:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 162
    new-instance v0, Ldolphin/net/http/m;

    invoke-direct {v0}, Ldolphin/net/http/m;-><init>()V

    .line 163
    iget-wide v1, p0, Ldolphin/webkit/gw;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 164
    iget-wide v1, p0, Ldolphin/webkit/gw;->f:J

    invoke-virtual {v0, v1, v2}, Ldolphin/net/http/m;->a(J)V

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Ldolphin/webkit/gw;->a(Ldolphin/net/http/m;)V

    .line 167
    iget-object v1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1, v0}, Ldolphin/webkit/LoadListener;->a(Ldolphin/net/http/m;)V

    .line 168
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Ldolphin/webkit/gw;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gw;->e:Ljava/io/InputStream;

    iget-object v1, p0, Ldolphin/webkit/gw;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 181
    if-lez v0, :cond_0

    .line 182
    iget-object v1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    iget-object v2, p0, Ldolphin/webkit/gw;->a:[B

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/LoadListener;->a([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xd

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    .line 189
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ldolphin/webkit/gw;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gw;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->a()V

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ldolphin/net/http/m;)V
.end method

.method protected abstract a()Z
.end method

.method final b()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ldolphin/util/j;

    invoke-direct {v0, p0}, Ldolphin/util/j;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    .line 103
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ldolphin/webkit/gw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/webkit/gw;->a:[B

    .line 113
    invoke-direct {p0}, Ldolphin/webkit/gw;->c()V

    .line 114
    :cond_3
    invoke-direct {p0}, Ldolphin/webkit/gw;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    :cond_4
    invoke-direct {p0}, Ldolphin/webkit/gw;->e()V

    .line 116
    iget-object v0, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->y()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/16 v2, 0x66

    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/gw;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-direct {p0}, Ldolphin/webkit/gw;->e()V

    .line 155
    :cond_1
    :goto_0
    return v0

    .line 129
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Ldolphin/webkit/gw;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Ldolphin/webkit/gw;->a:[B

    .line 135
    iget-object v1, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0}, Ldolphin/webkit/gw;->c()V

    .line 140
    iget-object v1, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    invoke-virtual {v1, v2}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-direct {p0}, Ldolphin/webkit/gw;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/gw;->b:Ldolphin/util/j;

    invoke-virtual {v1, v2}, Ldolphin/util/j;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-direct {p0}, Ldolphin/webkit/gw;->e()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
