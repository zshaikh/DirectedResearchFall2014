.class public Lcom/dolphin/browser/gesture/s;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/dolphin/browser/gesture/ac;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field private g:Lcom/dolphin/browser/gesture/b;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/dolphin/browser/gesture/t;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/t;-><init>()V

    sput-object v0, Lcom/dolphin/browser/gesture/s;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, Lcom/dolphin/browser/gesture/s;->a:I

    .line 87
    iput v0, p0, Lcom/dolphin/browser/gesture/s;->b:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/s;->d:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/s;->f:Ljava/util/HashMap;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z

    .line 101
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    .line 102
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/dolphin/browser/gesture/b;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/b;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/s;->g:Lcom/dolphin/browser/gesture/b;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/dolphin/browser/gesture/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/aa;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/s;->e:Lcom/dolphin/browser/gesture/ac;

    goto :goto_0
.end method

.method private a([F)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v2, p0, Lcom/dolphin/browser/gesture/s;->g:Lcom/dolphin/browser/gesture/b;

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->f:Ljava/util/HashMap;

    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 436
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v5, 0x2

    invoke-virtual {v2, v1, p1, v5}, Lcom/dolphin/browser/gesture/b;->a([F[FI)F

    move-result v1

    .line 437
    new-instance v5, Lcom/dolphin/browser/gesture/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    float-to-double v6, v1

    invoke-direct {v5, v0, v6, v7}, Lcom/dolphin/browser/gesture/ae;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    sget-object v0, Lcom/dolphin/browser/gesture/s;->j:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 440
    return-object v3
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v5, p0, Lcom/dolphin/browser/gesture/s;->e:Lcom/dolphin/browser/gesture/ac;

    .line 361
    iget-object v6, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    .line 362
    iget-object v7, p0, Lcom/dolphin/browser/gesture/s;->d:Ljava/util/HashMap;

    .line 363
    iget-object v8, p0, Lcom/dolphin/browser/gesture/s;->f:Ljava/util/HashMap;

    .line 364
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 365
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 368
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v4, v2

    .line 370
    :goto_0
    if-ge v4, v9, :cond_4

    .line 372
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/dolphin/browser/gesture/u;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/u;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    .line 375
    invoke-static {v1}, Lcom/dolphin/browser/gesture/u;->a(Lcom/dolphin/browser/gesture/u;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v1}, Lcom/dolphin/browser/gesture/u;->b(Lcom/dolphin/browser/gesture/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 380
    if-gez v1, :cond_1

    move v1, v2

    .line 383
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 384
    :goto_1
    if-ge v3, v1, :cond_3

    .line 385
    invoke-static {p1}, Lcom/dolphin/browser/gesture/Gesture;->a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v11

    .line 386
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-boolean v12, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    if-eqz v12, :cond_2

    .line 388
    invoke-static {v11}, Lcom/dolphin/browser/gesture/w;->a(Lcom/dolphin/browser/gesture/Gesture;)[F

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 390
    :cond_2
    iget v12, p0, Lcom/dolphin/browser/gesture/s;->a:I

    iget v13, p0, Lcom/dolphin/browser/gesture/s;->b:I

    invoke-static {v12, v13, v11, v0}, Lcom/dolphin/browser/gesture/z;->a(IILcom/dolphin/browser/gesture/Gesture;Ljava/lang/String;)Lcom/dolphin/browser/gesture/z;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/dolphin/browser/gesture/ac;->a(Lcom/dolphin/browser/gesture/z;)V

    goto :goto_2

    .line 395
    :cond_3
    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 397
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/dolphin/browser/gesture/w;->a(Lcom/dolphin/browser/gesture/Gesture;)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/s;->a([F)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/gesture/s;->a:I

    iget v1, p0, Lcom/dolphin/browser/gesture/s;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/dolphin/browser/gesture/z;->a(IILcom/dolphin/browser/gesture/Gesture;Ljava/lang/String;)Lcom/dolphin/browser/gesture/z;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/dolphin/browser/gesture/s;->e:Lcom/dolphin/browser/gesture/ac;

    iget v2, p0, Lcom/dolphin/browser/gesture/s;->a:I

    iget v3, p0, Lcom/dolphin/browser/gesture/s;->b:I

    iget-object v0, v0, Lcom/dolphin/browser/gesture/z;->a:[F

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/gesture/ac;->a(II[F)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Z)V
    .locals 4

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 331
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 341
    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_1
    if-eqz p2, :cond_0

    .line 355
    invoke-static {v2}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 357
    :cond_0
    return-void

    .line 331
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    const v3, 0x8000

    invoke-direct {v0, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v0

    goto :goto_0

    .line 343
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v2}, Lcom/dolphin/browser/gesture/s;->a(Ljava/io/DataInputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 354
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz p2, :cond_2

    .line 355
    invoke-static {v1}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 354
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/io/OutputStream;Z)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v1, 0x0

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    .line 278
    iget-object v5, p0, Lcom/dolphin/browser/gesture/s;->d:Ljava/util/HashMap;

    .line 280
    new-instance v3, Ljava/io/DataOutputStream;

    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_2

    :goto_0
    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 287
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 293
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 295
    invoke-static {v1, v2}, Lcom/dolphin/browser/gesture/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_1
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, v4

    .line 302
    :goto_1
    if-ge v2, v7, :cond_0

    .line 303
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/gesture/Gesture;->a(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 280
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    const v6, 0x8000

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    goto :goto_0

    .line 307
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    if-eqz p2, :cond_4

    .line 317
    invoke-static {v3}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 319
    :cond_4
    return-void

    .line 316
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz p2, :cond_5

    .line 317
    invoke-static {v1}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    :cond_5
    throw v0

    .line 316
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->e:Lcom/dolphin/browser/gesture/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/ac;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 3

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    if-nez v0, :cond_2

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->i:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->f:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/dolphin/browser/gesture/w;->a(Lcom/dolphin/browser/gesture/Gesture;)[F

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->e:Lcom/dolphin/browser/gesture/ac;

    iget v1, p0, Lcom/dolphin/browser/gesture/s;->a:I

    iget v2, p0, Lcom/dolphin/browser/gesture/s;->b:I

    invoke-static {v1, v2, p2, p1}, Lcom/dolphin/browser/gesture/z;->a(IILcom/dolphin/browser/gesture/Gesture;Ljava/lang/String;)Lcom/dolphin/browser/gesture/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ac;->a(Lcom/dolphin/browser/gesture/z;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 238
    if-eqz v0, :cond_0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/s;->h:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/gesture/s;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
