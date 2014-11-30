.class public Lcom/e/a/v;
.super Ljava/lang/Object;
.source "DrawableHelper.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Landroid/util/TypedValue;

.field private final d:Lcom/dolphin/browser/util/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/bq",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/e/a/w;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/e/a/x;

    invoke-direct {v0, p1}, Lcom/e/a/x;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/e/a/v;-><init>(Lcom/e/a/w;)V

    .line 124
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    check-cast v0, Lcom/e/a/x;

    invoke-virtual {v0, p0}, Lcom/e/a/x;->a(Lcom/e/a/v;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/e/a/w;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/e/a/v;->b:Ljava/lang/Object;

    .line 111
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/e/a/v;->c:Landroid/util/TypedValue;

    .line 112
    new-instance v0, Lcom/dolphin/browser/util/bq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/bq;-><init>(I)V

    iput-object v0, p0, Lcom/e/a/v;->d:Lcom/dolphin/browser/util/bq;

    .line 118
    iput-object p1, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    .line 119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/e/a/v;->f:I

    .line 120
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5

    .prologue
    .line 97
    :try_start_0
    sget-object v0, Lcom/e/a/v;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 98
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "loadXmlResourceParser"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/e/a/v;->a:Ljava/lang/reflect/Method;

    .line 100
    sget-object v0, Lcom/e/a/v;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    :cond_0
    sget-object v0, Lcom/e/a/v;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 160
    iget-object v2, p0, Lcom/e/a/v;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/e/a/v;->c:Landroid/util/TypedValue;

    .line 162
    if-nez v1, :cond_1

    .line 163
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v3}, Lcom/e/a/w;->getValue(ILandroid/util/TypedValue;Z)V

    .line 168
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move v2, p1

    move v3, p2

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/e/a/v;->a(Landroid/util/TypedValue;IZLcom/e/a/a;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    iget-object v2, p0, Lcom/e/a/v;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_1
    iget-object v3, p0, Lcom/e/a/v;->c:Landroid/util/TypedValue;

    if-nez v3, :cond_0

    .line 172
    iput-object v1, p0, Lcom/e/a/v;->c:Landroid/util/TypedValue;

    .line 174
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    return-object v0

    .line 165
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/e/a/v;->c:Landroid/util/TypedValue;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private a(Lcom/dolphin/browser/util/bq;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/util/bq",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v1, p0, Lcom/e/a/v;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 301
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 303
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v1

    .line 314
    :goto_0
    return-object v0

    .line 310
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/dolphin/browser/util/bq;->b(J)V

    .line 313
    :cond_1
    monitor-exit v1

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/e/a/v;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/e/a/v;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    invoke-interface {v0, p1}, Lcom/e/a/w;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 283
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Lcom/e/a/ap;

    invoke-direct {v0, p0}, Lcom/e/a/ap;-><init>(Lcom/e/a/v;)V

    .line 292
    invoke-virtual {v0, p1, p2, p3}, Lcom/e/a/ap;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 293
    return-object v0

    .line 288
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid drawable tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Landroid/util/TypedValue;IZLcom/e/a/a;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 180
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_svg.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    :cond_0
    if-eqz p3, :cond_2

    .line 183
    const/4 v0, 0x0

    .line 243
    :cond_1
    :goto_0
    return-object v0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    invoke-interface {v0, p2}, Lcom/e/a/w;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_3
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long v1, v0, v2

    .line 191
    iget-object v0, p0, Lcom/e/a/v;->d:Lcom/dolphin/browser/util/bq;

    invoke-direct {p0, v0, v1, v2}, Lcom/e/a/v;->a(Lcom/dolphin/browser/util/bq;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    .line 197
    if-nez v0, :cond_4

    .line 198
    iget-object v3, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v4, "_svg.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    iget v4, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v5, "drawable"

    invoke-interface {v0, v3, p2, v4, v5}, Lcom/e/a/w;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 203
    iget-object v0, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    invoke-virtual {p0, v0, v4}, Lcom/e/a/v;->a(Lcom/e/a/w;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 234
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 236
    if-eqz v3, :cond_1

    .line 237
    iget-object v4, p0, Lcom/e/a/v;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 238
    :try_start_1
    iget-object v5, p0, Lcom/e/a/v;->d:Lcom/dolphin/browser/util/bq;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v2, v6}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 239
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1

    .line 214
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/e/a/v;->e:Lcom/e/a/w;

    invoke-interface {v4, p2, p1, p5}, Lcom/e/a/w;->b(ILandroid/util/TypedValue;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_4

    .line 216
    new-instance v0, Lcom/e/a/z;

    invoke-direct {v0, v4, p4}, Lcom/e/a/z;-><init>(Ljava/io/InputStream;Lcom/e/a/a;)V

    .line 217
    invoke-virtual {v0, p4}, Lcom/e/a/z;->a(Lcom/e/a/a;)V

    .line 218
    iget v5, p1, Landroid/util/TypedValue;->density:I

    invoke-virtual {v0, v5}, Lcom/e/a/z;->b(I)V

    .line 219
    iget v5, p0, Lcom/e/a/v;->f:I

    invoke-virtual {v0, v5}, Lcom/e/a/z;->c(I)V

    .line 221
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 228
    throw v1
.end method

.method public a(Lcom/e/a/w;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 253
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 257
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 261
    :cond_1
    if-eq v1, v3, :cond_2

    .line 262
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    invoke-interface {p1}, Lcom/e/a/w;->c()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/e/a/v;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    if-nez v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown initial tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/e/a/v;->d:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bq;->b()V

    .line 146
    return-void
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/e/a/v;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
