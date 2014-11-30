.class public Landroid/view/CustomMenuActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "CustomMenuActivity.java"

# interfaces
.implements Landroid/view/g;
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# instance fields
.field a:Landroid/view/b;

.field private b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

.field private c:Landroid/view/CustomMenuActivity$PanelFeatureState;

.field private d:I

.field private e:Z

.field private f:Lcom/dolphin/browser/ui/menu/a;

.field private g:Lcom/dolphin/browser/ui/menu/d;

.field private h:Landroid/view/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 803
    new-instance v0, Landroid/view/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Landroid/view/b;-><init>(Landroid/view/CustomMenuActivity;I)V

    iput-object v0, p0, Landroid/view/CustomMenuActivity;->a:Landroid/view/b;

    .line 1574
    return-void
.end method

.method private a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/CustomMenuActivity;->a(IZLandroid/view/CustomMenuActivity$PanelFeatureState;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(IZLandroid/view/CustomMenuActivity$PanelFeatureState;)Landroid/view/CustomMenuActivity$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 829
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 830
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/view/CustomMenuActivity$PanelFeatureState;

    .line 831
    if-eqz v0, :cond_1

    .line 832
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    :cond_1
    iput-object v1, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-object v0, v1

    .line 837
    :cond_2
    aget-object v1, v0, p1

    .line 838
    if-nez v1, :cond_4

    .line 839
    if-eqz p3, :cond_3

    :goto_0
    aput-object p3, v0, p1

    .line 843
    :goto_1
    return-object p3

    .line 839
    :cond_3
    new-instance p3, Landroid/view/CustomMenuActivity$PanelFeatureState;

    invoke-direct {p3, p1}, Landroid/view/CustomMenuActivity$PanelFeatureState;-><init>(I)V

    goto :goto_0

    :cond_4
    move-object p3, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->f:Lcom/dolphin/browser/ui/menu/a;

    return-object v0
.end method

.method static synthetic a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/a;)Lcom/dolphin/browser/ui/menu/a;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Landroid/view/CustomMenuActivity;->f:Lcom/dolphin/browser/ui/menu/a;

    return-object p1
.end method

.method static synthetic a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/d;)Lcom/dolphin/browser/ui/menu/d;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Landroid/view/CustomMenuActivity;->g:Lcom/dolphin/browser/ui/menu/d;

    return-object p1
.end method

.method private a(ILandroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 1412
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1413
    if-nez v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    if-nez p3, :cond_3

    .line 1419
    if-nez p2, :cond_2

    .line 1420
    if-ltz p1, :cond_2

    iget-object v1, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 1421
    iget-object v1, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    aget-object p2, v1, p1

    .line 1425
    :cond_2
    if-eqz p2, :cond_3

    .line 1427
    iget-object p3, p2, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    .line 1432
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v1, :cond_0

    .line 1435
    :cond_4
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1444
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return v0

    .line 1452
    :cond_1
    iget-boolean v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->l:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p3}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    if-eqz v1, :cond_3

    .line 1454
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1457
    :cond_3
    if-eqz v0, :cond_0

    .line 1459
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 1461
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    .line 1462
    invoke-virtual {p0, p1, v2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/CustomMenuActivity;Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/view/CustomMenuActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Landroid/view/CustomMenuActivity;->e:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 728
    iget-object v1, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    .line 730
    if-nez v1, :cond_1

    .line 745
    :cond_0
    return-void

    .line 735
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 736
    aget-object v2, v1, v0

    .line 740
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Landroid/view/CustomMenuActivity$PanelFeatureState;->r:Z

    if-eqz v3, :cond_2

    .line 741
    iget-boolean v3, v2, Landroid/view/CustomMenuActivity$PanelFeatureState;->s:Z

    iput-boolean v3, v2, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    .line 742
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/view/CustomMenuActivity;->b(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 735
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private b(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x2

    .line 1242
    iget-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v0, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_2

    iget v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    invoke-interface {v0, v2, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1249
    invoke-virtual {p0, p1, v9}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 1254
    if-eqz v8, :cond_0

    .line 1259
    invoke-virtual {p0, p1, p2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    if-eqz v0, :cond_6

    .line 1264
    :cond_3
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    if-nez v0, :cond_7

    .line 1266
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuActivity;->c(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    if-eqz v0, :cond_0

    .line 1274
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuActivity;->b(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1279
    if-nez v0, :cond_5

    .line 1280
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1284
    :cond_5
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 1287
    iget v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->c:I

    .line 1292
    :goto_2
    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    iget-object v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/view/c;->setPadding(IIII)V

    .line 1297
    iget-object v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1304
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1308
    :cond_6
    iput-boolean v9, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    .line 1309
    iput-boolean v5, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 1311
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->e:I

    iget v4, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->f:I

    const/16 v5, 0x3eb

    const v6, 0x21000

    iget-object v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    iget v7, v2, Landroid/view/c;->a:I

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1318
    iget v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1319
    iget v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1320
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1322
    iget-object v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-static {v1, v0, v8}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    goto/16 :goto_0

    .line 1268
    :cond_7
    iget-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-virtual {v0}, Landroid/view/c;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1270
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-virtual {v0}, Landroid/view/c;->removeAllViews()V

    goto/16 :goto_1

    .line 1290
    :cond_8
    iget v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->b:I

    goto :goto_2
.end method

.method static synthetic b(Landroid/view/CustomMenuActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1220
    invoke-direct {p0, v2, v1}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v3

    .line 1223
    if-eqz p1, :cond_1

    iget-boolean v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1225
    :goto_0
    iput-boolean v1, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    .line 1226
    invoke-virtual {p0, v3, v2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    .line 1229
    iput-boolean v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    .line 1231
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Landroid/view/CustomMenuActivity;->b(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1232
    return-void

    :cond_0
    move v0, v2

    .line 1223
    goto :goto_0

    :cond_1
    iget-boolean v0, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    goto :goto_0
.end method

.method static synthetic c(Landroid/view/CustomMenuActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Landroid/view/CustomMenuActivity;->d:I

    return v0
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 770
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/view/CustomMenuActivity;->f:Lcom/dolphin/browser/ui/menu/a;

    .line 772
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->g:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->g:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/CustomMenuActivity;->g:Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :cond_0
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Landroid/view/CustomMenuActivity;)Landroid/view/CustomMenuActivity$PanelFeatureState;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1647
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    if-nez v0, :cond_0

    .line 1648
    new-instance v0, Landroid/view/a;

    invoke-direct {v0, p0, p0}, Landroid/view/a;-><init>(Landroid/view/CustomMenuActivity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    .line 1649
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-static {v0, p0}, Landroid/view/a;->a(Landroid/view/a;Landroid/view/g;)V

    .line 1650
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/ViewGroup;)V

    .line 1651
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1655
    :cond_0
    return-void
.end method

.method private static d(Landroid/view/CustomMenuActivity$PanelFeatureState;)V
    .locals 1

    .prologue
    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    .line 1538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    .line 1540
    iget-object v0, p0, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->clearMenuViews()V

    .line 1541
    return-void
.end method

.method static synthetic e(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/d;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->g:Lcom/dolphin/browser/ui/menu/d;

    return-object v0
.end method

.method static synthetic f(Landroid/view/CustomMenuActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)Landroid/view/CustomMenuActivity$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1109
    iget-object v3, p0, Landroid/view/CustomMenuActivity;->b:[Landroid/view/CustomMenuActivity$PanelFeatureState;

    .line 1110
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1111
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1112
    aget-object v1, v3, v2

    .line 1113
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1117
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1110
    goto :goto_0

    .line 1111
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1117
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a()Landroid/view/Window$Callback;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1168
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->closeContextMenu()V

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_1

    iget-boolean v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 1195
    :cond_0
    if-eqz p2, :cond_1

    .line 1196
    iget v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/view/CustomMenuActivity;->a(ILandroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/Menu;)V

    .line 1199
    :cond_1
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->l:Z

    .line 1200
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 1201
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    .line 1204
    iput-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    .line 1206
    iget-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    if-eqz v0, :cond_2

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->q:Z

    .line 1210
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    .line 1213
    :cond_2
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-ne v0, p1, :cond_3

    .line 1214
    iput-object v3, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    .line 1215
    iput v2, p0, Landroid/view/CustomMenuActivity;->d:I

    .line 1217
    :cond_3
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1664
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1660
    return-void
.end method

.method protected a(IILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 854
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 859
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 873
    :cond_0
    :goto_1
    return v0

    .line 854
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 861
    :sswitch_0
    if-gez p1, :cond_2

    move p1, v0

    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/view/CustomMenuActivity;->a(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 862
    goto :goto_1

    .line 865
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 866
    if-ltz p1, :cond_0

    .line 868
    invoke-virtual {v2, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v1

    .line 869
    goto :goto_1

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 883
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 885
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 887
    iput v0, p0, Landroid/view/CustomMenuActivity;->d:I

    .line 888
    iput-boolean v1, p0, Landroid/view/CustomMenuActivity;->e:Z

    .line 890
    invoke-direct {p0, p1, v3}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v0

    .line 891
    iget-boolean v2, v0, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-nez v2, :cond_2

    .line 892
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v3, :cond_0

    .line 894
    iput-boolean v3, p0, Landroid/view/CustomMenuActivity;->e:Z

    .line 896
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 914
    :goto_0
    return v0

    .line 899
    :cond_1
    iget-boolean v2, p0, Landroid/view/CustomMenuActivity;->e:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/CustomMenuActivity;->d:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 903
    iput v1, p0, Landroid/view/CustomMenuActivity;->d:I

    .line 904
    iput-boolean v1, p0, Landroid/view/CustomMenuActivity;->e:Z

    .line 905
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 907
    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 909
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_2
    move v0, v1

    .line 914
    goto :goto_0
.end method

.method protected a(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z
    .locals 1

    .prologue
    .line 1019
    new-instance v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1021
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 1022
    invoke-virtual {p1, v0}, Landroid/view/CustomMenuActivity$PanelFeatureState;->a(Landroid/view/Menu;)V

    .line 1024
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1337
    iget-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->l:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 1382
    :cond_0
    :goto_0
    return v1

    .line 1340
    :cond_1
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-eq v0, p1, :cond_2

    .line 1342
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    .line 1345
    :cond_2
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1347
    if-eqz v0, :cond_3

    .line 1348
    iget v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    .line 1351
    :cond_3
    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    if-nez v3, :cond_6

    .line 1353
    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    if-nez v3, :cond_5

    .line 1354
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    if-eqz v3, :cond_0

    .line 1358
    if-eqz v0, :cond_4

    iget v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    iget-object v4, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1360
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    goto :goto_0

    .line 1367
    :cond_5
    iget v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    iget-object v4, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    invoke-interface {v0, v3, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_1
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v2, :cond_8

    move v0, v2

    :goto_2
    iput-boolean v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->p:Z

    .line 1374
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    iget-boolean v3, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->p:Z

    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1378
    :cond_6
    iput-boolean v2, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->l:Z

    .line 1379
    iput-boolean v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 1380
    iput-object p1, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    move v1, v2

    .line 1382
    goto :goto_0

    :cond_7
    move v0, v1

    .line 1372
    goto :goto_1

    :cond_8
    move v0, v1

    .line 1373
    goto :goto_2
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1703
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->d()V

    .line 1704
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1705
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 1706
    return-void
.end method

.method public final b(ILandroid/view/KeyEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 970
    iget v2, p0, Landroid/view/CustomMenuActivity;->d:I

    if-eqz v2, :cond_0

    .line 971
    iput v1, p0, Landroid/view/CustomMenuActivity;->d:I

    .line 972
    iput-boolean v1, p0, Landroid/view/CustomMenuActivity;->e:Z

    .line 974
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v3

    .line 980
    iget-boolean v2, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-nez v2, :cond_2

    iget-boolean v2, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    if-eqz v2, :cond_3

    .line 984
    :cond_2
    iget-boolean v2, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    .line 987
    invoke-virtual {p0, v3, v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    move v0, v2

    .line 997
    :goto_1
    if-eqz v0, :cond_0

    .line 998
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1000
    if-eqz v0, :cond_4

    .line 1001
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 989
    :cond_3
    iget-boolean v2, v3, Landroid/view/CustomMenuActivity$PanelFeatureState;->l:Z

    if-eqz v2, :cond_5

    .line 992
    invoke-direct {p0, v3, p2}, Landroid/view/CustomMenuActivity;->b(Landroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1003
    :cond_4
    const-string v0, "CustomMenuActivity"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected b(IILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 924
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 925
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 927
    :goto_0
    if-eqz v2, :cond_0

    .line 928
    invoke-virtual {v2, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 933
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 960
    :cond_1
    :goto_1
    return v0

    .line 925
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 936
    :sswitch_0
    if-gez p1, :cond_3

    move p1, v0

    :cond_3
    invoke-virtual {p0, p1, p3}, Landroid/view/CustomMenuActivity;->b(ILandroid/view/KeyEvent;)V

    move v0, v1

    .line 938
    goto :goto_1

    .line 942
    :sswitch_1
    if-ltz p1, :cond_1

    .line 943
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 944
    if-nez p1, :cond_4

    .line 945
    invoke-direct {p0, p1, v0}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_4

    iget-boolean v0, v0, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    if-eqz v0, :cond_4

    .line 949
    invoke-direct {p0, v1}, Landroid/view/CustomMenuActivity;->b(Z)V

    move v0, v1

    .line 950
    goto :goto_1

    .line 953
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuActivity;->a(I)V

    move v0, v1

    .line 954
    goto :goto_1

    .line 933
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1049
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    .line 1070
    :cond_0
    :goto_0
    return v2

    .line 1054
    :cond_1
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 1055
    if-nez v0, :cond_2

    move v2, v3

    .line 1056
    goto :goto_0

    .line 1059
    :cond_2
    iget-boolean v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->o:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v4, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    invoke-virtual {v0, v1, v4}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    .line 1062
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1064
    iget-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->j:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/ui/menu/f;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/menu/f;->a()I

    move-result v0

    .line 1065
    if-eqz v0, :cond_0

    .line 1066
    iput v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->g:I

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1059
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1070
    goto :goto_0
.end method

.method protected c(Landroid/view/CustomMenuActivity$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 1393
    new-instance v0, Landroid/view/c;

    iget v1, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    invoke-direct {v0, p0, p0, v1}, Landroid/view/c;-><init>(Landroid/view/CustomMenuActivity;Landroid/content/Context;I)V

    iput-object v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->h:Landroid/view/c;

    .line 1394
    const/16 v0, 0x51

    iput v0, p1, Landroid/view/CustomMenuActivity$PanelFeatureState;->d:I

    .line 1395
    invoke-virtual {p1, p0}, Landroid/view/CustomMenuActivity$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1397
    const/4 v0, 0x1

    return v0
.end method

.method public closeContextMenu()V
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->f:Lcom/dolphin/browser/ui/menu/a;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->f:Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->close()V

    .line 1717
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->c()V

    .line 1719
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 1710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/CustomMenuActivity;->a(I)V

    .line 1711
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x1

    .line 1480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1481
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    move v2, v0

    .line 1483
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1486
    iget v1, p0, Landroid/view/CustomMenuActivity;->d:I

    if-lez v1, :cond_3

    iget v1, p0, Landroid/view/CustomMenuActivity;->d:I

    if-eq v1, v4, :cond_3

    .line 1490
    iget-object v1, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    invoke-direct {p0, v1, v4, p1, v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 1493
    if-nez v1, :cond_0

    .line 1498
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1500
    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-eqz v5, :cond_0

    .line 1501
    iget-object v5, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    iput-boolean v0, v5, Landroid/view/CustomMenuActivity$PanelFeatureState;->m:Z

    .line 1505
    :cond_0
    if-eqz v1, :cond_3

    .line 1525
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v3

    .line 1481
    goto :goto_0

    .line 1512
    :cond_3
    iget-object v1, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    iget-boolean v1, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v1, :cond_4

    .line 1513
    iget-object v1, p0, Landroid/view/CustomMenuActivity;->c:Landroid/view/CustomMenuActivity$PanelFeatureState;

    invoke-direct {p0, v1, v4, p1, v3}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1519
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v6, v1, p1}, Landroid/view/CustomMenuActivity;->a(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1521
    :goto_2
    if-nez v1, :cond_1

    .line 1525
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1519
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v6, v1, p1}, Landroid/view/CustomMenuActivity;->b(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1672
    const v0, 0x1020002

    if-ne v0, p1, :cond_0

    .line 1673
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    .line 1675
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/Menu;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0, v0, p2}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    .line 1139
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 3

    .prologue
    .line 1142
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    .line 1143
    invoke-virtual {p0, v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/Menu;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v1

    .line 1146
    if-eqz v1, :cond_0

    .line 1147
    iget v2, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    invoke-direct {p0, v2, v1, v0}, Landroid/view/CustomMenuActivity;->a(ILandroid/view/CustomMenuActivity$PanelFeatureState;Landroid/view/Menu;)V

    .line 1148
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity$PanelFeatureState;Z)V

    .line 1150
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1545
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1546
    invoke-direct {p0, v3, v3}, Landroid/view/CustomMenuActivity;->a(IZ)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v1

    .line 1547
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->k:Landroid/view/Menu;

    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 1550
    iget-boolean v2, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->n:Z

    if-eqz v2, :cond_1

    .line 1552
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1553
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1557
    invoke-static {v1}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity$PanelFeatureState;)V

    .line 1560
    invoke-direct {p0, v3}, Landroid/view/CustomMenuActivity;->b(Z)V

    .line 1563
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    invoke-static {v1}, Landroid/view/CustomMenuActivity;->d(Landroid/view/CustomMenuActivity$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1642
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1643
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->d()V

    .line 1644
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1084
    if-nez p1, :cond_0

    .line 1085
    invoke-virtual {p0, p2}, Landroid/view/CustomMenuActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1121
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/Menu;)Landroid/view/CustomMenuActivity$PanelFeatureState;

    move-result-object v1

    .line 1124
    if-eqz v1, :cond_0

    .line 1125
    iget v1, v1, Landroid/view/CustomMenuActivity$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 1128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 1164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/CustomMenuActivity;->b(Z)V

    .line 1165
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1101
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 1102
    invoke-virtual {p0, p3}, Landroid/view/CustomMenuActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1103
    if-eqz v1, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return v0

    .line 1103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1153
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    :goto_0
    return v2

    .line 1158
    :cond_0
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 1679
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->d()V

    .line 1680
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0}, Landroid/view/a;->removeAllViews()V

    .line 1681
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1682
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 1683
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1687
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->d()V

    .line 1688
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0}, Landroid/view/a;->removeAllViews()V

    .line 1689
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0, p1}, Landroid/view/a;->addView(Landroid/view/View;)V

    .line 1690
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 1691
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1695
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;->d()V

    .line 1696
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0}, Landroid/view/a;->removeAllViews()V

    .line 1697
    iget-object v0, p0, Landroid/view/CustomMenuActivity;->h:Landroid/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1698
    invoke-virtual {p0}, Landroid/view/CustomMenuActivity;->onContentChanged()V

    .line 1699
    return-void
.end method
