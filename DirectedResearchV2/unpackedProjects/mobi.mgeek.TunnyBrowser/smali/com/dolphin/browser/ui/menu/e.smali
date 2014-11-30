.class public final Lcom/dolphin/browser/ui/menu/e;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private final l:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/menu/g;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private n:Lcom/dolphin/browser/ui/menu/h;

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private q:I

.field private r:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->k:I

    .line 60
    const/16 v0, 0x10

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 99
    sget-object v0, Lcom/dolphin/browser/ui/menu/e;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->prepend_shortcut_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/menu/e;->s:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->menu_enter_shortcut_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/menu/e;->t:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->menu_delete_shortcut_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/menu/e;->u:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$string;->menu_space_shortcut_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/menu/e;->v:Ljava/lang/String;

    .line 111
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 113
    iput p3, p0, Lcom/dolphin/browser/ui/menu/e;->a:I

    .line 114
    iput p2, p0, Lcom/dolphin/browser/ui/menu/e;->b:I

    .line 115
    iput p4, p0, Lcom/dolphin/browser/ui/menu/e;->c:I

    .line 116
    iput p5, p0, Lcom/dolphin/browser/ui/menu/e;->d:I

    .line 117
    iput-object p6, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    .line 118
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 486
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->a(Landroid/graphics/drawable/Drawable;)V

    .line 484
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 490
    :cond_1
    return-void
.end method

.method private b(ILandroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/g;
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/e;->a(I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/ui/menu/MenuBuilder;->c:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 618
    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    .line 619
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/ui/menu/g;->a(Lcom/dolphin/browser/ui/menu/e;I)V

    .line 620
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 621
    sget v2, Lcom/dolphin/browser/core/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 622
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 623
    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget v3, Lcom/dolphin/browser/core/R$color;->dialog_list_item_text_color:I

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 626
    :cond_0
    return-object v0
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(ZZ)V

    .line 326
    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 494
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/menu/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 499
    :goto_1
    return v0

    .line 493
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(I)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/ui/menu/e;->b(ILandroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/g;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method a(Lcom/dolphin/browser/ui/menu/g;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/ui/menu/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/e;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/e;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->r:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 642
    return-void
.end method

.method a(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    instance-of v0, v0, Landroid/view/SubMenu;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to add a sub-menu to a sub-menu."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->n:Lcom/dolphin/browser/ui/menu/h;

    .line 370
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/e;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/h;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 371
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 525
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(ZZ)V
    .locals 4

    .prologue
    .line 340
    if-eqz p2, :cond_1

    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    move v3, v0

    .line 343
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 345
    :goto_1
    const/4 v0, 0x2

    move v2, v0

    :goto_2
    if-ltz v2, :cond_3

    .line 346
    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, v1, v3}, Lcom/dolphin/browser/ui/menu/g;->a(ZC)V

    .line 345
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 340
    :cond_1
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    move v3, v0

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 350
    :cond_3
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->o:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->o:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->g:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/e;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "MenuItemImpl"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->d:I

    return v0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 550
    iget v2, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 551
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 552
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    if-eq v2, v0, :cond_2

    .line 553
    :goto_1
    if-ltz v1, :cond_2

    .line 554
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->c(Z)V

    .line 553
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 663
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()C
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    goto :goto_0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 576
    iget v2, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 577
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 578
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 577
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/e;->c()C

    move-result v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    const-string v0, ""

    .line 307
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/dolphin/browser/ui/menu/e;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    sparse-switch v0, :sswitch_data_0

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :sswitch_0
    sget-object v0, Lcom/dolphin/browser/ui/menu/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :sswitch_1
    sget-object v0, Lcom/dolphin/browser/ui/menu/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    :sswitch_2
    sget-object v0, Lcom/dolphin/browser/ui/menu/e;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method e()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/e;->c()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 630
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 224
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->j:Landroid/graphics/drawable/Drawable;

    .line 456
    :goto_0
    return-object v0

    .line 452
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->k:I

    if-eqz v0, :cond_1

    .line 453
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/ui/menu/e;->k:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->r:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 242
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->n:Lcom/dolphin/browser/ui/menu/h;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->f:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->n:Lcom/dolphin/browser/ui/menu/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 504
    iget v1, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 229
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    if-ne v0, p1, :cond_0

    .line 237
    :goto_0
    return-object p0

    .line 233
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    .line 235
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/e;->h()V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 509
    iget v1, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 510
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v2, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 511
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    if-eq v1, v0, :cond_2

    .line 512
    const/4 v0, 0x2

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 513
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->b(Z)V

    .line 512
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    :cond_2
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Landroid/view/MenuItem;)V

    .line 546
    :goto_0
    return-object p0

    .line 543
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/e;->b(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    .line 171
    :goto_0
    const/4 v0, 0x2

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 174
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->setEnabled(Z)V

    .line 171
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 168
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->q:I

    goto :goto_0

    .line 179
    :cond_2
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->j:Landroid/graphics/drawable/Drawable;

    .line 471
    iput p1, p0, Lcom/dolphin/browser/ui/menu/e;->k:I

    .line 474
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    :cond_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 480
    :cond_1
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/e;->k:I

    .line 462
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->j:Landroid/graphics/drawable/Drawable;

    .line 463
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/menu/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 465
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->g:Landroid/content/Intent;

    .line 210
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 247
    iget-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    if-ne v0, p1, :cond_0

    .line 255
    :goto_0
    return-object p0

    .line 251
    :cond_0
    iput-char p1, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    .line 253
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/e;->h()V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 596
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 260
    iput-char p1, p0, Lcom/dolphin/browser/ui/menu/e;->h:C

    .line 261
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/dolphin/browser/ui/menu/e;->i:C

    .line 263
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/e;->h()V

    .line 265
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/e;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 394
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    .line 396
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 399
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    .line 404
    invoke-interface {v0}, Lcom/dolphin/browser/ui/menu/g;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/e;->f:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 405
    :cond_2
    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->n:Lcom/dolphin/browser/ui/menu/h;

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->n:Lcom/dolphin/browser/ui/menu/h;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/h;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 413
    :cond_4
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->f:Ljava/lang/CharSequence;

    .line 431
    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    .line 435
    :cond_0
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 437
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/menu/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->l:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/g;->a(Ljava/lang/CharSequence;)V

    .line 435
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 442
    :cond_2
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/e;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->m:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Lcom/dolphin/browser/ui/menu/e;)V

    .line 590
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/e;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
