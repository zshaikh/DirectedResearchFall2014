.class public Ldolphin/webkit/jq;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ldolphin/webkit/ks;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewCore;

.field private b:Ldolphin/util/j;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method private constructor <init>(Ldolphin/webkit/WebViewCore;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1398
    iput-object p1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    .line 1392
    iput-boolean v1, p0, Ldolphin/webkit/jq;->h:Z

    .line 1393
    iput-boolean v1, p0, Ldolphin/webkit/jq;->i:Z

    .line 1398
    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/jj;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Ldolphin/webkit/jq;-><init>(Ldolphin/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/jq;I)I
    .locals 0

    .prologue
    .line 1237
    iput p1, p0, Ldolphin/webkit/jq;->g:I

    return p1
.end method

.method private declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 2121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/jq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2124
    :cond_1
    const/16 v0, 0x82

    if-ne p1, v0, :cond_2

    .line 2125
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    const/4 v1, 0x0

    # setter for: Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$7602(Ldolphin/webkit/WebViewCore;Z)Z

    .line 2127
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    .line 2128
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2129
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 2131
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_3

    .line 2132
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2136
    :cond_4
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2106
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Ldolphin/webkit/jq;->a(Landroid/os/Message;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    monitor-exit p0

    return-void

    .line 2106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/os/Message;I)V
    .locals 1

    .prologue
    .line 2110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/jq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2118
    :goto_0
    monitor-exit p0

    return-void

    .line 2113
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 2114
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2116
    :cond_1
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    invoke-virtual {v0, p1, p2}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/os/Message;J)V
    .locals 1

    .prologue
    .line 2141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/jq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2145
    :goto_0
    monitor-exit p0

    return-void

    .line 2144
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/jq;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0}, Ldolphin/webkit/jq;->c()V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/jq;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Ldolphin/webkit/jq;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/jq;Landroid/os/Message;J)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/jq;->a(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/jq;Z)Z
    .locals 0

    .prologue
    .line 1237
    iput-boolean p1, p0, Ldolphin/webkit/jq;->e:Z

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/jq;)I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Ldolphin/webkit/jq;->f:I

    return v0
.end method

.method private declared-synchronized b(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 2151
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/jq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2159
    :goto_0
    monitor-exit p0

    return-void

    .line 2154
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 2155
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2157
    :cond_1
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/jq;I)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Ldolphin/webkit/jq;->a(I)V

    return-void
.end method

.method static synthetic b(Ldolphin/webkit/jq;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0, p1}, Ldolphin/webkit/jq;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Ldolphin/webkit/jq;)I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Ldolphin/webkit/jq;->g:I

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1407
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/jq;->f:I

    .line 1408
    iget v0, p0, Ldolphin/webkit/jq;->f:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/jq;->g:I

    .line 1411
    new-instance v0, Ldolphin/webkit/jr;

    invoke-direct {v0, p0}, Ldolphin/webkit/jr;-><init>(Ldolphin/webkit/jq;)V

    iput-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    .line 1986
    monitor-enter p0

    .line 1987
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 1988
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1989
    iget-object v3, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v3, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 1988
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1991
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    .line 1992
    monitor-exit p0

    .line 1993
    return-void

    .line 1992
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 2166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    const/4 v1, 0x0

    # setter for: Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$7602(Ldolphin/webkit/WebViewCore;Z)Z

    .line 2167
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Ldolphin/webkit/jq;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    :goto_0
    monitor-exit p0

    return-void

    .line 2170
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldolphin/util/j;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Ldolphin/webkit/jq;)Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Ldolphin/webkit/jq;->e:Z

    return v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 2178
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ldolphin/webkit/jq;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    monitor-exit p0

    return-void

    .line 2178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Ldolphin/webkit/jq;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0}, Ldolphin/webkit/jq;->d()V

    return-void
.end method

.method static synthetic f(Ldolphin/webkit/jq;)V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0}, Ldolphin/webkit/jq;->e()V

    return-void
.end method


# virtual methods
.method public a()Ldolphin/util/l;
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Ldolphin/webkit/jq;->b:Ldolphin/util/j;

    invoke-virtual {v0}, Ldolphin/util/j;->getLooper()Ldolphin/util/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldolphin/webkit/kl;Landroid/support/h;II)Z
    .locals 9

    .prologue
    .line 2004
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    const/4 v0, 0x0

    .line 2098
    :goto_0
    return v0

    .line 2007
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 2098
    const/4 v0, 0x0

    goto :goto_0

    .line 2009
    :sswitch_0
    invoke-virtual {p2}, Landroid/support/h;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2010
    invoke-virtual {p2}, Landroid/support/h;->g()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2012
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->b()Z

    move-result v5

    .line 2016
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->n()I

    move-result v3

    const/4 v4, 0x1

    # invokes: Ldolphin/webkit/WebViewCore;->performHitTest2(IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    invoke-static/range {v0 .. v5}, Ldolphin/webkit/WebViewCore;->access$7300(Ldolphin/webkit/WebViewCore;IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    .line 2023
    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x83

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2025
    const/4 v0, 0x0

    goto :goto_0

    .line 2031
    :sswitch_1
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->S()V

    .line 2032
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeMouseClick(I)Z
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$7400(Ldolphin/webkit/WebViewCore;I)Z

    move-result v0

    goto :goto_0

    .line 2039
    :sswitch_2
    invoke-virtual {p2}, Landroid/support/h;->e()I

    move-result v6

    .line 2040
    new-array v3, v6, [I

    .line 2041
    new-array v4, v6, [I

    .line 2042
    new-array v5, v6, [I

    .line 2043
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 2044
    invoke-virtual {p2, v0}, Landroid/support/h;->b(I)I

    move-result v1

    aput v1, v3, v0

    .line 2045
    invoke-virtual {p2, v0}, Landroid/support/h;->c(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v4, v0

    .line 2046
    invoke-virtual {p2, v0}, Landroid/support/h;->d(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v5, v0

    .line 2043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2051
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/h;->k()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/h;->l()I

    move-result v8

    # invokes: Ldolphin/webkit/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I
    invoke-static/range {v0 .. v8}, Ldolphin/webkit/WebViewCore;->access$7500(Ldolphin/webkit/WebViewCore;II[I[I[IIII)I

    move-result v1

    .line 2058
    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    .line 2061
    invoke-virtual {p1}, Ldolphin/webkit/kl;->g()V

    .line 2067
    :cond_2
    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Ldolphin/webkit/jq;->h:Z

    if-nez v0, :cond_3

    .line 2068
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Ldolphin/webkit/jq;->i:Z

    .line 2069
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/jq;->h:Z

    .line 2071
    :cond_3
    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Ldolphin/webkit/jq;->h:Z

    if-eqz v0, :cond_6

    .line 2074
    iget-boolean v0, p0, Ldolphin/webkit/jq;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v0

    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v1

    if-gt v0, v1, :cond_5

    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    .line 2078
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2068
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2080
    :cond_5
    iget-boolean v0, p0, Ldolphin/webkit/jq;->i:Z

    goto/16 :goto_0

    .line 2082
    :cond_6
    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    :cond_7
    iget-boolean v0, p0, Ldolphin/webkit/jq;->h:Z

    if-eqz v0, :cond_8

    .line 2085
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/jq;->i:Z

    .line 2086
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/jq;->h:Z

    .line 2090
    :cond_8
    invoke-virtual {p2}, Landroid/support/h;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 2091
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2094
    :cond_9
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2007
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2183
    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/BrowserFrame;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
