.class Lcom/google/android/a/a/u;
.super Landroid/os/HandlerThread;


# instance fields
.field volatile a:Landroid/os/Handler;

.field private final b:Lcom/google/android/a/a/z;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/a/a/v;

.field private final h:Lcom/google/android/a/a/g;

.field private final i:Lcom/google/android/a/a/w;

.field private final j:Lcom/google/android/a/a/s;


# direct methods
.method private constructor <init>(Lcom/google/android/a/a/g;Lcom/google/android/a/a/z;Ljava/lang/String;Lcom/google/android/a/a/s;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/a/a/u;->e:I

    iput-object v1, p0, Lcom/google/android/a/a/u;->g:Lcom/google/android/a/a/v;

    iput-object p1, p0, Lcom/google/android/a/a/u;->h:Lcom/google/android/a/a/g;

    iput-object p3, p0, Lcom/google/android/a/a/u;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/a/a/u;->b:Lcom/google/android/a/a/z;

    new-instance v0, Lcom/google/android/a/a/w;

    invoke-direct {v0, p0, v1}, Lcom/google/android/a/a/w;-><init>(Lcom/google/android/a/a/u;Lcom/google/android/a/a/t;)V

    iput-object v0, p0, Lcom/google/android/a/a/u;->i:Lcom/google/android/a/a/w;

    iget-object v0, p0, Lcom/google/android/a/a/u;->b:Lcom/google/android/a/a/z;

    iget-object v1, p0, Lcom/google/android/a/a/u;->i:Lcom/google/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/z;->a(Lcom/google/android/a/a/aa;)V

    iput-object p4, p0, Lcom/google/android/a/a/u;->j:Lcom/google/android/a/a/s;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/a/a/g;Ljava/lang/String;Lcom/google/android/a/a/s;)V
    .locals 2

    new-instance v0, Lcom/google/android/a/a/z;

    invoke-static {p3}, Lcom/google/android/a/a/s;->a(Lcom/google/android/a/a/s;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/a/z;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/a/a/u;-><init>(Lcom/google/android/a/a/g;Lcom/google/android/a/a/z;Ljava/lang/String;Lcom/google/android/a/a/s;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/a/a/g;Ljava/lang/String;Lcom/google/android/a/a/s;Lcom/google/android/a/a/t;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/a/a/u;-><init>(Lcom/google/android/a/a/g;Ljava/lang/String;Lcom/google/android/a/a/s;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/u;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/a/u;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/a/a/u;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/a/a/u;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/a/a/u;J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/a/u;->f:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/a/a/u;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/a/a/u;Lcom/google/android/a/a/v;)Lcom/google/android/a/a/v;
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/a/u;->g:Lcom/google/android/a/a/v;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/a/a/u;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/a/a/u;->d:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/a/a/u;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/a/u;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/a/a/u;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/a/a/u;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->j:Lcom/google/android/a/a/s;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->b:Lcom/google/android/a/a/z;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->h:Lcom/google/android/a/a/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/a/a/u;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/a/u;->e:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/a/a/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->i:Lcom/google/android/a/a/w;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/a/a/u;)Lcom/google/android/a/a/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/u;->g:Lcom/google/android/a/a/v;

    return-object v0
.end method


# virtual methods
.method public a([Lcom/google/android/a/a/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/a/u;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/u;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/a/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/a/v;-><init>(Lcom/google/android/a/a/u;[Lcom/google/android/a/a/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onLooperPrepared()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/u;->a:Landroid/os/Handler;

    return-void
.end method
