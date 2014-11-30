.class public Lcom/b/a/ae;
.super Ljava/lang/Object;
.source "Picasso.java"


# static fields
.field static final a:Landroid/os/Handler;

.field static b:Lcom/b/a/ae;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Lcom/b/a/o;

.field final e:Lcom/b/a/h;

.field final f:Lcom/b/a/au;

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/b/a/n;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field k:Z

.field private final l:Lcom/b/a/aj;

.field private final m:Lcom/b/a/al;

.field private final n:Lcom/b/a/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/b/a/af;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/af;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/b/a/ae;->a:Landroid/os/Handler;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/aj;Lcom/b/a/al;Lcom/b/a/au;Z)V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/b/a/ae;->c:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/b/a/ae;->d:Lcom/b/a/o;

    .line 125
    iput-object p3, p0, Lcom/b/a/ae;->e:Lcom/b/a/h;

    .line 126
    iput-object p4, p0, Lcom/b/a/ae;->l:Lcom/b/a/aj;

    .line 127
    iput-object p5, p0, Lcom/b/a/ae;->m:Lcom/b/a/al;

    .line 128
    iput-object p6, p0, Lcom/b/a/ae;->f:Lcom/b/a/au;

    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/ae;->g:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/ae;->h:Ljava/util/Map;

    .line 131
    iput-boolean p7, p0, Lcom/b/a/ae;->j:Z

    .line 132
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/b/a/ae;->i:Ljava/lang/ref/ReferenceQueue;

    .line 133
    new-instance v0, Lcom/b/a/ah;

    iget-object v1, p0, Lcom/b/a/ae;->i:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/b/a/ae;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/b/a/ah;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/b/a/ae;->n:Lcom/b/a/ah;

    .line 134
    iget-object v0, p0, Lcom/b/a/ae;->n:Lcom/b/a/ah;

    invoke-virtual {v0}, Lcom/b/a/ah;->start()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/b/a/ae;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/b/a/ae;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/b/a/ae;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/b/a/a;->b()V

    .line 325
    iget-object v1, p0, Lcom/b/a/ae;->d:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->b(Lcom/b/a/a;)V

    .line 327
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 328
    check-cast p1, Landroid/widget/ImageView;

    .line 329
    iget-object v0, p0, Lcom/b/a/ae;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/n;

    .line 331
    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lcom/b/a/n;->a()V

    .line 335
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ap;)Lcom/b/a/ap;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/b/a/ae;->m:Lcom/b/a/al;

    invoke-interface {v0, p1}, Lcom/b/a/al;->a(Lcom/b/a/ap;)Lcom/b/a/ap;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/ae;->m:Lcom/b/a/al;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/b/a/as;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/b/a/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/b/a/as;-><init>(Lcom/b/a/ae;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/as;
    .locals 3

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Lcom/b/a/as;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a/as;-><init>(Lcom/b/a/ae;Landroid/net/Uri;I)V

    .line 183
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ae;->a(Landroid/net/Uri;)Lcom/b/a/as;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    if-ne p0, v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Default singleton instance cannot be shutdown."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/ae;->k:Z

    if-eqz v0, :cond_1

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/h;

    invoke-interface {v0}, Lcom/b/a/h;->c()V

    .line 242
    iget-object v0, p0, Lcom/b/a/ae;->n:Lcom/b/a/ah;

    invoke-virtual {v0}, Lcom/b/a/ah;->a()V

    .line 243
    iget-object v0, p0, Lcom/b/a/ae;->f:Lcom/b/a/au;

    invoke-virtual {v0}, Lcom/b/a/au;->c()V

    .line 244
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/o;

    invoke-virtual {v0}, Lcom/b/a/o;->a()V

    .line 245
    iget-object v0, p0, Lcom/b/a/ae;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/n;

    .line 246
    invoke-virtual {v0}, Lcom/b/a/n;->a()V

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/b/a/ae;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/ae;->k:Z

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/b/a/ae;->a(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method a(Landroid/widget/ImageView;Lcom/b/a/n;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/b/a/ae;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, v0}, Lcom/b/a/ae;->a(Ljava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/b/a/ae;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/b/a/ae;->b(Lcom/b/a/a;)V

    .line 274
    return-void
.end method

.method public a(Lcom/b/a/ay;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/b/a/ae;->a(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method a(Lcom/b/a/d;)V
    .locals 8

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/b/a/d;->i()Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/d;->h()Lcom/b/a/ap;

    move-result-object v1

    iget-object v1, v1, Lcom/b/a/ap;->a:Landroid/net/Uri;

    .line 297
    invoke-virtual {p1}, Lcom/b/a/d;->j()Ljava/lang/Exception;

    move-result-object v2

    .line 298
    invoke-virtual {p1}, Lcom/b/a/d;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    invoke-virtual {p1}, Lcom/b/a/d;->a()Lcom/b/a/ak;

    move-result-object v4

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 302
    invoke-virtual {v0}, Lcom/b/a/a;->f()Z

    move-result v6

    if-nez v6, :cond_2

    .line 305
    iget-object v6, p0, Lcom/b/a/ae;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    if-eqz v3, :cond_4

    .line 307
    if-nez v4, :cond_3

    .line 308
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 310
    :cond_3
    invoke-virtual {v0, v3, v4}, Lcom/b/a/a;->a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V

    goto :goto_1

    .line 312
    :cond_4
    invoke-virtual {v0}, Lcom/b/a/a;->a()V

    goto :goto_1

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/b/a/ae;->l:Lcom/b/a/aj;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/b/a/ae;->l:Lcom/b/a/aj;

    invoke-interface {v0, p0, v1, v2}, Lcom/b/a/aj;->a(Lcom/b/a/ae;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/b/a/ae;->e:Lcom/b/a/h;

    invoke-interface {v0, p1}, Lcom/b/a/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/b/a/ae;->f:Lcom/b/a/au;

    invoke-virtual {v1}, Lcom/b/a/au;->a()V

    .line 287
    :goto_0
    return-object v0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/b/a/ae;->f:Lcom/b/a/au;

    invoke-virtual {v1}, Lcom/b/a/au;->b()V

    goto :goto_0
.end method

.method b(Lcom/b/a/a;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/b/a/ae;->d:Lcom/b/a/o;

    invoke-virtual {v0, p1}, Lcom/b/a/o;->a(Lcom/b/a/a;)V

    .line 278
    return-void
.end method
