.class Landroid/view/a;
.super Landroid/widget/FrameLayout;
.source "CustomMenuActivity.java"


# instance fields
.field final synthetic a:Landroid/view/CustomMenuActivity;

.field private b:Landroid/view/g;


# direct methods
.method public constructor <init>(Landroid/view/CustomMenuActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1580
    iput-object p1, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    .line 1581
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1582
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Landroid/view/a;->setId(I)V

    .line 1583
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1626
    invoke-virtual {p0}, Landroid/view/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1627
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1628
    invoke-virtual {p0, v1}, Landroid/view/a;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1629
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1630
    sub-int v1, v0, v1

    sub-int/2addr v1, p1

    .line 1631
    iget-object v2, p0, Landroid/view/a;->b:Landroid/view/g;

    if-eqz v2, :cond_0

    .line 1632
    iget-object v2, p0, Landroid/view/a;->b:Landroid/view/g;

    div-int/lit8 v0, v0, 0x3

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/g;->a(Z)V

    .line 1634
    :cond_0
    return-void

    .line 1632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/a;Landroid/view/g;)V
    .locals 0

    .prologue
    .line 1574
    invoke-direct {p0, p1}, Landroid/view/a;->a(Landroid/view/g;)V

    return-void
.end method

.method private a(Landroid/view/g;)V
    .locals 0

    .prologue
    .line 1612
    iput-object p1, p0, Landroid/view/a;->b:Landroid/view/g;

    .line 1613
    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .prologue
    .line 1606
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 1618
    if-eqz p1, :cond_0

    .line 1619
    sub-int v0, p5, p3

    invoke-direct {p0, v0}, Landroid/view/a;->a(I)V

    .line 1621
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1622
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1588
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1589
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    new-instance v1, Lcom/dolphin/browser/ui/menu/a;

    invoke-virtual {p0}, Landroid/view/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/ui/menu/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/a;)Lcom/dolphin/browser/ui/menu/a;

    .line 1590
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    iget-object v1, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    iget-object v1, v1, Landroid/view/CustomMenuActivity;->a:Landroid/view/b;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/a;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 1595
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    iget-object v1, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/dolphin/browser/ui/menu/a;->a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;Lcom/dolphin/browser/ui/menu/d;)Lcom/dolphin/browser/ui/menu/d;

    .line 1596
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->e(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1600
    :goto_1
    return v0

    .line 1592
    :cond_0
    iget-object v0, p0, Landroid/view/a;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/a;->clearAll()V

    goto :goto_0

    .line 1596
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1597
    :catch_0
    move-exception v0

    .line 1598
    const-string v1, "CustomMenuActivity"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method
