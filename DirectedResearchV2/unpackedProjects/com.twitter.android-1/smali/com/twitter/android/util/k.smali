.class public abstract Lcom/twitter/android/util/k;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Ljava/util/HashMap;

.field final c:[I

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/LinkedHashMap;

.field private g:Landroid/os/Handler;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ImageCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/util/k;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 4

    const/16 v3, 0x14

    const/high16 v2, 0x41200000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/util/k;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/android/util/k;->c:[I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/k;->k:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/twitter/android/util/k;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    iput p2, p0, Lcom/twitter/android/util/k;->h:I

    iput p3, p0, Lcom/twitter/android/util/k;->i:I

    iput p4, p0, Lcom/twitter/android/util/k;->j:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/util/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/util/k;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/util/k;)I
    .locals 1

    iget v0, p0, Lcom/twitter/android/util/k;->j:I

    return v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/util/c;

    invoke-direct {v1, p0}, Lcom/twitter/android/util/c;-><init>(Lcom/twitter/android/util/k;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v0, Lcom/twitter/android/util/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sorted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/twitter/android/util/f;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/twitter/android/util/k;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/android/util/k;->i:I

    add-int v2, v0, v1

    sget-boolean v0, Lcom/twitter/android/util/k;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purging: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " items"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    sget-boolean v3, Lcom/twitter/android/util/k;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/twitter/android/util/f;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/twitter/android/util/f;->c:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/util/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private b(JLjava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/util/k;->c:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/util/k;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/util/l;

    invoke-direct {v0, p0, p4, p5}, Lcom/twitter/android/util/l;-><init>(Lcom/twitter/android/util/k;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/twitter/android/util/k;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/android/util/k;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/util/k;->g:Landroid/os/Handler;

    new-instance v2, Lcom/twitter/android/util/p;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/android/util/p;-><init>(Lcom/twitter/android/util/k;J)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a(JLjava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    sget-boolean v2, Lcom/twitter/android/util/k;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/twitter/android/util/k;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have photo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/twitter/android/util/f;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v1

    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/util/k;->b(JLjava/lang/Object;Ljava/lang/String;Z)V

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_2
    iget v2, v0, Lcom/twitter/android/util/f;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/twitter/android/util/f;->b:I

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/twitter/android/util/k;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking in persistent storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/util/k;->b(JLjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/f;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
.end method

.method protected abstract a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/f;
.end method

.method protected final a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/util/k;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/f;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/f;
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/twitter/android/util/k;->c:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/util/k;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(Ljava/util/HashMap;)V
.end method

.method final b(Ljava/util/HashMap;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    sget-boolean v4, Lcom/twitter/android/util/k;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, Lcom/twitter/android/util/k;->h:I

    if-lt v3, v4, :cond_1

    invoke-direct {p0}, Lcom/twitter/android/util/k;->b()V

    :cond_1
    iget-object v3, p0, Lcom/twitter/android/util/k;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/twitter/android/util/k;->c:[I

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/util/k;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/twitter/android/util/k;->a(Ljava/util/HashMap;)V

    :cond_4
    return-void
.end method
