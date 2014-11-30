.class public abstract Lcom/dolphin/browser/launcher/bk;
.super Lcom/dolphin/browser/launcher/DragLayer;
.source "LauncherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/dolphin/browser/launcher/w;


# instance fields
.field private a:I

.field protected e:Lcom/dolphin/browser/launcher/Workspace;

.field protected f:I

.field protected g:Lcom/dolphin/browser/launcher/DropTargetBar;

.field protected h:Lcom/dolphin/browser/launcher/DropTargetBar;

.field protected i:Z

.field protected j:Z

.field protected k:Landroid/view/LayoutInflater;

.field private l:Landroid/os/Handler;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/DragLayer;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    .line 64
    sget v0, Lcom/dolphin/browser/launcher/R$layout;->launcher:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/bk;->b(I)V

    .line 65
    return-void
.end method

.method private a(Ljava/util/List;ILjava/lang/Runnable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 185
    instance-of v2, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v2, :cond_1

    .line 186
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 187
    iget-object v2, v0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 193
    invoke-static {p1, v0, p2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/List;II)V

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 196
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    :cond_4
    new-instance v0, Lcom/dolphin/browser/launcher/bs;

    invoke-direct {v0, p0, v1, p3}, Lcom/dolphin/browser/launcher/bs;-><init>(Lcom/dolphin/browser/launcher/bk;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/bk;->m:I

    new-instance v2, Lcom/dolphin/browser/launcher/bm;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/launcher/bm;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/f;->a(ILcom/dolphin/browser/launcher/s;)V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bk;->a()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/bk;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 284
    instance-of v1, p1, Lcom/dolphin/browser/launcher/bh;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    check-cast p1, Lcom/dolphin/browser/launcher/bh;

    invoke-interface {p1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->f()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/bk;->m:I

    new-instance v2, Lcom/dolphin/browser/launcher/bp;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/launcher/bp;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/f;->b(ILcom/dolphin/browser/launcher/s;)V

    .line 159
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->v()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->f:I

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->k:Landroid/view/LayoutInflater;

    .line 71
    new-instance v0, Lcom/dolphin/browser/launcher/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/v;-><init>(Lcom/dolphin/browser/launcher/DragLayer;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/w;)V

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->x()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/cl;->b(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->l:Landroid/os/Handler;

    .line 76
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;->c(I)V

    .line 77
    return-void
.end method

.method private b(Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p1, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    .line 350
    iget-boolean v0, v0, Lcom/dolphin/browser/launcher/be;->a:Z

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->o()V

    .line 354
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/FolderIcon;)V

    .line 356
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bk;->b()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/bk;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget v0, p0, Lcom/dolphin/browser/launcher/bk;->n:I

    iget v1, p0, Lcom/dolphin/browser/launcher/bk;->n:I

    new-instance v2, Lcom/dolphin/browser/launcher/bn;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/launcher/bn;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/dolphin/browser/launcher/bk;->a(Ljava/util/List;ILjava/lang/Runnable;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->n:I

    .line 144
    return-void
.end method

.method private b(Lcom/dolphin/browser/launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    .line 81
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    sget v0, Lcom/dolphin/browser/launcher/R$id;->workspace:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/Workspace;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/v;)V

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/w;)V

    .line 90
    sget v0, Lcom/dolphin/browser/launcher/R$id;->top_container:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/DropTargetBar;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    .line 91
    sget v0, Lcom/dolphin/browser/launcher/R$id;->bottom_container:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/DropTargetBar;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/v;)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/v;)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Z)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ae;)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->b(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->a(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ai;)V

    .line 108
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 110
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_normal_countY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->m:I

    .line 112
    iput v3, p0, Lcom/dolphin/browser/launcher/bk;->n:I

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->l:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/launcher/bl;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/bl;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lcom/dolphin/browser/launcher/bk;->n:I

    new-instance v1, Lcom/dolphin/browser/launcher/bq;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/bq;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Ljava/util/List;ILjava/lang/Runnable;)I

    .line 173
    return-void
.end method


# virtual methods
.method a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;
    .locals 4

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    instance-of v1, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 241
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->k:Landroid/view/LayoutInflater;

    sget v2, Lcom/dolphin/browser/launcher/R$layout;->shortcut_icon:I

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(Landroid/view/LayoutInflater;ILcom/dolphin/browser/launcher/cl;)Lcom/dolphin/browser/launcher/ShortcutIcon;

    move-result-object v1

    .line 243
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/cl;)V

    move-object v0, v1

    .line 247
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    new-instance v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    iget v2, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-direct {v1, v2}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;-><init>(I)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_1
    return-object v0

    .line 244
    :cond_2
    instance-of v1, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->k:Landroid/view/LayoutInflater;

    sget v2, Lcom/dolphin/browser/launcher/R$layout;->folder_icon:I

    sget v3, Lcom/dolphin/browser/launcher/R$layout;->folder:I

    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/launcher/be;

    invoke-static {v1, v2, v3, v0, p0}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Landroid/view/LayoutInflater;IILcom/dolphin/browser/launcher/be;Lcom/dolphin/browser/launcher/bk;)Lcom/dolphin/browser/launcher/FolderIcon;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/launcher/CellLayout;II)Lcom/dolphin/browser/launcher/FolderIcon;
    .locals 5

    .prologue
    .line 453
    new-instance v1, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/launcher/R$string;->default_folder_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    iput-object v0, v1, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    .line 457
    iput p2, v1, Lcom/dolphin/browser/launcher/be;->h:I

    .line 458
    iput p3, v1, Lcom/dolphin/browser/launcher/be;->i:I

    .line 459
    invoke-virtual {p1, p2, p3}, Lcom/dolphin/browser/launcher/CellLayout;->a(II)I

    move-result v0

    iput v0, v1, Lcom/dolphin/browser/launcher/be;->j:I

    .line 462
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    const-wide/16 v2, -0x64

    iget v4, v1, Lcom/dolphin/browser/launcher/be;->j:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/launcher/f;->c(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 465
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/FolderIcon;

    .line 466
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    .line 467
    return-object v0
.end method

.method public a(J)Lcom/dolphin/browser/launcher/bi;
    .locals 1

    .prologue
    .line 622
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v0, v0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/launcher/bv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public abstract a(ILjava/lang/String;Lcom/dolphin/browser/launcher/bw;)V
.end method

.method a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V
    .locals 4

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 224
    iget v2, p2, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v2, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    .line 225
    invoke-virtual {p2}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;ILcom/dolphin/browser/launcher/CellLayout$LayoutParams;Z)Z

    .line 226
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->c()V

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->g()Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/be;->a:Z

    .line 384
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->j()V

    .line 385
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p1, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    .line 389
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/Folder;)V

    .line 390
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ShortcutIcon;Lcom/dolphin/browser/launcher/cl;)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/be;)V
    .locals 4

    .prologue
    .line 582
    iget-boolean v0, p1, Lcom/dolphin/browser/launcher/be;->a:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->o()V

    .line 585
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v1

    .line 586
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 594
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v0

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/dolphin/browser/launcher/be;->a(Ljava/util/List;)V

    .line 596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 597
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    goto :goto_0

    .line 599
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    .line 603
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 604
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 605
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 607
    :cond_0
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/cl;)V
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v2

    iget-object v2, v2, Lcom/dolphin/browser/launcher/f;->e:Lcom/dolphin/browser/launcher/bw;

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/launcher/bk;->a(ILjava/lang/String;Lcom/dolphin/browser/launcher/bw;)V

    .line 546
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/be;)V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 317
    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Folder;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Folder;->c()V

    .line 329
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->o()V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 500
    if-eqz p2, :cond_0

    .line 501
    const-wide/16 v3, -0x64

    iput-wide v3, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 502
    new-instance v0, Lcom/dolphin/browser/launcher/bt;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/bt;-><init>(Lcom/dolphin/browser/launcher/bk;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 510
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/dolphin/browser/launcher/bk;->c:[I

    aget v1, v3, v1

    iput v1, p1, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 512
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->c:[I

    aget v1, v1, v2

    iput v1, p1, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 513
    iput v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v1

    .line 519
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v3

    .line 520
    iget-wide v4, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/dolphin/browser/launcher/f;->c(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 521
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 522
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 523
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 525
    iget-wide v5, v0, Lcom/dolphin/browser/launcher/cl;->f:J

    iget v7, v0, Lcom/dolphin/browser/launcher/cl;->j:I

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/dolphin/browser/launcher/f;->c(Lcom/dolphin/browser/launcher/bi;JI)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 539
    :goto_1
    return v0

    .line 528
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v0

    .line 529
    new-instance v3, Lcom/dolphin/browser/launcher/bu;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/dolphin/browser/launcher/bu;-><init>(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/bi;Landroid/view/View;)V

    invoke-static {v3}, Lcom/dolphin/browser/util/df;->b(Ljava/lang/Runnable;)V

    move v0, v2

    .line 539
    goto :goto_1
.end method

.method public b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;
    .locals 1

    .prologue
    .line 618
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p1, Lcom/dolphin/browser/launcher/Folder;->b:Lcom/dolphin/browser/launcher/be;

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/be;->a:Z

    .line 399
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/bk;->addView(Landroid/view/View;I)V

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ai;)V

    .line 402
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/Folder;->h()V

    .line 404
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/be;)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 549
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_1

    .line 550
    check-cast p1, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/be;)V

    .line 554
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->i()V

    .line 555
    return-void

    .line 551
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 552
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_0
.end method

.method b(Lcom/dolphin/browser/launcher/cl;)V
    .locals 4

    .prologue
    .line 562
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 563
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/cl;->f:J

    .line 564
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 566
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/bk;->a(J)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    .line 567
    instance-of v1, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_0

    .line 568
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/be;->b(Lcom/dolphin/browser/launcher/cl;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/Folder;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 448
    iget-object v1, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/DropTargetBar;->setVisibility(I)V

    .line 450
    :cond_1
    return-void

    .line 448
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public abstract c(Lcom/dolphin/browser/launcher/cl;)V
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Landroid/view/View;)V

    .line 474
    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/DropTargetBar;->a(Landroid/view/View;)V

    .line 480
    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method i()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->n()V

    .line 235
    :cond_0
    return-void
.end method

.method l()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/bk;->i:Z

    return v0
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public n()Lcom/dolphin/browser/launcher/Workspace;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/Folder;)V

    .line 364
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 269
    instance-of v0, v1, Lcom/dolphin/browser/launcher/bi;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bi;)V

    .line 272
    :cond_0
    instance-of v0, v1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 273
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->g()J

    move-result-wide v2

    const-wide/16 v4, -0x4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->w()V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    check-cast p1, Lcom/dolphin/browser/launcher/ShortcutIcon;

    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p0, p1, v1}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/ShortcutIcon;Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_0

    .line 278
    :cond_3
    instance-of v0, v1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_1

    .line 279
    check-cast p1, Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/FolderIcon;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/v;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->e:Lcom/dolphin/browser/launcher/Workspace;

    check-cast p1, Lcom/dolphin/browser/launcher/bh;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bh;)V

    .line 263
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 427
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/DragLayer;->onMeasure(II)V

    .line 428
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    move v2, v1

    .line 429
    :goto_0
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    if-eq v4, v0, :cond_1

    .line 430
    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    .line 431
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/bk;->b(Z)V

    .line 432
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/DragLayer;->onMeasure(II)V

    .line 440
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 428
    goto :goto_0

    .line 433
    :cond_1
    if-nez v2, :cond_2

    iget v4, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    if-eq v4, v1, :cond_2

    .line 434
    iput v1, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    .line 435
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/launcher/bk;->b(Z)V

    .line 436
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/DragLayer;->onMeasure(II)V

    goto :goto_1

    .line 438
    :cond_2
    if-eqz v2, :cond_3

    :goto_2
    iput v0, p0, Lcom/dolphin/browser/launcher/bk;->a:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method p()Lcom/dolphin/browser/launcher/Folder;
    .locals 4

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->getChildCount()I

    move-result v2

    .line 368
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 369
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/bk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    instance-of v3, v0, Lcom/dolphin/browser/launcher/Folder;

    if-eqz v3, :cond_0

    .line 371
    check-cast v0, Lcom/dolphin/browser/launcher/Folder;

    .line 372
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->g()Lcom/dolphin/browser/launcher/be;

    move-result-object v3

    iget-boolean v3, v3, Lcom/dolphin/browser/launcher/be;->a:Z

    if-eqz v3, :cond_0

    .line 376
    :goto_1
    return-object v0

    .line 368
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method q()Lcom/dolphin/browser/launcher/v;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bk;->b:Lcom/dolphin/browser/launcher/v;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->o()V

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/bk;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public abstract w()V
.end method

.method protected abstract x()Landroid/graphics/Bitmap;
.end method

.method protected abstract y()Landroid/graphics/Bitmap;
.end method

.method protected abstract z()Landroid/graphics/drawable/Drawable;
.end method
