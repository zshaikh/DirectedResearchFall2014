.class public Lcom/dolphin/browser/theme/c/l;
.super Lcom/dolphin/browser/theme/c/a;
.source "ThemeResources.java"


# static fields
.field protected static final b:[Ljava/lang/String;

.field protected static final c:[I

.field private static final o:I


# instance fields
.field private d:[Lcom/dolphin/browser/theme/c/c;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/theme/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/theme/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/dolphin/browser/theme/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/theme/d/c",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/dolphin/browser/theme/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/theme/d/c",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "res/drawable"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "res/drawable-ldpi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "res/drawable-mdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "res/drawable-hdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "res/drawable-xhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "res/drawable-xxhdpi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    .line 94
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/theme/c/l;->c:[I

    .line 731
    invoke-static {}, Lcom/dolphin/browser/theme/c/l;->g()I

    move-result v0

    sput v0, Lcom/dolphin/browser/theme/c/l;->o:I

    return-void

    .line 94
    nop

    :array_0
    .array-data 4
        0x0
        0x78
        0xa0
        0xf0
        0x140
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->c()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/theme/c/a;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/dolphin/browser/theme/d/c;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/d/c;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/l;->g:Lcom/dolphin/browser/theme/d/c;

    .line 110
    new-instance v0, Lcom/dolphin/browser/theme/d/c;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/d/c;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/l;->h:Lcom/dolphin/browser/theme/d/c;

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    .line 154
    iput-object p3, p0, Lcom/dolphin/browser/theme/c/l;->j:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    .line 156
    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 157
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/c/l;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/theme/c/l;->k:I

    .line 161
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x78

    if-gt p1, v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 166
    :cond_0
    const/16 v0, 0xa0

    if-gt p1, v0, :cond_1

    .line 167
    const/4 v0, 0x2

    goto :goto_0

    .line 168
    :cond_1
    const/16 v0, 0xf0

    if-gt p1, v0, :cond_2

    .line 169
    const/4 v0, 0x3

    goto :goto_0

    .line 170
    :cond_2
    const/16 v0, 0x140

    if-gt p1, v0, :cond_3

    .line 171
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/c/i;

    .line 220
    if-nez v0, :cond_1

    .line 221
    if-nez p1, :cond_0

    .line 222
    const-string v0, "color"

    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getColor(I)I

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c/i;->c()I

    move-result v1

    if-nez v1, :cond_2

    .line 227
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c/i;->a()I

    move-result v0

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/c/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "color"

    iget-object v2, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 231
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/theme/c/l;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    .line 450
    invoke-direct {p0, p2}, Lcom/dolphin/browser/theme/c/l;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-object v0

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->h:Lcom/dolphin/browser/theme/d/c;

    .line 455
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 457
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/theme/c/l;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 458
    int-to-long v1, p2

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/dolphin/browser/theme/d/c;->b(JLjava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 462
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_3
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    const-string v0, ".xml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 468
    const/4 v1, 0x0

    .line 470
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 471
    if-nez v0, :cond_4

    .line 472
    invoke-super {p0, p2}, Lcom/dolphin/browser/theme/c/a;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 489
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 474
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    :try_start_2
    new-instance v0, Lcom/dolphin/browser/theme/d/l;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iget-object v5, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v5}, Lcom/dolphin/browser/theme/d/l;-><init>(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 478
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 481
    invoke-static {p0, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 489
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 496
    if-eqz v0, :cond_0

    .line 497
    monitor-enter v3

    .line 498
    int-to-long v1, p2

    :try_start_3
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/dolphin/browser/theme/d/c;->b(JLjava/lang/Object;)V

    .line 499
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    :goto_1
    :try_start_4
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from color state list resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 487
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 492
    :cond_5
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from drawable resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": .xml extension required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 482
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/theme/d/c;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/theme/d/c",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)",
            "Landroid/graphics/drawable/Drawable$ConstantState;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    monitor-enter v1

    .line 418
    int-to-long v2, p2

    :try_start_0
    invoke-virtual {p1, v2, v3}, Lcom/dolphin/browser/theme/d/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 419
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 421
    if-eqz v0, :cond_0

    .line 422
    monitor-exit v1

    .line 428
    :goto_0
    return-object v0

    .line 424
    :cond_0
    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/dolphin/browser/theme/d/c;->b(J)V

    .line 427
    :cond_1
    monitor-exit v1

    .line 428
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;Lcom/dolphin/browser/theme/c/i;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 283
    if-eqz p3, :cond_4

    .line 284
    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 308
    :goto_0
    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 287
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/theme/c/l;->a(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 289
    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/l;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p3}, Lcom/dolphin/browser/theme/c/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 296
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/theme/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable resource with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not Found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :catch_1
    move-exception v1

    .line 300
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable resource with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not Found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_3
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable resource with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 724
    if-eqz p2, :cond_0

    .line 725
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 728
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 691
    .line 692
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 693
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 694
    sget v3, Lcom/dolphin/browser/theme/c/l;->o:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 695
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 696
    iget v3, p1, Landroid/util/TypedValue;->density:I

    .line 697
    if-nez v3, :cond_4

    .line 698
    const/16 v3, 0xa0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 704
    :cond_0
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v3, :cond_1

    .line 705
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 707
    :cond_1
    invoke-static {p2, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 708
    if-eqz v3, :cond_3

    .line 709
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 710
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    move-object v0, v1

    .line 714
    :goto_1
    invoke-static {p0, v3, v0, v1, p3}, Lcom/dolphin/browser/theme/c/l;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 718
    :cond_3
    return-object v1

    .line 699
    :cond_4
    const v4, 0xffff

    if-eq v3, v4, :cond_0

    .line 700
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/StateListDrawable;
    .locals 11

    .prologue
    .line 762
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 765
    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 766
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 771
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 772
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid resourcess tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 775
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 777
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    .line 779
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 782
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v6, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    .line 783
    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 787
    if-gt v1, v6, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    const-string v3, ""

    .line 794
    const/4 v0, 0x0

    .line 795
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .line 796
    new-array v10, v9, [I

    .line 797
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v9, :cond_6

    .line 798
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-static {v1}, Lcom/dolphin/browser/theme/d/l;->b(Ljava/lang/String;)I

    move-result v4

    .line 801
    if-nez v4, :cond_7

    .line 809
    :cond_6
    invoke-static {v10, v0}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    .line 812
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 813
    invoke-static {v3}, Lcom/dolphin/browser/theme/d/l;->a(Ljava/lang/String;)Lcom/dolphin/browser/theme/d/m;

    move-result-object v0

    .line 815
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 816
    sget-object v4, Lcom/dolphin/browser/theme/d/m;->c:Lcom/dolphin/browser/theme/d/m;

    if-ne v0, v4, :cond_b

    .line 817
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 818
    if-eqz v0, :cond_a

    .line 819
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/l;->getColor(I)I

    move-result v2

    .line 820
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 858
    :goto_2
    invoke-virtual {v8, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 803
    :cond_7
    const v1, 0x1010199

    if-ne v4, v1, :cond_8

    move-object v1, v2

    .line 797
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    goto :goto_1

    .line 806
    :cond_8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v4

    :goto_4
    aput v2, v10, v0

    move v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_9
    neg-int v2, v4

    goto :goto_4

    .line 823
    :cond_a
    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/theme/c/l;->a(ILjava/lang/String;)I

    move-result v2

    .line 824
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_2

    .line 826
    :cond_b
    sget-object v4, Lcom/dolphin/browser/theme/d/m;->b:Lcom/dolphin/browser/theme/d/m;

    if-ne v0, v4, :cond_e

    .line 827
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 828
    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    .line 829
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad format for state list drawable with bad value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_c
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v5}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 832
    if-eqz v2, :cond_d

    .line 833
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/theme/c/l;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 835
    :cond_d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/theme/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 837
    :cond_e
    sget-object v4, Lcom/dolphin/browser/theme/d/m;->d:Lcom/dolphin/browser/theme/d/m;

    if-ne v0, v4, :cond_10

    .line 838
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 839
    if-eqz v0, :cond_f

    .line 840
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/l;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 842
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "we do not support custom android drawable!!"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_10
    sget-object v4, Lcom/dolphin/browser/theme/d/m;->e:Lcom/dolphin/browser/theme/d/m;

    if-ne v0, v4, :cond_12

    .line 845
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/dolphin/browser/theme/c/l;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 846
    if-eqz v0, :cond_11

    .line 847
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/c/l;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2

    .line 849
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "we do not support custom android color!!"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad format for state list drawable with bad value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "bad format for state list drawable!"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_14
    return-object v8
.end method

.method public static final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 864
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 865
    :cond_0
    const-string v0, ""

    .line 875
    :goto_0
    return-object v0

    .line 867
    :cond_1
    array-length v1, p0

    if-ne v1, v0, :cond_2

    .line 868
    aget-object v0, p0, v2

    goto :goto_0

    .line 870
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 873
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 875
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/theme/c/i;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/theme/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "drawable"

    aput-object v2, v0, v1

    new-instance v1, Lcom/dolphin/browser/theme/c/m;

    invoke-direct {v1, p0, p2, p3}, Lcom/dolphin/browser/theme/c/m;-><init>(Lcom/dolphin/browser/theme/c/l;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/theme/c/l;->a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/dolphin/browser/theme/c/n;)V

    .line 617
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;Lcom/dolphin/browser/theme/c/n;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x1

    .line 633
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_1

    if-ne v0, v2, :cond_0

    .line 636
    :cond_1
    if-eq v0, v8, :cond_2

    .line 637
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 642
    const-string v3, "resources"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 643
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid resourcess tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 648
    const-string v3, ""

    .line 649
    const-string v0, ""

    move-object v4, v3

    move-object v3, v0

    move v0, v1

    .line 653
    :cond_4
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v2, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v5, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    .line 654
    :cond_5
    if-ne v6, v8, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 656
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    .line 657
    if-ne v6, v2, :cond_4

    .line 660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    .line 664
    goto :goto_0

    .line 667
    :cond_6
    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    if-eqz v0, :cond_4

    .line 668
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 669
    invoke-interface {p3, v3, v4, v6}, Lcom/dolphin/browser/theme/c/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 670
    if-eqz v6, :cond_7

    if-ne v6, v8, :cond_4

    :cond_7
    move v0, v1

    .line 671
    goto :goto_0

    .line 675
    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 678
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 679
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    const/4 v0, 0x1

    .line 683
    :cond_0
    return v0

    .line 678
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 745
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 746
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 747
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 748
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 755
    :goto_0
    return v0

    .line 753
    :catch_0
    move-exception v0

    :goto_1
    move v0, v1

    .line 755
    goto :goto_0

    .line 752
    :catch_1
    move-exception v0

    goto :goto_1

    .line 751
    :catch_2
    move-exception v0

    goto :goto_1

    .line 750
    :catch_3
    move-exception v0

    goto :goto_1

    .line 749
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private b(I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->h:Lcom/dolphin/browser/theme/d/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/d/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 508
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 510
    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-object v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->h:Lcom/dolphin/browser/theme/d/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/d/c;->c(J)V

    .line 516
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/c/i;

    .line 336
    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/c/i;

    .line 340
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/theme/c/l;->a(ILjava/lang/String;Lcom/dolphin/browser/theme/c/i;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_2

    .line 405
    :goto_0
    return-object v0

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->d:[Lcom/dolphin/browser/theme/c/c;

    .line 349
    aget-object v0, v3, v2

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/theme/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    if-nez v0, :cond_a

    .line 351
    iget v2, p0, Lcom/dolphin/browser/theme/c/l;->k:I

    .line 352
    sget-object v4, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    array-length v4, v4

    .line 353
    :goto_1
    if-ge v2, v4, :cond_3

    .line 354
    aget-object v0, v3, v2

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/theme/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_4

    .line 359
    :cond_3
    if-nez v0, :cond_a

    .line 360
    iget v2, p0, Lcom/dolphin/browser/theme/c/l;->k:I

    add-int/lit8 v2, v2, -0x1

    .line 361
    :goto_2
    if-lez v2, :cond_a

    .line 362
    aget-object v0, v3, v2

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/theme/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_5

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    .line 370
    :goto_3
    if-nez v2, :cond_6

    move-object v0, v1

    .line 371
    goto :goto_0

    .line 353
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 374
    :cond_6
    :try_start_0
    const-string v1, ".xml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 375
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lcom/dolphin/browser/theme/d/l;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/theme/c/l;->i:Ljava/lang/String;

    invoke-direct {v0, v3, p0, v4}, Lcom/dolphin/browser/theme/d/l;-><init>(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 380
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 381
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/c/l;->a(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_7
    const-string v1, ".svg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 383
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :try_start_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    sget-object v4, Lcom/dolphin/browser/theme/c/l;->c:[I

    aget v4, v4, v0

    iput v4, v3, Landroid/util/TypedValue;->density:I

    .line 385
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    iput-object v2, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 386
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v3, Landroid/util/TypedValue;->assetCookie:I

    .line 387
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    iput v0, v3, Landroid/util/TypedValue;->data:I

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/dolphin/browser/theme/c/l;->a(ILandroid/util/TypedValue;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 389
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find resource with file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 392
    :try_start_4
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 393
    iget-object v4, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    sget-object v5, Lcom/dolphin/browser/theme/c/l;->c:[I

    aget v0, v5, v0

    iput v0, v4, Landroid/util/TypedValue;->density:I

    .line 394
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->z()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Lcom/dolphin/browser/theme/c/l;->a(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    :goto_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 397
    :cond_9
    :try_start_6
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto/16 :goto_3
.end method

.method private f()V
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->l:Z

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c/l;->e()[Lcom/dolphin/browser/theme/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/c/l;->d:[Lcom/dolphin/browser/theme/c/c;

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->l:Z

    goto :goto_0
.end method

.method private static g()I
    .locals 3

    .prologue
    .line 738
    const-string v0, "qemu.sf.lcd_density"

    const-string v1, "ro.sf.lcd_density"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/dolphin/browser/theme/c/l;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/c/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/theme/c/l;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/dolphin/browser/theme/c/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 409
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/theme/c/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method protected a(Lcom/dolphin/browser/theme/c/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->j:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/theme/c/c;->a([Ljava/lang/String;)V

    .line 549
    :cond_0
    return-void
.end method

.method public b(ILandroid/util/TypedValue;Z)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 314
    if-eqz p3, :cond_0

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/theme/c/a;->b(ILandroid/util/TypedValue;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 317
    :cond_0
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    const/4 v0, 0x0

    .line 320
    :try_start_0
    iget v2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0

    .line 321
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 552
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->m:Z

    if-eqz v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 555
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 556
    iput-object v0, p0, Lcom/dolphin/browser/theme/c/l;->e:Ljava/util/HashMap;

    .line 557
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 558
    iput-object v3, p0, Lcom/dolphin/browser/theme/c/l;->f:Ljava/util/HashMap;

    .line 559
    const/4 v1, 0x0

    .line 561
    :try_start_0
    const-string v2, "res/values/colors.xml"

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/theme/c/l;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 562
    if-nez v4, :cond_1

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 567
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 569
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 570
    invoke-direct {p0, v1, v0, v3}, Lcom/dolphin/browser/theme/c/l;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 574
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 576
    :goto_1
    iput-boolean v6, p0, Lcom/dolphin/browser/theme/c/l;->m:Z

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 571
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method protected e()[Lcom/dolphin/browser/theme/c/c;
    .locals 5

    .prologue
    .line 528
    sget-object v0, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    array-length v2, v0

    .line 529
    new-array v3, v2, [Lcom/dolphin/browser/theme/c/c;

    .line 530
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 532
    sget-object v0, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v4, "res/drawable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Lcom/dolphin/browser/theme/c/d;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/c/d;-><init>()V

    .line 537
    :goto_1
    sget-object v4, Lcom/dolphin/browser/theme/c/l;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/dolphin/browser/theme/c/l;->a(Lcom/dolphin/browser/theme/c/c;Ljava/lang/String;)V

    .line 538
    aput-object v0, v3, v1

    .line 530
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 535
    :cond_0
    new-instance v0, Lcom/dolphin/browser/theme/c/c;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/c/c;-><init>()V

    goto :goto_1

    .line 540
    :cond_1
    return-object v3
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->e:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 206
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->m:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c/l;->b()V

    .line 211
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/c/l;->m:Z

    if-nez v0, :cond_3

    .line 212
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/c/l;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/theme/c/l;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    .line 437
    :cond_0
    ushr-int/lit8 v0, p1, 0x18

    if-ne v0, v1, :cond_1

    .line 439
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/l;->n:Landroid/util/TypedValue;

    .line 443
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/dolphin/browser/theme/c/l;->getValue(ILandroid/util/TypedValue;Z)V

    .line 444
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/c/l;->a(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    ushr-int/lit8 v1, p1, 0x18

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 243
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_2
    iget-boolean v1, p0, Lcom/dolphin/browser/theme/c/l;->m:Z

    if-nez v1, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/c/l;->b()V

    .line 248
    :cond_3
    iget-boolean v1, p0, Lcom/dolphin/browser/theme/c/l;->l:Z

    if-nez v1, :cond_4

    .line 249
    invoke-direct {p0}, Lcom/dolphin/browser/theme/c/l;->f()V

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->g:Lcom/dolphin/browser/theme/d/c;

    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/theme/c/l;->a(Lcom/dolphin/browser/theme/d/c;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_5

    .line 253
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_5
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/c/l;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/theme/c/l;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 267
    :goto_1
    if-nez v0, :cond_6

    .line 268
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/a;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 263
    :catch_1
    move-exception v1

    .line 264
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lcom/dolphin/browser/theme/c/l;->g:Lcom/dolphin/browser/theme/d/c;

    monitor-enter v1

    .line 274
    :try_start_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/c/l;->g:Lcom/dolphin/browser/theme/d/c;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5, v2}, Lcom/dolphin/browser/theme/d/c;->b(JLjava/lang/Object;)V

    .line 275
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
