.class public Lcom/dolphin/browser/extensions/ay;
.super Lcom/dolphin/browser/core/a;
.source "PluginManager.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/p;
.implements Lcom/dolphin/browser/ui/u;


# instance fields
.field private a:Lcom/dolphin/browser/extensions/az;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Lcom/dolphin/browser/extensions/ba;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/dolphin/browser/core/a;-><init>()V

    .line 1276
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ay;->d:Landroid/content/Context;

    .line 1277
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ay;->e()V

    .line 1278
    return-void
.end method

.method private a([Lcom/dolphin/browser/extensions/ba;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1298
    move v1, v0

    .line 1299
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1300
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/ba;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 1299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    :cond_0
    return v1
.end method

.method private a(Landroid/view/View;II)Landroid/view/View;
    .locals 7

    .prologue
    .line 1378
    invoke-direct {p0, p2}, Lcom/dolphin/browser/extensions/ay;->b(I)I

    move-result v1

    .line 1379
    invoke-direct {p0, v1, p2}, Lcom/dolphin/browser/extensions/ay;->b(II)I

    move-result v3

    .line 1380
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 1381
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1382
    invoke-direct {p0, p3}, Lcom/dolphin/browser/extensions/ay;->c(I)Landroid/view/View;

    move-result-object p1

    .line 1384
    :cond_0
    sget v0, Lcom/dolphin/browser/core/R$id;->extensions_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1385
    iget-object v2, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$color;->dolphin_green_color:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1400
    :goto_0
    return-object p1

    .line 1393
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/ui/z;

    if-nez v0, :cond_3

    .line 1394
    invoke-direct {p0, p3}, Lcom/dolphin/browser/extensions/ay;->c(I)Landroid/view/View;

    move-result-object v6

    .line 1396
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/dolphin/browser/extensions/ba;->a(Lcom/dolphin/browser/extensions/ba;)[Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v0, v2

    .line 1397
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v6

    .line 1398
    check-cast v0, Lcom/dolphin/browser/ui/z;

    iget-object v4, p0, Lcom/dolphin/browser/extensions/ay;->b:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    aget-object v1, v5, v1

    invoke-static {v1}, Lcom/dolphin/browser/extensions/ba;->a(Lcom/dolphin/browser/extensions/ba;)[Lcom/dolphin/browser/extensions/n;

    move-result-object v1

    array-length v1, v1

    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ay;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object v1, p0

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/ui/z;->a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/extensions/n;ILjava/util/HashMap;Z)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move-object v6, p1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/ay;
    .locals 2

    .prologue
    .line 1217
    new-instance v0, Lcom/dolphin/browser/extensions/ay;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/ay;-><init>(Landroid/content/Context;)V

    .line 1218
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 1219
    return-object v0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    .line 1307
    array-length v2, v1

    .line 1308
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1309
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/dolphin/browser/extensions/ba;->c()I

    move-result v3

    sub-int/2addr p1, v3

    .line 1310
    if-gez p1, :cond_0

    .line 1311
    return v0

    .line 1308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private b(II)I
    .locals 3

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    .line 1319
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1320
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/ba;->c()I

    move-result v2

    sub-int/2addr p2, v2

    .line 1319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1322
    :cond_0
    return p2
.end method

.method private c(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 1356
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1358
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 1359
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->d:Landroid/content/Context;

    sget v1, Lcom/dolphin/browser/core/R$layout;->extension_group:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1360
    sget v0, Lcom/dolphin/browser/core/R$id;->extensions_group:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1361
    sget v1, Lcom/dolphin/browser/core/R$id;->bottom_divider:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1362
    sget v4, Lcom/dolphin/browser/core/R$drawable;->bookmark_list_bg:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1363
    sget v4, Lcom/dolphin/browser/core/R$color;->plugin_group_text_color:I

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1364
    iget-object v3, p0, Lcom/dolphin/browser/extensions/ay;->a:Lcom/dolphin/browser/extensions/az;

    if-eqz v3, :cond_0

    .line 1365
    iget-object v3, p0, Lcom/dolphin/browser/extensions/ay;->a:Lcom/dolphin/browser/extensions/az;

    invoke-interface {v3}, Lcom/dolphin/browser/extensions/az;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1367
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->a:Lcom/dolphin/browser/extensions/az;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/az;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, v2

    .line 1374
    :goto_0
    return-object v0

    .line 1372
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/ay;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->b(Landroid/content/Context;)Lcom/dolphin/browser/ui/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1281
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->g()[Lcom/dolphin/browser/extensions/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    .line 1282
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1283
    iget-object v4, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    .line 1284
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 1285
    invoke-static {v0}, Lcom/dolphin/browser/extensions/ba;->a(Lcom/dolphin/browser/extensions/ba;)[Lcom/dolphin/browser/extensions/n;

    move-result-object v6

    .line 1286
    if-nez v6, :cond_1

    .line 1284
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1289
    :cond_1
    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 1290
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1293
    :cond_2
    iput-object v3, p0, Lcom/dolphin/browser/extensions/ay;->b:Ljava/util/HashMap;

    .line 1294
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ay;->notifyDataSetChanged()V

    .line 1295
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/ay;->e()V

    .line 1415
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1434
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1435
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/az;)V
    .locals 0

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/dolphin/browser/extensions/ay;->a:Lcom/dolphin/browser/extensions/az;

    .line 1208
    return-void
.end method

.method public a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/ay;->b(I)I

    move-result v1

    .line 1237
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/extensions/ay;->b(II)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1238
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1246
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/dolphin/browser/extensions/ba;->a(Lcom/dolphin/browser/extensions/ba;)[Lcom/dolphin/browser/extensions/n;

    move-result-object v2

    .line 1247
    add-int/lit8 v1, p1, -0x1

    .line 1248
    add-int/lit8 v3, p2, -0x1

    .line 1249
    if-eq v1, v3, :cond_1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    if-gt v3, v1, :cond_1

    :cond_0
    if-ltz v1, :cond_1

    if-ltz v3, :cond_1

    array-length v4, v2

    if-lt v3, v4, :cond_2

    .line 1272
    :cond_1
    :goto_0
    return v0

    .line 1256
    :cond_2
    if-le v1, v3, :cond_4

    .line 1257
    aget-object v0, v2, v1

    .line 1258
    :goto_1
    if-le v1, v3, :cond_3

    .line 1259
    add-int/lit8 v4, v1, -0x1

    aget-object v4, v2, v4

    aput-object v4, v2, v1

    .line 1258
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1261
    :cond_3
    aput-object v0, v2, v3

    .line 1269
    :goto_2
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/al;->a([Lcom/dolphin/browser/extensions/n;)V

    .line 1270
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 1271
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ay;->notifyDataSetChanged()V

    .line 1272
    const/4 v0, 0x1

    goto :goto_0

    .line 1263
    :cond_4
    aget-object v4, v2, v1

    move v0, v1

    .line 1264
    :goto_3
    if-ge v0, v3, :cond_5

    .line 1265
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    aput-object v1, v2, v0

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1267
    :cond_5
    aput-object v4, v2, v3

    goto :goto_2
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1231
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/ba;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/dolphin/browser/extensions/ay;->b:Ljava/util/HashMap;

    .line 1425
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1426
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 1427
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/ay;->notifyDataSetChanged()V

    .line 1430
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/ay;->a([Lcom/dolphin/browser/extensions/ba;)I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1351
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/ay;->b(I)I

    move-result v0

    .line 1328
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/extensions/ay;->b(II)I

    move-result v1

    .line 1329
    if-nez v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method public getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1405
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/ay;->getItemViewType(I)I

    move-result v0

    .line 1406
    if-nez p2, :cond_0

    .line 1407
    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/ay;->c(I)Landroid/view/View;

    move-result-object p2

    .line 1409
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/dolphin/browser/extensions/ay;->a(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/dolphin/browser/extensions/ay;->c:[Lcom/dolphin/browser/extensions/ba;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
