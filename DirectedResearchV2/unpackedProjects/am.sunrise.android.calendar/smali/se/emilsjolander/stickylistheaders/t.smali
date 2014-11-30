.class Lse/emilsjolander/stickylistheaders/t;
.super Landroid/widget/ListView;
.source "WrapperViewList.java"


# instance fields
.field private a:Lse/emilsjolander/stickylistheaders/u;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:Ljava/lang/reflect/Field;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/graphics/Rect;

    .line 26
    iput-boolean v1, p0, Lse/emilsjolander/stickylistheaders/t;->f:Z

    .line 34
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/graphics/Rect;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 39
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mSelectorPosition"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->e:Ljava/lang/reflect/Field;

    .line 40
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/t;->c()I

    move-result v0

    .line 62
    if-ltz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->a()I

    move-result v1

    .line 64
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lse/emilsjolander/stickylistheaders/s;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Lse/emilsjolander/stickylistheaders/s;

    .line 67
    iget-object v1, p0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/s;->getTop()I

    move-result v2

    iget v0, v0, Lse/emilsjolander/stickylistheaders/s;->e:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 71
    :cond_0
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 77
    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/t;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :goto_1
    return v0

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    :try_start_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 90
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->getFirstVisiblePosition()I

    move-result v2

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 166
    :goto_0
    return v2

    :cond_0
    move v0, v1

    .line 150
    :goto_1
    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 151
    invoke-virtual {p0, v0}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_2

    .line 152
    add-int/2addr v0, v2

    .line 160
    :goto_2
    iget-boolean v2, p0, Lse/emilsjolander/stickylistheaders/t;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lse/emilsjolander/stickylistheaders/t;->getPaddingTop()I

    move-result v2

    if-lez v2, :cond_1

    if-lez v0, :cond_1

    .line 161
    invoke-virtual {p0, v1}, Lse/emilsjolander/stickylistheaders/t;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v2, v0

    .line 166
    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lse/emilsjolander/stickylistheaders/t;->c:I

    .line 140
    return-void
.end method

.method a(Lse/emilsjolander/stickylistheaders/u;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/t;->a:Lse/emilsjolander/stickylistheaders/u;

    .line 111
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lse/emilsjolander/stickylistheaders/t;->b()V

    .line 96
    iget v0, p0, Lse/emilsjolander/stickylistheaders/t;->c:I

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 99
    iget v1, p0, Lse/emilsjolander/stickylistheaders/t;->c:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 101
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    :goto_0
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->a:Lse/emilsjolander/stickylistheaders/u;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/u;->a(Landroid/graphics/Canvas;)V

    .line 107
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 53
    instance-of v0, p1, Lse/emilsjolander/stickylistheaders/s;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lse/emilsjolander/stickylistheaders/s;

    iget-object p1, p1, Lse/emilsjolander/stickylistheaders/s;->a:Landroid/view/View;

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 171
    iput-boolean p1, p0, Lse/emilsjolander/stickylistheaders/t;->f:Z

    .line 172
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 173
    return-void
.end method
