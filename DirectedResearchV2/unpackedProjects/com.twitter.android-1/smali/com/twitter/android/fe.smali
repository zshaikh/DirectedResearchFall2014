.class public final Lcom/twitter/android/fe;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/twitter/android/fe;


# instance fields
.field private final b:Landroid/media/AudioManager;

.field private c:Landroid/media/SoundPool;

.field private d:[I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/twitter/android/fe;->b:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/fe;->e:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/fe;
    .locals 8

    const-class v1, Lcom/twitter/android/fe;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/fe;->a:Lcom/twitter/android/fe;

    if-nez v2, :cond_0

    new-instance v2, Lcom/twitter/android/fe;

    invoke-direct {v2, v0}, Lcom/twitter/android/fe;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/twitter/android/fe;->a:Lcom/twitter/android/fe;

    :cond_0
    sget-object v2, Lcom/twitter/android/fe;->a:Lcom/twitter/android/fe;

    iget v3, v2, Lcom/twitter/android/fe;->e:I

    if-nez v3, :cond_1

    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x7f060002

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f060003

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f060001

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060004

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    aput v0, v4, v5

    iput-object v4, v2, Lcom/twitter/android/fe;->d:[I

    iput-object v3, v2, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    :cond_1
    iget v0, v2, Lcom/twitter/android/fe;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/twitter/android/fe;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-object v0, p0, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/fe;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/fe;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/twitter/android/fe;->d:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v4

    :cond_1
    return v4
.end method

.method public final a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/twitter/android/fe;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/fe;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/android/fe;->e:I

    :cond_0
    iget v0, p0, Lcom/twitter/android/fe;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/fe;->d:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    iget-object v4, p0, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    invoke-virtual {v4, v3}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v5, p0, Lcom/twitter/android/fe;->c:Landroid/media/SoundPool;

    iput-object v5, p0, Lcom/twitter/android/fe;->d:[I

    :cond_2
    return-void
.end method
