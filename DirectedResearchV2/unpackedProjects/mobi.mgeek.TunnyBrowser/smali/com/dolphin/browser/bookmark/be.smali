.class public Lcom/dolphin/browser/bookmark/be;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:I

.field private f:Lcom/dolphin/browser/bookmark/bk;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const/high16 v0, 0x7f100000

    iput v0, p0, Lcom/dolphin/browser/bookmark/be;->d:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/bookmark/be;->e:I

    .line 64
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    instance-of v1, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    .line 76
    check-cast p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 78
    :cond_0
    return-object v0
.end method

.method static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    invoke-interface {p0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 401
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080439

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    .line 406
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043a

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    .line 407
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043b

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    .line 408
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08043c

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    .line 409
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080408

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    .line 410
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080409

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ContextMenu;I)V
    .locals 2

    .prologue
    .line 414
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    .line 416
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ContextMenu;Lcom/dolphin/browser/bookmark/b/c;)V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/dolphin/browser/bookmark/a/a;

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 388
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget v2, p0, Lcom/dolphin/browser/bookmark/be;->d:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;)V

    .line 390
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "keepBuiltInBookmark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080409

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 396
    :cond_2
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 397
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/be;->b(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ContextMenu;Lcom/dolphin/browser/bookmark/b/i;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/bookmark/be;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;)V

    .line 375
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 376
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/be;->b(Landroid/view/ContextMenu;)V

    .line 377
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/be;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/be;->a:J

    return-wide v0
.end method

.method private b(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 422
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 423
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/dolphin/browser/bookmark/be;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/q;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "historylongpress"

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/be;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/q;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "visitedlongpress"

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "bookmarklongpress"

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/bookmark/be;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0161

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0159

    new-instance v2, Lcom/dolphin/browser/bookmark/bf;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/bf;-><init>(Lcom/dolphin/browser/bookmark/be;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 323
    iput p1, p0, Lcom/dolphin/browser/bookmark/be;->d:I

    .line 324
    iput p2, p0, Lcom/dolphin/browser/bookmark/be;->e:I

    .line 325
    return-void
.end method

.method public a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 429
    invoke-static {p2}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    .line 430
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    instance-of v1, v0, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_2

    .line 435
    check-cast v0, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Lcom/dolphin/browser/bookmark/b/i;)V

    goto :goto_0

    .line 436
    :cond_2
    instance-of v1, v0, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, Lcom/dolphin/browser/bookmark/b/c;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Lcom/dolphin/browser/bookmark/b/c;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/bookmark/bk;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/be;->f:Lcom/dolphin/browser/bookmark/bk;

    .line 445
    return-void
.end method

.method public b()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030095

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 249
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 250
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 254
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 256
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 258
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 259
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0095

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 262
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e0518

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    new-instance v3, Lcom/dolphin/browser/bookmark/bg;

    invoke-direct {v3, p0, v0}, Lcom/dolphin/browser/bookmark/bg;-><init>(Lcom/dolphin/browser/bookmark/be;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 290
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 291
    new-instance v2, Lcom/dolphin/browser/bookmark/bh;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/bookmark/bh;-><init>(Lcom/dolphin/browser/bookmark/be;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 304
    :cond_0
    new-instance v2, Lcom/dolphin/browser/bookmark/bj;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Lcom/dolphin/browser/bookmark/bj;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 309
    new-instance v0, Lcom/dolphin/browser/bookmark/bi;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/bi;-><init>(Lcom/dolphin/browser/bookmark/be;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 319
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 320
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/16 v4, 0xd

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 94
    invoke-static {p1}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    move v0, v2

    .line 198
    :goto_0
    return v0

    :cond_0
    move-object v0, v1

    .line 99
    check-cast v0, Lcom/dolphin/browser/bookmark/b/a;

    .line 100
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/dolphin/browser/bookmark/a/a;

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    .line 102
    goto :goto_0

    :cond_2
    move-object v6, v0

    .line 105
    check-cast v6, Lcom/dolphin/browser/bookmark/a/a;

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 108
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080406

    if-ne v0, v3, :cond_4

    .line 109
    new-instance v0, Lcom/dolphin/browser/c/d;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/d;->a()Z

    .line 111
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    :cond_3
    :goto_1
    move v0, v7

    .line 198
    goto :goto_0

    .line 112
    :cond_4
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080407

    if-ne v0, v2, :cond_5

    .line 113
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "opennewtab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/dolphin/browser/c/d;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v7}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/d;->a()Z

    .line 117
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    goto :goto_1

    .line 118
    :cond_5
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080425

    if-ne v0, v2, :cond_6

    .line 119
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openbackground"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/dolphin/browser/c/d;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/d;->a()Z

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    instance-of v0, v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-nez v0, :cond_3

    .line 126
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    goto :goto_1

    .line 128
    :cond_6
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080408

    if-ne v0, v2, :cond_7

    .line 129
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->f()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_7
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08040a

    if-ne v0, v2, :cond_8

    .line 135
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addshortcuthome"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->j()Landroid/graphics/Bitmap;

    move-result-object v3

    move v4, v7

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    goto/16 :goto_1

    .line 140
    :cond_8
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08040b

    if-ne v0, v2, :cond_9

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_9
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080409

    if-ne v0, v2, :cond_a

    .line 143
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v4}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->deleteBookmark(Landroid/content/ContentResolver;J)Z

    .line 149
    invoke-static {v4}, Lcom/dolphin/browser/test/c;->b(I)V

    goto/16 :goto_1

    .line 150
    :cond_a
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08040c

    if-ne v0, v2, :cond_b

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    :cond_b
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08040d

    if-ne v0, v2, :cond_c

    .line 154
    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->copy(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 155
    :cond_c
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08040e

    if-ne v0, v2, :cond_d

    .line 156
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e030c

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 160
    :cond_d
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080439

    if-ne v0, v2, :cond_e

    .line 161
    const-string v0, "bookmark"

    const-string v2, "folderlongpress"

    const-string v3, "renamefolder"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    check-cast v1, Lcom/dolphin/browser/bookmark/b/i;

    .line 166
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/b/i;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/be;->a:J

    .line 167
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/b/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/be;->b:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/be;->b()V

    goto/16 :goto_1

    .line 169
    :cond_e
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08043a

    if-ne v0, v2, :cond_f

    .line 170
    const-string v0, "bookmark"

    const-string v2, "folderlongpress"

    const-string v3, "deletefolder"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    check-cast v1, Lcom/dolphin/browser/bookmark/b/i;

    .line 175
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/b/i;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dolphin/browser/bookmark/be;->a:J

    .line 176
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/b/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/be;->b:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/be;->a()V

    goto/16 :goto_1

    .line 178
    :cond_f
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08043b

    if-ne v0, v2, :cond_10

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 181
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    :cond_10
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08043c

    if-ne v0, v2, :cond_12

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->f:Lcom/dolphin/browser/bookmark/bk;

    if-eqz v0, :cond_11

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/be;->f:Lcom/dolphin/browser/bookmark/bk;

    invoke-interface {v0}, Lcom/dolphin/browser/bookmark/bk;->a()V

    .line 187
    :cond_11
    const-string v0, "bookmark"

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/be;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clearall"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    :cond_12
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08042d

    if-ne v0, v2, :cond_3

    .line 190
    instance-of v0, v1, Lcom/dolphin/browser/bookmark/b/h;

    if-eqz v0, :cond_3

    .line 191
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    check-cast v1, Lcom/dolphin/browser/bookmark/b/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/b/h;->c()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
