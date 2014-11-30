.class public Lcom/dolphin/browser/ui/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# static fields
.field public static final NUM_TYPES:I = 0x3

.field public static final TYPE_DIALOG:I = 0x2

.field public static final TYPE_EXPANDED:I = 0x1

.field public static final TYPE_ICON:I

.field static final a:[I

.field static final b:[I

.field static final c:[I

.field private static final g:[I


# instance fields
.field d:Ljava/lang/CharSequence;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/view/View;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/res/Resources;

.field private j:Z

.field private k:Z

.field private l:Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/ui/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Landroid/view/ContextMenu$ContextMenuInfo;

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private final t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v5, [I

    sget v1, Lcom/dolphin/browser/core/R$style;->Theme_IconMenu:I

    aput v1, v0, v2

    sget v1, Lcom/dolphin/browser/core/R$style;->Theme_ExpandedMenu:I

    aput v1, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a:[I

    .line 69
    new-array v0, v5, [I

    sget v1, Lcom/dolphin/browser/core/R$layout;->icon_menu_layout:I

    aput v1, v0, v2

    sget v1, Lcom/dolphin/browser/core/R$layout;->expanded_menu_layout:I

    aput v1, v0, v3

    aput v2, v0, v4

    sput-object v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b:[I

    .line 76
    new-array v0, v5, [I

    sget v1, Lcom/dolphin/browser/core/R$layout;->icon_menu_item_layout:I

    aput v1, v0, v2

    sget v1, Lcom/dolphin/browser/core/R$layout;->list_menu_item_layout:I

    aput v1, v0, v3

    sget v1, Lcom/dolphin/browser/core/R$layout;->list_menu_item_layout:I

    aput v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->c:[I

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->r:Z

    .line 173
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->s:Z

    .line 290
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    .line 292
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->h:Landroid/content/Context;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->n:Ljava/util/ArrayList;

    .line 298
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    .line 300
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->k:Z

    .line 302
    return-void

    :cond_0
    move v0, v1

    .line 300
    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/ui/menu/e;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 761
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 762
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->b()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 763
    add-int/lit8 v0, v1, 0x1

    .line 767
    :goto_1
    return v0

    .line 760
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7

    .prologue
    .line 385
    invoke-static {p3}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(I)I

    move-result v5

    .line 387
    new-instance v0, Lcom/dolphin/browser/ui/menu/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/ui/menu/e;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->p:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->p:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 397
    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b()Landroid/content/res/Resources;

    move-result-object v0

    .line 989
    if-eqz p5, :cond_0

    .line 990
    iput-object p5, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->f:Landroid/view/View;

    .line 993
    iput-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d:Ljava/lang/CharSequence;

    .line 994
    iput-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->e:Landroid/graphics/drawable/Drawable;

    .line 1013
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 1014
    return-void

    .line 996
    :cond_0
    if-lez p1, :cond_3

    .line 997
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d:Ljava/lang/CharSequence;

    .line 1002
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1003
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->e:Landroid/graphics/drawable/Drawable;

    .line 1009
    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->f:Landroid/view/View;

    goto :goto_0

    .line 998
    :cond_3
    if-eqz p2, :cond_1

    .line 999
    iput-object p2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1004
    :cond_4
    if-eqz p4, :cond_2

    .line 1005
    iput-object p4, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 1

    .prologue
    .line 496
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    if-eqz p2, :cond_0

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 710
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 712
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-direct {v1, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ZZ)V

    .line 716
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/ui/menu/e;->a(ZZ)V

    .line 709
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 718
    :cond_1
    return-void
.end method

.method private static b(I)I
    .locals 2

    .prologue
    .line 687
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 689
    if-ltz v0, :cond_0

    sget-object v1, Lcom/dolphin/browser/ui/menu/MenuBuilder;->g:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order does not contain a valid category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    sget-object v1, Lcom/dolphin/browser/ui/menu/MenuBuilder;->g:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->q:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->r:Z

    if-nez v0, :cond_2

    .line 932
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    if-nez v0, :cond_0

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    .line 937
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_2

    .line 938
    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/f;

    .line 940
    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/menu/f;->a(Z)V

    .line 937
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 944
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/menu/MenuBuilder;)I
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    .line 345
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 358
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->c()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    return v0
.end method


# virtual methods
.method a(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    new-instance v1, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V

    aput-object v1, v0, p1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a(ILandroid/view/KeyEvent;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/menu/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x43

    const/4 v4, 0x0

    .line 793
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v5

    .line 794
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 795
    new-instance v7, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v7}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 797
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    .line 799
    if-nez v0, :cond_0

    if-eq p1, v11, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    .line 803
    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v4

    .line 806
    :goto_1
    if-ge v3, v8, :cond_5

    .line 807
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 808
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v1

    .line 811
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 813
    :cond_1
    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getAlphabeticShortcut()C

    move-result v1

    .line 814
    :goto_2
    and-int/lit8 v9, v6, 0x5

    if-nez v9, :cond_3

    if-eqz v1, :cond_3

    iget-object v9, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v4

    if-eq v1, v9, :cond_2

    iget-object v9, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v1, v9, :cond_2

    if-eqz v5, :cond_3

    const/16 v9, 0x8

    if-ne v1, v9, :cond_3

    if-ne p1, v11, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 821
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 813
    :cond_4
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getNumericShortcut()C

    move-result v1

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 824
    goto :goto_0
.end method

.method a(Landroid/view/MenuItem;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 529
    :goto_0
    if-ge v3, v5, :cond_3

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 531
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->b(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 543
    :cond_3
    return-void
.end method

.method a(Lcom/dolphin/browser/ui/menu/e;)V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 953
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_0

    .line 916
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;->onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V

    .line 918
    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->j:Z

    return v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 9

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 439
    const/4 v0, 0x0

    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 441
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 443
    :goto_0
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->removeGroup(I)V

    .line 447
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 448
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 449
    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_3

    move-object v1, p6

    :goto_2
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 451
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 457
    if-eqz p8, :cond_1

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_1

    .line 458
    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    .line 447
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 441
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 449
    :cond_3
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2

    .line 462
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 426
    new-instance v1, Lcom/dolphin/browser/ui/menu/h;

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->h:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/dolphin/browser/ui/menu/h;-><init>(Landroid/content/Context;Lcom/dolphin/browser/ui/menu/MenuBuilder;Lcom/dolphin/browser/ui/menu/e;)V

    .line 427
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(Lcom/dolphin/browser/ui/menu/h;)V

    .line 429
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    return-object v0
.end method

.method b(ILandroid/view/KeyEvent;)Lcom/dolphin/browser/ui/menu/e;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 840
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v0

    .line 842
    if-nez v0, :cond_1

    move-object v0, v2

    .line 870
    :cond_0
    :goto_0
    return-object v0

    .line 846
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 847
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 849
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 852
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 853
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v5

    .line 859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 860
    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getAlphabeticShortcut()C

    move-result v1

    .line 861
    :goto_1
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v9

    if-ne v1, v7, :cond_4

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_0

    :cond_4
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v1, v7, :cond_5

    and-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_0

    :cond_5
    if-eqz v5, :cond_3

    const/16 v7, 0x8

    if-ne v1, v7, :cond_3

    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 860
    :cond_6
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getNumericShortcut()C

    move-result v1

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 870
    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->s:Z

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 523
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 512
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->r:Z

    .line 513
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->clear()V

    .line 514
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->clearHeader()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->r:Z

    .line 516
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 517
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->e:Landroid/graphics/drawable/Drawable;

    .line 979
    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d:Ljava/lang/CharSequence;

    .line 980
    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->f:Landroid/view/View;

    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 983
    return-void
.end method

.method public clearMenuViews()V
    .locals 3

    .prologue
    .line 366
    const/4 v0, 0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 367
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 366
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 374
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/menu/h;->clearMenuViews()V

    .line 377
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->g()V

    .line 372
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 379
    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Z)V

    .line 923
    return-void
.end method

.method public findGroupIndex(I)I
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 3

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->size()I

    move-result v2

    .line 640
    if-gez p2, :cond_0

    .line 641
    const/4 p2, 0x0

    :cond_0
    move v1, p2

    .line 644
    :goto_0
    if-ge v1, v2, :cond_2

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 647
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    .line 652
    :goto_1
    return v0

    .line 644
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->size()I

    move-result v2

    .line 604
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 605
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 606
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 617
    :cond_0
    :goto_1
    return-object v0

    .line 608
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 611
    if-nez v0, :cond_0

    .line 604
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 617
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->size()I

    move-result v2

    .line 623
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 624
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 625
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 630
    :goto_1
    return v0

    .line 623
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->l:Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->h:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->f:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getMenuAdapter(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;
    .locals 1

    .prologue
    .line 1114
    new-instance v0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V

    return-object v0
.end method

.method public getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;

    .line 339
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1093
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/ui/menu/e;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 956
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->n:Ljava/util/ArrayList;

    .line 974
    :goto_0
    return-object v0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 965
    :goto_1
    if-ge v1, v3, :cond_2

    .line 966
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 967
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    iget-object v4, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 972
    :cond_2
    iput-boolean v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->o:Z

    .line 974
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->n:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->size()I

    move-result v3

    move v2, v1

    .line 592
    :goto_0
    if-ge v2, v3, :cond_1

    .line 593
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 594
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    .line 599
    :goto_1
    return v0

    .line 592
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_1
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(ILandroid/view/KeyEvent;)Lcom/dolphin/browser/ui/menu/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->k:Z

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 879
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 881
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 901
    :goto_0
    return v0

    .line 885
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->a()Z

    move-result v3

    .line 887
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 888
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Z)V

    .line 890
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->l:Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_5

    .line 892
    iget-object v4, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->l:Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/h;

    invoke-interface {v4, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;->onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 896
    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_5

    .line 897
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Z)V

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(ILandroid/view/KeyEvent;)Lcom/dolphin/browser/ui/menu/e;

    move-result-object v1

    .line 773
    const/4 v0, 0x0

    .line 775
    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0, v1, p3}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 779
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 780
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Z)V

    .line 783
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v3

    .line 472
    if-ltz v3, :cond_1

    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v3

    move v0, v1

    .line 475
    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 477
    invoke-direct {p0, v3, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IZ)V

    move v0, v2

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 483
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IZ)V

    .line 467
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(IZ)V

    .line 509
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1144
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->q:Landroid/util/SparseArray;

    .line 1148
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    .line 1149
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1150
    aget-object v0, v3, v1

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1154
    :cond_1
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    aget-object v0, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1158
    :cond_2
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1126
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1128
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->t:[Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    .line 1129
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1130
    aget-object v0, v3, v1

    if-nez v0, :cond_1

    .line 1129
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1134
    :cond_1
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    aget-object v0, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a(Landroid/view/ViewGroup;)Lcom/dolphin/browser/ui/menu/f;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1139
    :cond_2
    const-string v0, "android:views"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1140
    return-void
.end method

.method public setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->l:Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    .line 306
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->p:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1105
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .prologue
    .line 546
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 548
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 550
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 551
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/ui/menu/e;->a(Z)V

    .line 552
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/e;->setCheckable(Z)Landroid/view/MenuItem;

    .line 548
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .prologue
    .line 579
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 581
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 583
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 584
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/e;->setEnabled(Z)Landroid/view/MenuItem;

    .line 581
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 564
    :goto_0
    if-ge v2, v4, :cond_0

    .line 565
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 566
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 567
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/e;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    const/4 v0, 0x1

    .line 564
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 573
    :cond_0
    if-eqz v1, :cond_1

    .line 574
    invoke-direct {p0, v3}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->b(Z)V

    .line 576
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected setHeaderIconInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1060
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1061
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1048
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1049
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1036
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1037
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1024
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1025
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1072
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1073
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->j:Z

    .line 671
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ZZ)V

    .line 672
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 729
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->k:Z

    if-ne v1, p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->i:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->k:Z

    .line 737
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->k:Z

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(ZZ)V

    goto :goto_0

    .line 733
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
