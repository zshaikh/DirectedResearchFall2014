.class public Lcom/dolphin/browser/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/dolphin/browser/launcher/af;
.implements Lcom/dolphin/browser/launcher/ai;
.implements Lcom/dolphin/browser/launcher/bg;
.implements Lcom/dolphin/browser/launcher/bj;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/view/inputmethod/InputMethodManager;

.field private D:[I

.field private E:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Lcom/dolphin/browser/launcher/v;

.field protected b:Lcom/dolphin/browser/launcher/be;

.field protected c:I

.field protected d:Lcom/dolphin/browser/launcher/CellLayout;

.field protected e:Lcom/dolphin/browser/launcher/bk;

.field protected f:I

.field protected g:Lcom/dolphin/browser/launcher/FolderIcon;

.field h:Z

.field i:Z

.field protected j:[I

.field protected k:Lcom/dolphin/browser/launcher/FolderEditText;

.field protected l:Lcom/g/a/a;

.field protected m:Landroid/view/View;

.field n:Lcom/dolphin/browser/launcher/cc;

.field o:Lcom/dolphin/browser/launcher/cc;

.field private p:Z

.field private q:I

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/dolphin/browser/launcher/cl;

.field private t:Landroid/view/View;

.field private u:[I

.field private v:Lcom/dolphin/browser/launcher/a;

.field private w:Lcom/dolphin/browser/launcher/a;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v4, p0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 72
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->p:Z

    .line 74
    iput v3, p0, Lcom/dolphin/browser/launcher/Folder;->q:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->r:Ljava/util/ArrayList;

    .line 76
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 79
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->i:Z

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    .line 82
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->v:Lcom/dolphin/browser/launcher/a;

    .line 83
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    .line 84
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    .line 85
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->y:Z

    .line 86
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->z:Z

    .line 87
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->A:Z

    .line 90
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->B:Z

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->D:[I

    .line 408
    new-instance v0, Lcom/dolphin/browser/launcher/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/aq;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->n:Lcom/dolphin/browser/launcher/cc;

    .line 464
    new-instance v0, Lcom/dolphin/browser/launcher/ar;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/ar;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->o:Lcom/dolphin/browser/launcher/cc;

    .line 661
    new-instance v0, Lcom/dolphin/browser/launcher/as;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/as;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->E:Ljava/util/Comparator;

    .line 105
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/launcher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->C:Landroid/view/inputmethod/InputMethodManager;

    .line 112
    sget v0, Lcom/dolphin/browser/launcher/R$integer;->config_folderAnimDuration:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/Folder;->c:I

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v4, v0, v3

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 116
    return-void
.end method

.method static a(Landroid/view/LayoutInflater;I)Lcom/dolphin/browser/launcher/Folder;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/Folder;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->u()V

    return-void
.end method

.method private a(II[I)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    if-nez p3, :cond_0

    .line 441
    const/4 v0, 0x2

    new-array p3, v0, [I

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->getLeft()I

    move-result v1

    aput v1, p3, v3

    .line 447
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->getTop()I

    move-result v1

    aput v1, p3, v4

    .line 448
    :goto_0
    if-eq v0, p0, :cond_1

    .line 449
    check-cast v0, Landroid/view/View;

    .line 451
    aget v1, p3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p3, v3

    .line 452
    aget v1, p3, v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p3, v4

    .line 454
    aget v1, p3, v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p3, v3

    .line 455
    aget v1, p3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p3, v4

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_1
    aget v0, p3, v3

    sub-int v0, p1, v0

    aput v0, p3, v3

    .line 460
    aget v0, p3, v4

    sub-int v0, p2, v0

    aput v0, p3, v4

    .line 461
    return-object p3
.end method

.method private c(Lcom/dolphin/browser/launcher/cl;)Landroid/view/View;
    .locals 5

    .prologue
    .line 844
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    .line 845
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 846
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 847
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 848
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 852
    :goto_1
    return-object v0

    .line 846
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private u()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    sget v1, Lcom/dolphin/browser/launcher/R$string;->default_folder_name:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setText(I)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 657
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->E:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZLjava/util/Comparator;)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 659
    return-void
.end method

.method private w()V
    .locals 6

    .prologue
    .line 706
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 712
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    move-object v1, v0

    .line 716
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v2

    .line 717
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 718
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    instance-of v0, v0, Lcom/dolphin/browser/launcher/ai;

    if-eqz v0, :cond_1

    .line 719
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->a:Lcom/dolphin/browser/launcher/v;

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    check-cast v0, Lcom/dolphin/browser/launcher/ai;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/ai;)V

    .line 722
    :cond_1
    if-eqz v1, :cond_2

    .line 723
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget v0, v0, Lcom/dolphin/browser/launcher/be;->h:I

    iput v0, v1, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 724
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget v0, v0, Lcom/dolphin/browser/launcher/be;->i:I

    iput v0, v1, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget v0, v0, Lcom/dolphin/browser/launcher/be;->j:I

    iput v0, v1, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 726
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-wide v3, v0, Lcom/dolphin/browser/launcher/be;->f:J

    iput-wide v3, v1, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 727
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-wide v3, v3, Lcom/dolphin/browser/launcher/be;->f:J

    iget-object v5, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget v5, v5, Lcom/dolphin/browser/launcher/be;->j:I

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 729
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 732
    if-eqz v1, :cond_3

    .line 733
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v0

    .line 735
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/CellLayout;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private x()V
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->d(I)Landroid/view/View;

    move-result-object v0

    .line 746
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/Folder;->d(I)Landroid/view/View;

    .line 747
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/FolderEditText;->setNextFocusDownId(I)V

    .line 749
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/FolderEditText;->setNextFocusRightId(I)V

    .line 750
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/FolderEditText;->setNextFocusLeftId(I)V

    .line 751
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/FolderEditText;->setNextFocusUpId(I)V

    .line 753
    :cond_0
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/Folder;->b(I)V

    .line 557
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->v()V

    .line 558
    return-void
.end method

.method public a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 495
    if-eqz p3, :cond_2

    .line 496
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->A:Z

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->w()V

    .line 518
    :cond_0
    :goto_0
    if-eq p1, p0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 521
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->k()V

    .line 524
    :cond_1
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->y:Z

    .line 525
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    .line 526
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->A:Z

    .line 527
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    .line 528
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    .line 529
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->i:Z

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v2, v0, v3

    .line 532
    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v2, v0, v1

    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v2, v0, v3

    .line 505
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->v()V

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/aj;)V

    .line 513
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->z:Z

    goto :goto_0

    .line 508
    :cond_3
    iput-boolean v1, p2, Lcom/dolphin/browser/launcher/aj;->k:Z

    goto :goto_1
.end method

.method a(Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 241
    return-void
.end method

.method protected a(Lcom/dolphin/browser/launcher/be;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->b()V

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->removeAllViews()V

    .line 262
    iget-object v2, p1, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->c(I)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a()I

    move-result v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/List;I)V

    .line 265
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 266
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 267
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/cl;)Z

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 271
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->x()V

    .line 272
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/bg;)V

    .line 273
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/bj;)V

    .line 275
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->u()V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setEnabled(Z)V

    .line 277
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bk;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 138
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;I)V
    .locals 3

    .prologue
    .line 801
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 805
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->i:Z

    if-eqz v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_folder_countX:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->b(I)V

    .line 810
    :cond_1
    iput p2, p1, Lcom/dolphin/browser/launcher/cl;->j:I

    .line 811
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a()I

    move-result v0

    rem-int v0, p2, v0

    iput v0, p1, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 812
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a()I

    move-result v0

    div-int v0, p2, v0

    iput v0, p1, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 813
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/cl;)Z

    .line 814
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->v()V

    .line 815
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->p()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/v;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Folder;->a:Lcom/dolphin/browser/launcher/v;

    .line 237
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcom/dolphin/browser/launcher/au;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/au;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/launcher/R$string;->default_folder_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/FolderEditText;->clearFocus()V

    .line 212
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 213
    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->B:Z

    .line 217
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;[I)V

    .line 901
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->B:Z

    return v0
.end method

.method public a(Lcom/dolphin/browser/launcher/aj;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 380
    iget v0, v0, Lcom/dolphin/browser/launcher/bi;->e:I

    .line 381
    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->m()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/dolphin/browser/launcher/cl;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v3

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 390
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    new-instance v4, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    iget v0, p1, Lcom/dolphin/browser/launcher/cl;->j:I

    invoke-direct {v4, v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;-><init>(I)V

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget v5, p1, Lcom/dolphin/browser/launcher/cl;->h:I

    iget v6, p1, Lcom/dolphin/browser/launcher/cl;->i:I

    invoke-virtual {v0, v5, v6}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 394
    :goto_0
    iget-object v5, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->g()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v3, v6, v4, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;ILcom/dolphin/browser/launcher/CellLayout$LayoutParams;Z)Z

    .line 395
    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    .line 398
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 393
    goto :goto_0
.end method

.method public b(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 881
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    if-eqz v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 883
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->b()I

    move-result v0

    if-ge v1, v0, :cond_3

    move v3, v2

    .line 884
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->a()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v3, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v4

    .line 886
    if-eqz v4, :cond_1

    .line 887
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 888
    iget-object v5, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    if-ne v0, v5, :cond_0

    if-eqz p1, :cond_1

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 883
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 894
    :cond_3
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 896
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->C:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->B:Z

    .line 190
    return-void
.end method

.method protected b(I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 561
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 562
    add-int/lit8 p1, p1, 0x1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 565
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_folder_countX:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 566
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_folder_countY:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 567
    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_folder_maxCount:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 568
    int-to-float v4, p1

    int-to-float v5, v7

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 569
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v4, v7, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 571
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 572
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->cell_width:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v2, v2, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->d()I

    move-result v2

    .line 577
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 578
    sget v4, Lcom/dolphin/browser/launcher/R$dimen;->folder_landscape_height_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 579
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move v6, v3

    .line 584
    :goto_0
    add-int/lit8 v8, v7, 0x1

    .line 585
    mul-int v3, v7, v1

    sub-int v3, v6, v3

    .line 586
    if-gez v3, :cond_2

    .line 589
    :goto_1
    div-int v3, v0, v8

    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/CellLayout;->a(IIIII)V

    .line 591
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/launcher/Folder;->setMinimumWidth(I)V

    .line 592
    return-void

    .line 581
    :cond_1
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v4, v4, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/CellLayout;->f()I

    move-result v4

    .line 582
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move v6, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public b(Lcom/dolphin/browser/launcher/aj;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 756
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 759
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    if-ne v0, v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    .line 761
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 762
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v3, v3, v7

    iput v3, v1, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 763
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v3, v3, v6

    iput v3, v1, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 764
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget v4, v1, Lcom/dolphin/browser/launcher/cl;->h:I

    iget v5, v1, Lcom/dolphin/browser/launcher/cl;->i:I

    invoke-virtual {v3, v4, v5}, Lcom/dolphin/browser/launcher/CellLayout;->a(II)I

    move-result v3

    iput v3, v1, Lcom/dolphin/browser/launcher/cl;->j:I

    .line 765
    iput-boolean v6, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 766
    iput-boolean v6, p0, Lcom/dolphin/browser/launcher/Folder;->i:Z

    .line 767
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v8, v3, v7

    .line 768
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v8, v3, v6

    .line 769
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget v4, v1, Lcom/dolphin/browser/launcher/cl;->j:I

    invoke-virtual {v3, v0, v4}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;I)V

    .line 770
    iget v1, v1, Lcom/dolphin/browser/launcher/cl;->j:I

    iput v1, v2, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    .line 771
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->g()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v1, v3, v0, v2, v6}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;ILcom/dolphin/browser/launcher/CellLayout$LayoutParams;Z)Z

    .line 772
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->v()V

    .line 773
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    new-instance v3, Lcom/dolphin/browser/launcher/at;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/launcher/at;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/ag;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iput-boolean v7, p1, Lcom/dolphin/browser/launcher/aj;->k:Z

    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/launcher/cl;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 820
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 821
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->h:Z

    .line 824
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    if-ne p1, v0, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/Folder;->c(Lcom/dolphin/browser/launcher/cl;)Landroid/view/View;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_2

    .line 827
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 829
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/launcher/Folder;->f:I

    if-ne v0, v2, :cond_3

    .line 830
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->p:Z

    .line 834
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->w()V

    .line 836
    iget v0, p0, Lcom/dolphin/browser/launcher/Folder;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 837
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->z:Z

    .line 838
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->j()V

    goto :goto_0

    .line 832
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->c(I)V

    goto :goto_1
.end method

.method public c()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->C:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->a(Z)V

    .line 195
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/Folder;->a(I)V

    .line 624
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->p()V

    .line 625
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/aj;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 403
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 404
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 406
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/dolphin/browser/launcher/aj;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->D:[I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/aj;->a([I)[I

    move-result-object v0

    .line 425
    aget v1, v0, v4

    aget v0, v0, v5

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->D:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/dolphin/browser/launcher/Folder;->a(II[I)[I

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    aget v2, v0, v4

    aget v0, v0, v5

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II[I)[I

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    aget v1, v1, v5

    if-eq v0, v1, :cond_1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->v:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->v:Lcom/dolphin/browser/launcher/a;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->n:Lcom/dolphin/browser/launcher/cc;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/a;->a(Lcom/dolphin/browser/launcher/cc;)V

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->v:Lcom/dolphin/browser/launcher/a;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/a;->a(J)V

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->u:[I

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aget v1, v1, v5

    aput v1, v0, v5

    .line 436
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-boolean v0, v0, Lcom/dolphin/browser/launcher/be;->a:Z

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public e(Lcom/dolphin/browser/launcher/aj;)V
    .locals 3

    .prologue
    .line 482
    iget-boolean v0, p1, Lcom/dolphin/browser/launcher/aj;->e:Z

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->o:Lcom/dolphin/browser/launcher/cc;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/a;->a(Lcom/dolphin/browser/launcher/cc;)V

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->w:Lcom/dolphin/browser/launcher/a;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/a;->a(J)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->v:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 487
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    return-object v0
.end method

.method public f(Lcom/dolphin/browser/launcher/aj;)Lcom/dolphin/browser/launcher/ai;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method g()Lcom/dolphin/browser/launcher/be;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    return-object v0
.end method

.method public h()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->o()V

    .line 301
    iput v3, p0, Lcom/dolphin/browser/launcher/Folder;->f:I

    .line 302
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 303
    const-string v0, "translationY"

    new-array v1, v4, [F

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->l:Lcom/g/a/a;

    .line 306
    new-instance v1, Lcom/dolphin/browser/launcher/am;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/am;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 319
    iget v1, p0, Lcom/dolphin/browser/launcher/Folder;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 320
    const/4 v1, 0x0

    invoke-static {p0, v4, v1}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 321
    invoke-static {p0}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;)V

    .line 322
    new-instance v1, Lcom/dolphin/browser/launcher/an;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/launcher/an;-><init>(Lcom/dolphin/browser/launcher/Folder;Lcom/g/a/a;)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v1, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 337
    :cond_0
    return-void
.end method

.method public j()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 340
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v0, "translationY"

    new-array v1, v4, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->l:Lcom/g/a/a;

    .line 344
    new-instance v1, Lcom/dolphin/browser/launcher/ao;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/ao;-><init>(Lcom/dolphin/browser/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/b;)V

    .line 357
    iget v1, p0, Lcom/dolphin/browser/launcher/Folder;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/g/a/a;->a(J)Lcom/g/a/a;

    .line 358
    const/4 v1, 0x0

    invoke-static {p0, v4, v1}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 359
    invoke-static {p0}, Lcom/dolphin/browser/launcher/cn;->a(Landroid/view/View;)V

    .line 360
    new-instance v1, Lcom/dolphin/browser/launcher/ap;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/launcher/ap;-><init>(Lcom/dolphin/browser/launcher/Folder;Lcom/g/a/a;)V

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/Folder;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->o()V

    .line 472
    iput-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    .line 473
    iput-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->i:Z

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->p:Z

    .line 476
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->A:Z

    .line 538
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_folder_maxCount:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-boolean v0, v0, Lcom/dolphin/browser/launcher/be;->a:Z

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ad;

    .line 609
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 610
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bk;->getHeight()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 611
    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/launcher/Folder;->measure(II)V

    .line 612
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getMeasuredWidth()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getMeasuredHeight()I

    move-result v2

    .line 615
    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->width:I

    .line 616
    iput v2, v0, Lcom/dolphin/browser/launcher/ad;->height:I

    .line 617
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/bk;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->a:I

    .line 618
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bk;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dolphin/browser/launcher/ad;->b:I

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->c()V

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 121
    sget v0, Lcom/dolphin/browser/launcher/R$id;->folder_content:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v1, v1, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 123
    sget v0, Lcom/dolphin/browser/launcher/R$id;->folder_name:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/FolderEditText;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/FolderEditText;->a(Lcom/dolphin/browser/launcher/Folder;)V

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/FolderEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setInputType(I)V

    .line 132
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->m:Landroid/view/View;

    .line 133
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->b()V

    .line 907
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->l()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 180
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v1, :cond_6

    .line 146
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->j()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v1

    if-nez v1, :cond_4

    move v4, v2

    .line 155
    :goto_1
    if-eqz v4, :cond_3

    .line 157
    new-instance v1, Lcom/dolphin/browser/launcher/cl;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/launcher/cl;-><init>(Lcom/dolphin/browser/launcher/cl;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/launcher/Workspace;->c(Landroid/view/View;)V

    .line 162
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->e:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bk;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v5

    move-object v1, p1

    check-cast v1, Lcom/dolphin/browser/launcher/bh;

    invoke-virtual {v5, v1, p0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bh;Lcom/dolphin/browser/launcher/af;)Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 163
    goto :goto_0

    :cond_4
    move v4, v3

    .line 154
    goto :goto_1

    .line 166
    :cond_5
    iput-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    .line 167
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    .line 169
    if-eqz v4, :cond_7

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->k()V

    .line 177
    :goto_2
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    .line 178
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/Folder;->A:Z

    :cond_6
    move v0, v2

    .line 180
    goto :goto_0

    .line 174
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->s:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->b(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 642
    iget v1, p0, Lcom/dolphin/browser/launcher/Folder;->q:I

    if-eq v1, v0, :cond_0

    .line 643
    iput v0, p0, Lcom/dolphin/browser/launcher/Folder;->q:I

    .line 644
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->a(I)V

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 654
    return-void

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ad;

    .line 629
    if-nez v0, :cond_0

    .line 630
    new-instance v0, Lcom/dolphin/browser/launcher/ad;

    invoke-direct {v0, v1, v1}, Lcom/dolphin/browser/launcher/ad;-><init>(II)V

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/ad;->c:Z

    .line 632
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->o()V

    .line 635
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->d:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected r()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/DragLayer;

    .line 682
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->a:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/ai;)V

    .line 686
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->clearFocus()V

    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->g:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/FolderIcon;->requestFocus()Z

    .line 689
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v3, v0, v1

    .line 690
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->j:[I

    aput v3, v0, v2

    .line 691
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->p:Z

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Folder;->c(I)V

    .line 693
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->p:Z

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 696
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->z:Z

    if-nez v0, :cond_3

    .line 697
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->w()V

    .line 702
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Folder;->z:Z

    .line 703
    return-void

    .line 698
    :cond_3
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Folder;->x:Z

    if-eqz v0, :cond_2

    .line 699
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Folder;->y:Z

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Folder;->x()V

    .line 858
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->c()V

    .line 859
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Folder;->k:Lcom/dolphin/browser/launcher/FolderEditText;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderEditText;->setEnabled(Z)V

    .line 912
    return-void
.end method
