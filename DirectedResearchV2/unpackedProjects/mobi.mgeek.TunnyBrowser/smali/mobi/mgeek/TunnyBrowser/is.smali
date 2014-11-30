.class Lmobi/mgeek/TunnyBrowser/is;
.super Landroid/widget/ArrayAdapter;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lmobi/mgeek/TunnyBrowser/ir;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

.field private b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lmobi/mgeek/TunnyBrowser/ir;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 167
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    .line 168
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 169
    iput p3, p0, Lmobi/mgeek/TunnyBrowser/is;->b:I

    .line 170
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->c:Landroid/view/LayoutInflater;

    .line 171
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02001d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->d:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02017c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->e:Landroid/graphics/Bitmap;

    .line 175
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02017d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->f:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02017b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->g:Landroid/graphics/Bitmap;

    .line 179
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02017f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->h:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02017e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->i:Landroid/graphics/Bitmap;

    .line 183
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->a()V

    .line 184
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/is;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/is;Lmobi/mgeek/TunnyBrowser/ir;)Lmobi/mgeek/TunnyBrowser/ir;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    return-object p1
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 191
    .line 192
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ir;

    .line 198
    :goto_0
    invoke-virtual {v0, p3}, Lmobi/mgeek/TunnyBrowser/ir;->a(I)V

    .line 199
    return-void

    .line 195
    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/ir;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-direct {v0, v1, p2}, Lmobi/mgeek/TunnyBrowser/ir;-><init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;Ljava/lang/String;)V

    .line 196
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/is;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/is;->a(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/is;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    return-object v0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 3

    .prologue
    const/high16 v2, 0x41200000

    .line 356
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 357
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->a(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeValueToString called with non-positive value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "0"

    .line 363
    :goto_0
    return-object v0

    .line 360
    :cond_0
    long-to-float v0, p1

    const/high16 v1, 0x49800000

    div-float/2addr v0, v1

    .line 361
    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 362
    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 363
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/it;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/it;-><init>(Lmobi/mgeek/TunnyBrowser/is;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebStorage;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 223
    return-void
.end method

.method public a(Landroid/widget/ImageView;J)V
    .locals 7

    .prologue
    const/high16 v6, 0x40a00000

    const-wide v4, 0x3fb999999999999aL

    .line 387
    long-to-float v0, p2

    const/high16 v1, 0x49800000

    div-float v1, v0, v1

    .line 392
    const/4 v0, 0x0

    .line 393
    float-to-double v2, v1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 394
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/is;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 400
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void

    .line 395
    :cond_1
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    cmpg-float v2, v1, v6

    if-gtz v2, :cond_2

    .line 396
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/is;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 397
    :cond_2
    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 398
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/is;->g:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/iu;

    invoke-direct {v1, p0, p1}, Lmobi/mgeek/TunnyBrowser/iu;-><init>(Lmobi/mgeek/TunnyBrowser/is;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IGeolocationPermissions;->getOrigins(Lcom/dolphin/browser/core/ValueCallback;)V

    .line 238
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 243
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 246
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/mgeek/TunnyBrowser/ir;

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 257
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 255
    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "favicon"

    aput-object v4, v2, v3

    const-string v3, "is_folder=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 270
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x1

    .line 273
    const/4 v5, 0x2

    .line 275
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_4
    if-eqz v1, :cond_5

    .line 317
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    :cond_5
    :goto_2
    return-void

    .line 279
    :cond_6
    :try_start_3
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 280
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 283
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 284
    if-eqz v0, :cond_b

    .line 285
    const/4 v2, 0x0

    array-length v11, v0

    invoke-static {v0, v2, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 287
    :goto_3
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 288
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 289
    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ir;

    .line 302
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    new-instance v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 304
    :cond_8
    invoke-virtual {v0, v10}, Lmobi/mgeek/TunnyBrowser/ir;->a(Ljava/lang/String;)V

    .line 306
    :cond_9
    if-eqz v2, :cond_7

    .line 307
    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/ir;->a(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 315
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_a

    .line 317
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 320
    :cond_a
    :goto_6
    throw v0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_6

    .line 315
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :cond_b
    move-object v2, v6

    goto :goto_3
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    .line 375
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->a()V

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lmobi/mgeek/TunnyBrowser/ir;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    return-object v0
.end method

.method public c(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->clear()V

    .line 331
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ir;

    .line 336
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/is;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->notifyDataSetChanged()V

    .line 341
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->finish()V

    .line 344
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ir;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 413
    if-nez p2, :cond_0

    .line 414
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->c:Landroid/view/LayoutInflater;

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/is;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 419
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 421
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 422
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f0803fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 423
    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v4, 0x7f0803fc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 424
    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f0803fb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 425
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->getCount()I

    move-result v6

    invoke-static {v6, p1, p2}, Lcom/mgeek/android/util/b;->a(IILandroid/view/View;)V

    .line 428
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v6

    sget-object v7, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v7, 0x7f0a01a0

    invoke-virtual {v6, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 429
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v6

    sget-object v7, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v7, 0x7f0a01a1

    invoke-virtual {v6, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 431
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    if-nez v6, :cond_5

    .line 432
    iget-object v6, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    iget-object v7, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    sget-object v8, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v8, 0x7f0e04a2

    invoke-virtual {v7, v8}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/is;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobi/mgeek/TunnyBrowser/ir;

    .line 435
    invoke-virtual {v6}, Lmobi/mgeek/TunnyBrowser/ir;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v6}, Lmobi/mgeek/TunnyBrowser/ir;->d()Ljava/lang/String;

    move-result-object v7

    .line 437
    if-eqz v7, :cond_4

    .line 438
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 439
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 440
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    invoke-virtual {v6}, Lmobi/mgeek/TunnyBrowser/ir;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->d:Landroid/graphics/Bitmap;

    .line 456
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v3}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 457
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 458
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020125

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {v6}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v0

    .line 466
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lmobi/mgeek/TunnyBrowser/ir;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/iv;

    invoke-direct {v2, p0, v4}, Lmobi/mgeek/TunnyBrowser/iv;-><init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/ImageView;)V

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/core/IWebStorage;->getUsageForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V

    .line 477
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lmobi/mgeek/TunnyBrowser/ir;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v1

    new-instance v2, Lmobi/mgeek/TunnyBrowser/iw;

    invoke-direct {v2, p0, v5}, Lmobi/mgeek/TunnyBrowser/iw;-><init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/ImageView;)V

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/core/IGeolocationPermissions;->getAllowed(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V

    .line 529
    :cond_3
    :goto_1
    return-object p2

    .line 443
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 492
    :cond_5
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/is;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v4}, Lmobi/mgeek/TunnyBrowser/ir;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v2

    .line 498
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v4, p1}, Lmobi/mgeek/TunnyBrowser/ir;->d(I)I

    move-result v4

    if-nez v4, :cond_6

    .line 499
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v4

    new-instance v5, Lmobi/mgeek/TunnyBrowser/ix;

    invoke-direct {v5, p0, v0, v1, v3}, Lmobi/mgeek/TunnyBrowser/ix;-><init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-interface {v4, v2, v5}, Lcom/dolphin/browser/core/IWebStorage;->getUsageForOrigin(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V

    goto :goto_1

    .line 510
    :cond_6
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v4, p1}, Lmobi/mgeek/TunnyBrowser/ir;->d(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 511
    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e02af

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 512
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    new-instance v4, Lmobi/mgeek/TunnyBrowser/iy;

    invoke-direct {v4, p0, v1, v3}, Lmobi/mgeek/TunnyBrowser/iy;-><init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-interface {v0, v2, v4}, Lcom/dolphin/browser/core/IGeolocationPermissions;->getAllowed(Ljava/lang/String;Lcom/dolphin/browser/core/ValueCallback;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    if-eqz v0, :cond_2

    .line 537
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v1, p3}, Lmobi/mgeek/TunnyBrowser/ir;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 540
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06ac

    new-instance v3, Lmobi/mgeek/TunnyBrowser/iz;

    invoke-direct {v3, p0}, Lmobi/mgeek/TunnyBrowser/iz;-><init>(Lmobi/mgeek/TunnyBrowser/is;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e06aa

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    invoke-virtual {v1, p3}, Lmobi/mgeek/TunnyBrowser/ir;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 560
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02ab

    new-instance v3, Lmobi/mgeek/TunnyBrowser/ja;

    invoke-direct {v3, p0}, Lmobi/mgeek/TunnyBrowser/ja;-><init>(Lmobi/mgeek/TunnyBrowser/is;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02a9

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/ir;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/is;->j:Lmobi/mgeek/TunnyBrowser/ir;

    .line 580
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/is;->notifyDataSetChanged()V

    goto :goto_0
.end method
