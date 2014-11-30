.class public abstract Lcom/dolphin/browser/theme/data/a;
.super Ljava/lang/Object;
.source "AbsTheme.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/theme/data/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:J

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Ljava/lang/String;

.field private m:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/theme/data/a;->a:I

    .line 82
    iput-boolean v1, p0, Lcom/dolphin/browser/theme/data/a;->k:Z

    .line 205
    iput-boolean v1, p0, Lcom/dolphin/browser/theme/data/a;->m:Z

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/theme/data/a;->a:I

    .line 82
    iput-boolean v1, p0, Lcom/dolphin/browser/theme/data/a;->k:Z

    .line 205
    iput-boolean v1, p0, Lcom/dolphin/browser/theme/data/a;->m:Z

    .line 86
    iput p1, p0, Lcom/dolphin/browser/theme/data/a;->a:I

    .line 87
    return-void
.end method

.method public static final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->c()Lcom/dolphin/browser/theme/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->n()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/dolphin/browser/theme/d/b;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    instance-of v1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 228
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 229
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/data/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 232
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 239
    :goto_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 235
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 234
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public abstract a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
.end method

.method public a()Lcom/dolphin/browser/theme/data/b;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->a:Lcom/dolphin/browser/theme/data/b;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/dolphin/browser/theme/data/a;->h:J

    .line 306
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 1

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/a;->j:Z

    .line 261
    iget-object v0, p1, Lcom/dolphin/browser/theme/data/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/a;->b:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->i_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/dolphin/browser/theme/data/a;->i:Z

    .line 103
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/dolphin/browser/theme/data/a;->a:I

    return v0
.end method

.method public b(Lcom/dolphin/browser/theme/data/a;)I
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->k_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, -0x1

    .line 296
    :goto_0
    return v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->k_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    iget-wide v0, p1, Lcom/dolphin/browser/theme/data/a;->h:J

    iget-wide v2, p0, Lcom/dolphin/browser/theme/data/a;->h:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/dolphin/browser/theme/data/a;->j:Z

    .line 111
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/dolphin/browser/theme/data/a;->m:Z

    .line 208
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/data/a;->b(Lcom/dolphin/browser/theme/data/a;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/dolphin/browser/theme/data/a;->k:Z

    .line 314
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-boolean v1, p0, Lcom/dolphin/browser/theme/data/a;->j:Z

    if-eqz v1, :cond_0

    .line 115
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/data/a;->j:Z

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/dolphin/browser/theme/data/a;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    check-cast p1, Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 270
    :cond_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    new-instance v2, Ljava/lang/ref/SoftReference;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 129
    :cond_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/ref/SoftReference;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method public abstract k()I
.end method

.method public k_()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/a;->i:Z

    return v0
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public o()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->c:Ljava/lang/String;

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 185
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/theme/data/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 189
    if-eq v4, v3, :cond_2

    const/4 v0, 0x1

    .line 190
    :goto_2
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/a;->e:Ljava/lang/ref/SoftReference;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v3, v2

    .line 183
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 189
    goto :goto_2

    .line 197
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 198
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 197
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/a;->m:Z

    return v0
.end method

.method public q()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 246
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_0
    const-string v0, "uid"

    iget v2, p0, Lcom/dolphin/browser/theme/data/a;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v0, "name"

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/dolphin/browser/theme/data/a;->h:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/a;->k:Z

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/a;->l:Ljava/lang/String;

    return-object v0
.end method
