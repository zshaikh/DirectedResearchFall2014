.class Ldolphin/webkit/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# instance fields
.field private final a:Ldolphin/webkit/WebViewClassic;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:I


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 4

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ViewManager;->e:Z

    .line 107
    iput-object p1, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    .line 108
    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    .line 114
    int-to-double v0, v0

    const-wide/high16 v2, 0x4006000000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/ViewManager;->f:I

    .line 115
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ViewManager;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method private a(Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 8

    .prologue
    const/16 v3, 0x800

    .line 126
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v4

    .line 127
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v2

    .line 128
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->a:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    .line 129
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->b:I

    invoke-virtual {v0, v5}, Ldolphin/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v5

    .line 132
    iget-object v0, p1, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    instance-of v6, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v6, :cond_1

    .line 135
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 136
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 137
    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 138
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 139
    iput v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 145
    :goto_0
    iget-object v1, p1, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p1, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p1, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    .line 151
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ldolphin/webkit/ViewManager;->e:Z

    if-eqz v1, :cond_2

    .line 225
    :cond_0
    :goto_1
    return-void

    .line 141
    :cond_1
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v4, v2, v1, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0

    .line 168
    :cond_2
    if-gt v4, v3, :cond_3

    if-le v2, v3, :cond_b

    .line 169
    :cond_3
    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    if-le v1, v5, :cond_6

    .line 171
    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    mul-int/lit16 v1, v1, 0x800

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    div-int/2addr v1, v5

    .line 177
    :goto_2
    mul-int v5, v3, v1

    iget v6, p0, Ldolphin/webkit/ViewManager;->f:I

    if-le v5, v6, :cond_4

    .line 178
    iget v1, p0, Ldolphin/webkit/ViewManager;->f:I

    int-to-float v1, v1

    .line 179
    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    if-le v3, v5, :cond_7

    .line 180
    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 181
    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    mul-int/2addr v1, v3

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    div-int/2addr v1, v5

    .line 188
    :cond_4
    :goto_3
    if-ne v3, v4, :cond_5

    if-eq v1, v2, :cond_8

    .line 191
    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    .line 174
    :cond_6
    iget v1, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    mul-int/lit16 v1, v1, 0x800

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    div-int/2addr v1, v5

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    .line 183
    :cond_7
    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 184
    iget v3, p1, Ldolphin/webkit/ViewManager$ChildView;->c:I

    mul-int/2addr v3, v1

    iget v5, p1, Ldolphin/webkit/ViewManager$ChildView;->d:I

    div-int/2addr v3, v5

    goto :goto_3

    .line 192
    :cond_8
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ldolphin/webkit/ViewManager;->e:Z

    if-eqz v1, :cond_9

    .line 195
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    .line 197
    :cond_9
    invoke-virtual {v0}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/ViewManager;->e:Z

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 210
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 211
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 215
    iget-object v1, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    new-instance v2, Ldolphin/webkit/gz;

    invoke-direct {v2, p0, v0}, Ldolphin/webkit/gz;-><init>(Ldolphin/webkit/ViewManager;Landroid/view/SurfaceView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 221
    :cond_a
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1

    :cond_b
    move v1, v2

    move v3, v4

    goto/16 :goto_2
.end method

.method static synthetic a(Ldolphin/webkit/ViewManager;Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager$ChildView;)V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ViewManager;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Ldolphin/webkit/ViewManager;->d:Z

    return p1
.end method

.method static synthetic b(Ldolphin/webkit/ViewManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Ldolphin/webkit/ViewManager;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ldolphin/webkit/ViewManager;->d:Z

    return v0
.end method


# virtual methods
.method a()Ldolphin/webkit/ViewManager$ChildView;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ldolphin/webkit/ViewManager$ChildView;

    invoke-direct {v0, p0}, Ldolphin/webkit/ViewManager$ChildView;-><init>(Ldolphin/webkit/ViewManager;)V

    return-object v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ViewManager;->e:Z

    .line 229
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 230
    invoke-direct {p0, v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/ViewManager;->e:Z

    .line 236
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 237
    invoke-direct {p0, v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 243
    invoke-direct {p0, v0}, Ldolphin/webkit/ViewManager;->a(Ldolphin/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    .line 248
    iget-boolean v0, p0, Ldolphin/webkit/ViewManager;->c:Z

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 252
    iget-object v0, v0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 254
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/ViewManager;->c:Z

    goto :goto_0
.end method

.method f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-boolean v0, p0, Ldolphin/webkit/ViewManager;->c:Z

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ViewManager$ChildView;

    .line 262
    iget-object v0, v0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_1
    iput-boolean v2, p0, Ldolphin/webkit/ViewManager;->c:Z

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    new-instance v1, Ldolphin/webkit/ha;

    invoke-direct {v1, p0}, Ldolphin/webkit/ha;-><init>(Ldolphin/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Ldolphin/webkit/ViewManager;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    new-instance v1, Ldolphin/webkit/hb;

    invoke-direct {v1, p0}, Ldolphin/webkit/hb;-><init>(Ldolphin/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method
