.class public Lcom/facebook/orca/cache/PendingSendMessage;
.super Ljava/lang/Object;
.source "PendingSendMessage.java"


# instance fields
.field private final a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final b:Lcom/facebook/orca/cache/SendMessageManager;

.field private final c:Lcom/facebook/orca/threads/Message;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:Lcom/facebook/orca/cache/PendingSendMessage$State;

.field private g:J

.field private h:J

.field private i:I

.field private j:Lcom/facebook/orca/common/async/CancellableRunnable;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/cache/SendMessageManager;Landroid/os/Handler;Lcom/facebook/orca/threads/Message;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/orca/cache/PendingSendMessage;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 104
    iput-object p2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->b:Lcom/facebook/orca/cache/SendMessageManager;

    .line 105
    iput-object p3, p0, Lcom/facebook/orca/cache/PendingSendMessage;->e:Landroid/os/Handler;

    .line 106
    iput-object p4, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    .line 107
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    .line 108
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->g:J

    .line 110
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/cache/PendingSendMessage$1;-><init>(Lcom/facebook/orca/cache/PendingSendMessage;)V

    invoke-virtual {p1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/cache/PendingSendMessage;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/cache/PendingSendMessage;->h()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/cache/PendingSendMessage;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v1, "outgoingMessage"

    iget-object v2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/orca/cache/PendingSendMessage;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "send"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    sget-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 160
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    if-eq v0, v1, :cond_1

    .line 263
    :cond_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->b:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/PendingSendMessage;)V

    .line 259
    sget-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENT:Lcom/facebook/orca/cache/PendingSendMessage$State;

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    .line 261
    invoke-virtual {v0, p0}, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;->a(Lcom/facebook/orca/cache/PendingSendMessage;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    if-eq v0, v1, :cond_1

    .line 293
    :cond_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->i:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->b:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/PendingSendMessage;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    .line 275
    invoke-virtual {v0, p0}, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;->c(Lcom/facebook/orca/cache/PendingSendMessage;)V

    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->DELAYED_RETRY:Lcom/facebook/orca/cache/PendingSendMessage$State;

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 279
    iget v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->i:I

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->h:J

    .line 281
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/cache/PendingSendMessage$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/cache/PendingSendMessage$2;-><init>(Lcom/facebook/orca/cache/PendingSendMessage;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->j:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/cache/PendingSendMessage;->j:Lcom/facebook/orca/common/async/CancellableRunnable;

    iget-wide v2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->g:J

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->g:J

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;

    .line 290
    invoke-virtual {v0, p0}, Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;->b(Lcom/facebook/orca/cache/PendingSendMessage;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "outgoingMessage"

    iget-object v2, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/cache/PendingSendMessage;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "send"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    sget-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    iput-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 150
    return-void
.end method

.method public a(Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/cache/PendingSendMessage$OnSendUpdateListener;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public c()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->c:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage;->f:Lcom/facebook/orca/cache/PendingSendMessage$State;

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    if-ne v0, v1, :cond_0

    .line 244
    const-string v0, "orca:PendingSendMessage"

    const-string v1, "Got message send success via push echo"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/facebook/orca/cache/PendingSendMessage;->g()V

    .line 247
    :cond_0
    return-void
.end method
