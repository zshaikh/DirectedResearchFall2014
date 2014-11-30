.class Lcom/b/a/o;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field final a:Lcom/b/a/r;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/b/a/t;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/os/Handler;

.field final g:Landroid/os/Handler;

.field final h:Lcom/b/a/h;

.field final i:Lcom/b/a/au;

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field final k:Lcom/b/a/s;

.field l:Landroid/net/NetworkInfo;

.field m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/b/a/t;Lcom/b/a/h;Lcom/b/a/au;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/b/a/r;

    invoke-direct {v0}, Lcom/b/a/r;-><init>()V

    iput-object v0, p0, Lcom/b/a/o;->a:Lcom/b/a/r;

    .line 79
    iget-object v0, p0, Lcom/b/a/o;->a:Lcom/b/a/r;

    invoke-virtual {v0}, Lcom/b/a/r;->start()V

    .line 80
    iput-object p1, p0, Lcom/b/a/o;->b:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/b/a/p;

    iget-object v1, p0, Lcom/b/a/o;->a:Lcom/b/a/r;

    invoke-virtual {v1}, Lcom/b/a/r;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/b/a/p;-><init>(Landroid/os/Looper;Lcom/b/a/o;)V

    iput-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    .line 84
    iput-object p4, p0, Lcom/b/a/o;->d:Lcom/b/a/t;

    .line 85
    iput-object p3, p0, Lcom/b/a/o;->g:Landroid/os/Handler;

    .line 86
    iput-object p5, p0, Lcom/b/a/o;->h:Lcom/b/a/h;

    .line 87
    iput-object p6, p0, Lcom/b/a/o;->i:Lcom/b/a/au;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/o;->j:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/b/a/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/bd;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/o;->m:Z

    .line 90
    new-instance v0, Lcom/b/a/s;

    iget-object v1, p0, Lcom/b/a/o;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/b/a/s;-><init>(Lcom/b/a/o;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/o;->k:Lcom/b/a/s;

    .line 91
    iget-object v0, p0, Lcom/b/a/o;->k:Lcom/b/a/s;

    invoke-virtual {v0}, Lcom/b/a/s;->a()V

    .line 92
    return-void
.end method

.method private g(Lcom/b/a/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 202
    invoke-virtual {p1}, Lcom/b/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/b/a/o;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    iget-object v0, p0, Lcom/b/a/o;->a:Lcom/b/a/r;

    invoke-virtual {v0}, Lcom/b/a/r;->quit()Z

    .line 97
    iget-object v0, p0, Lcom/b/a/o;->k:Lcom/b/a/s;

    invoke-virtual {v0}, Lcom/b/a/s;->b()V

    .line 98
    return-void
.end method

.method a(Landroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method a(Lcom/b/a/d;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/o;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    iget-object v1, p0, Lcom/b/a/o;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    iget-object v1, p0, Lcom/b/a/o;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/b/a/o;->g:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method

.method b(Landroid/net/NetworkInfo;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/b/a/o;->l:Landroid/net/NetworkInfo;

    .line 196
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/b/a/ao;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/b/a/ao;

    invoke-virtual {v0, p1}, Lcom/b/a/ao;->a(Landroid/net/NetworkInfo;)V

    .line 199
    :cond_0
    return-void
.end method

.method b(Lcom/b/a/a;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method b(Lcom/b/a/d;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/b/a/o;->m:Z

    .line 192
    return-void
.end method

.method c(Lcom/b/a/a;)V
    .locals 7

    .prologue
    .line 130
    iget-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1}, Lcom/b/a/d;->a(Lcom/b/a/a;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/b/a/o;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/b/a/a;->g()Lcom/b/a/ae;

    move-result-object v1

    iget-object v3, p0, Lcom/b/a/o;->h:Lcom/b/a/h;

    iget-object v4, p0, Lcom/b/a/o;->i:Lcom/b/a/au;

    iget-object v6, p0, Lcom/b/a/o;->d:Lcom/b/a/t;

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/b/a/d;->a(Landroid/content/Context;Lcom/b/a/ae;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/au;Lcom/b/a/a;Lcom/b/a/t;)Lcom/b/a/d;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    .line 142
    iget-object v1, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method c(Lcom/b/a/d;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/b/a/o;->f:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method d(Lcom/b/a/a;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 147
    iget-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/b/a/d;->b(Lcom/b/a/a;)V

    .line 150
    invoke-virtual {v0}, Lcom/b/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    return-void
.end method

.method d(Lcom/b/a/d;)V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/b/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0, p1}, Lcom/b/a/o;->f(Lcom/b/a/d;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/b/a/o;->m:Z

    iget-object v1, p0, Lcom/b/a/o;->l:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/d;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/b/a/d;->j:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0, p1}, Lcom/b/a/o;->f(Lcom/b/a/d;)V

    goto :goto_0
.end method

.method e(Lcom/b/a/d;)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/b/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/b/a/o;->h:Lcom/b/a/h;

    invoke-virtual {p1}, Lcom/b/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/d;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0, p1}, Lcom/b/a/o;->g(Lcom/b/a/d;)V

    .line 177
    return-void
.end method

.method f(Lcom/b/a/d;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/b/a/o;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0, p1}, Lcom/b/a/o;->g(Lcom/b/a/d;)V

    .line 188
    return-void
.end method
