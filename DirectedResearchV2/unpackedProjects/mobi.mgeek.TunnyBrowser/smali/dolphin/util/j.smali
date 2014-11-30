.class public Ldolphin/util/j;
.super Ljava/lang/Object;
.source "PriorityHandler.java"


# static fields
.field public static final MESSAGE_PRIORITY_HIGH:I = -0x1

.field public static final MESSAGE_PRIORITY_HIGHEST:I = -0x2

.field public static final MESSAGE_PRIORITY_LOW:I = 0x1

.field public static final MESSAGE_PRIORITY_LOWEST:I = 0x2

.field public static final MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final MESSAGE_PRIORITY_VERYHIGH:I = -0x2

.field public static final MESSAGE_PRIORITY_VERYLOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PriorityHandler"

.field private static final USE_PRIORITY_MESSAGE_QUEUE:Z


# instance fields
.field final mHostHandler:Landroid/os/Handler;

.field final mLooper:Ldolphin/util/l;

.field final mQueue:Ldolphin/util/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ldolphin/util/k;

    invoke-direct {v0, p0}, Ldolphin/util/k;-><init>(Ldolphin/util/j;)V

    iput-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    .line 113
    invoke-static {}, Ldolphin/util/l;->c()Ldolphin/util/l;

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    .line 114
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create handler inside thread that has not called PriorityLooper.prepare()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    iget-object v0, v0, Ldolphin/util/l;->b:Ldolphin/util/o;

    iput-object v0, p0, Ldolphin/util/j;->mQueue:Ldolphin/util/o;

    .line 124
    invoke-direct {p0}, Ldolphin/util/j;->checkThread()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ldolphin/util/k;

    invoke-direct {v0, p0, p1}, Ldolphin/util/k;-><init>(Ldolphin/util/j;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    .line 153
    invoke-static {}, Ldolphin/util/l;->c()Ldolphin/util/l;

    move-result-object v0

    iput-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    .line 154
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create handler inside thread that has not called PriorityLooper.prepare()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    iget-object v0, v0, Ldolphin/util/l;->b:Ldolphin/util/o;

    iput-object v0, p0, Ldolphin/util/j;->mQueue:Ldolphin/util/o;

    .line 164
    invoke-direct {p0}, Ldolphin/util/j;->checkThread()V

    .line 165
    return-void
.end method

.method public constructor <init>(Ldolphin/util/l;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ldolphin/util/k;

    invoke-virtual {p1}, Ldolphin/util/l;->e()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldolphin/util/k;-><init>(Ldolphin/util/j;Landroid/os/Looper;)V

    iput-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    .line 140
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    iget-object v0, v0, Ldolphin/util/l;->b:Ldolphin/util/o;

    iput-object v0, p0, Ldolphin/util/j;->mQueue:Ldolphin/util/o;

    .line 141
    invoke-direct {p0}, Ldolphin/util/j;->checkThread()V

    .line 142
    return-void
.end method

.method public constructor <init>(Ldolphin/util/l;Landroid/os/Handler$Callback;)V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ldolphin/util/k;

    invoke-virtual {p1}, Ldolphin/util/l;->e()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ldolphin/util/k;-><init>(Ldolphin/util/j;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    .line 176
    iput-object p1, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    .line 177
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    iget-object v0, v0, Ldolphin/util/l;->b:Ldolphin/util/o;

    iput-object v0, p0, Ldolphin/util/j;->mQueue:Ldolphin/util/o;

    .line 178
    invoke-direct {p0}, Ldolphin/util/j;->checkThread()V

    .line 179
    return-void
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    invoke-virtual {v1}, Ldolphin/util/l;->d()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please create handler in thread same as host handler"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method private final getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 191
    return-object v0
.end method

.method private final getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 196
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 95
    return-void
.end method

.method public getHostHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLooper()Ldolphin/util/l;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ldolphin/util/j;->mLooper:Ldolphin/util/l;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final hasMessages(I)Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    .line 218
    invoke-direct {p0, p1}, Ldolphin/util/j;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Ldolphin/util/j;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 361
    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 2

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ldolphin/util/j;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 275
    iput p1, v0, Landroid/os/Message;->what:I

    .line 276
    invoke-virtual {p0, v0, p2, p3}, Ldolphin/util/j;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 259
    iput p1, v0, Landroid/os/Message;->what:I

    .line 260
    invoke-virtual {p0, v0, p2, p3}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessage(Landroid/os/Message;I)Z
    .locals 2

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Ldolphin/util/j;->sendMessageDelayed(Landroid/os/Message;JI)Z

    move-result v0

    return v0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ldolphin/util/j;->sendMessageAtTime(Landroid/os/Message;JI)Z

    move-result v0

    return v0
.end method

.method public sendMessageAtTime(Landroid/os/Message;JI)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ldolphin/util/j;->mHostHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 280
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Ldolphin/util/j;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;JI)Z
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 287
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 290
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1, p4}, Ldolphin/util/j;->sendMessageAtTime(Landroid/os/Message;JI)Z

    move-result v0

    return v0
.end method
