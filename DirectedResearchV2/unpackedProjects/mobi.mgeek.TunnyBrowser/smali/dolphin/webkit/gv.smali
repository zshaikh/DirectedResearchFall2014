.class Ldolphin/webkit/gv;
.super Ldolphin/webkit/SslErrorHandler;
.source "SslErrorHandlerImpl.java"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private final c:Ldolphin/webkit/SslErrorHandler;

.field private final d:Ldolphin/webkit/LoadListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ldolphin/webkit/SslErrorHandler;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    .line 82
    iput-object v1, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    .line 83
    iput-object v1, p0, Ldolphin/webkit/gv;->d:Ldolphin/webkit/LoadListener;

    .line 84
    return-void
.end method

.method private constructor <init>(Ldolphin/webkit/SslErrorHandler;Ldolphin/webkit/LoadListener;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ldolphin/webkit/SslErrorHandler;-><init>()V

    .line 90
    iput-object p1, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    .line 91
    iput-object p2, p0, Ldolphin/webkit/gv;->d:Ldolphin/webkit/LoadListener;

    .line 92
    return-void
.end method

.method private declared-synchronized b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/LoadListener;

    .line 190
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 221
    :goto_0
    monitor-exit p0

    return v0

    .line 199
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->i()Ldolphin/net/http/SslError;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v0, v2}, Ldolphin/webkit/gv;->a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    iget-object v2, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 210
    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->b()Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/BrowserFrame;->i()Ldolphin/webkit/ae;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    new-instance v3, Ldolphin/webkit/gv;

    invoke-direct {v3, p0, v0}, Ldolphin/webkit/gv;-><init>(Ldolphin/webkit/SslErrorHandler;Ldolphin/webkit/LoadListener;)V

    invoke-virtual {v1, v3, v2}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/SslErrorHandler;Ldolphin/net/http/SslError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 180
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/gv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void
.end method

.method declared-synchronized a(Ldolphin/webkit/LoadListener;)V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Ldolphin/webkit/gv;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;Z)V
    .locals 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    if-eqz p3, :cond_1

    .line 261
    invoke-virtual {p2}, Ldolphin/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 262
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->l()Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 269
    if-eqz v2, :cond_0

    iget-object v2, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 270
    :cond_0
    iget-object v2, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    :cond_1
    invoke-virtual {p1, p3}, Ldolphin/webkit/LoadListener;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_2
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->l()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p2}, Ldolphin/net/http/SslError;->getPrimaryError()I

    move-result v2

    .line 166
    iget-object v3, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldolphin/webkit/gv;->b:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gt v2, v1, :cond_1

    .line 167
    invoke-virtual {p1}, Ldolphin/webkit/LoadListener;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ldolphin/webkit/LoadListener;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-object v0, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    iget-object v1, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    const/16 v2, 0x64

    iget-object v3, p0, Ldolphin/webkit/gv;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1, v2, v4, v4, v3}, Ldolphin/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/LoadListener;

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {v0}, Ldolphin/webkit/LoadListener;->i()Ldolphin/net/http/SslError;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Ldolphin/webkit/gv;->a(Ldolphin/webkit/LoadListener;Ldolphin/net/http/SslError;Z)V

    .line 67
    iget-object v1, p0, Ldolphin/webkit/gv;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Ldolphin/webkit/gv;->a()V

    .line 69
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public proceed()V
    .locals 6

    .prologue
    .line 228
    iget-object v0, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    iget-object v1, p0, Ldolphin/webkit/gv;->c:Ldolphin/webkit/SslErrorHandler;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Ldolphin/webkit/gv;->d:Ldolphin/webkit/LoadListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Ldolphin/webkit/SslErrorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method
