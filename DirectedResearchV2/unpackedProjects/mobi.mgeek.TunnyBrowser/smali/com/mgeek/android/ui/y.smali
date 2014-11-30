.class public Lcom/mgeek/android/ui/y;
.super Landroid/widget/ImageView;
.source "FullscreenButton.java"

# interfaces
.implements Lcom/mgeek/android/ui/ab;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Rect;

.field private c:I

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/graphics/Point;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;

.field private h:Lcom/mgeek/android/ui/ad;

.field private i:Lcom/mgeek/android/ui/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/mgeek/android/ui/ad;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v3, p0, Lcom/mgeek/android/ui/y;->a:Z

    .line 61
    sget-object v0, Lcom/mgeek/android/ui/ac;->b:Lcom/mgeek/android/ui/ac;

    iput-object v0, p0, Lcom/mgeek/android/ui/y;->i:Lcom/mgeek/android/ui/ac;

    .line 65
    iput p2, p0, Lcom/mgeek/android/ui/y;->c:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/y;->b:Landroid/graphics/Rect;

    .line 67
    iput-object p3, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    .line 68
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0096

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    const-string v2, "stored_position"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/mgeek/android/ui/y;->d:Landroid/content/SharedPreferences;

    .line 77
    const-string v3, "portrait_pos_x"

    invoke-static {p2, v3}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 79
    const-string v4, "portrait_pos_y"

    invoke-static {p2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 81
    const-string v5, "landscape_pos_x"

    invoke-static {p2, v5}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 83
    const-string v5, "landscape_pos_y"

    invoke-static {p2, v5}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 86
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/mgeek/android/ui/y;->e:Landroid/graphics/Point;

    .line 87
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/mgeek/android/ui/y;->f:Landroid/graphics/Point;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->a()V

    .line 93
    return-void
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 209
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Lcom/mgeek/android/ui/ad;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    sget-object v1, Lcom/mgeek/android/ui/ad;->a:Lcom/mgeek/android/ui/ad;

    if-ne p1, v1, :cond_1

    .line 104
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 106
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/y;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void

    .line 107
    :cond_1
    sget-object v1, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    if-ne p1, v1, :cond_2

    .line 108
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 110
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 111
    :cond_2
    sget-object v1, Lcom/mgeek/android/ui/ad;->d:Lcom/mgeek/android/ui/ad;

    if-ne p1, v1, :cond_3

    .line 112
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 114
    :cond_3
    sget-object v1, Lcom/mgeek/android/ui/ad;->c:Lcom/mgeek/android/ui/ad;

    if-ne p1, v1, :cond_0

    .line 115
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private i()V
    .locals 9

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    .line 181
    iget-object v1, p0, Lcom/mgeek/android/ui/y;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 182
    iget v2, p0, Lcom/mgeek/android/ui/y;->c:I

    .line 183
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v3

    .line 184
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v4

    .line 185
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getMeasuredWidth()I

    move-result v5

    .line 186
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getMeasuredHeight()I

    move-result v6

    .line 187
    iget v7, v0, Landroid/graphics/Point;->x:I

    sub-int v8, v4, v5

    mul-int/2addr v7, v8

    sub-int v5, v3, v5

    div-int v5, v7, v5

    .line 188
    iget v7, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v6

    mul-int/2addr v3, v7

    sub-int/2addr v4, v6

    div-int/2addr v3, v4

    .line 189
    iget-object v4, p0, Lcom/mgeek/android/ui/y;->e:Landroid/graphics/Point;

    if-ne v0, v4, :cond_0

    .line 190
    const-string v4, "portrait_pos_x"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v4, "portrait_pos_y"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v0, "landscape_pos_x"

    invoke-static {v2, v0}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v0, "landscape_pos_y"

    invoke-static {v2, v0}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->f:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Point;->set(II)V

    .line 202
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 203
    return-void

    .line 196
    :cond_0
    const-string v4, "portrait_pos_x"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v4, "portrait_pos_y"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v4, "landscape_pos_x"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v4, "landscape_pos_y"

    invoke-static {v2, v4}, Lcom/mgeek/android/ui/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/y;->e:Landroid/graphics/Point;

    :goto_0
    iput-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    .line 98
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    iget-object v1, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/mgeek/android/ui/y;->a(Lcom/mgeek/android/ui/ad;Landroid/graphics/Point;)V

    .line 99
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->f:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/mgeek/android/ui/y;->a:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 176
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    iget-object v1, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1}, Lcom/mgeek/android/ui/y;->a(Lcom/mgeek/android/ui/ad;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public a(Lcom/mgeek/android/ui/ac;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mgeek/android/ui/y;->i:Lcom/mgeek/android/ui/ac;

    .line 252
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    sget-object v1, Lcom/mgeek/android/ui/ad;->a:Lcom/mgeek/android/ui/ad;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    sget-object v1, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    if-ne v0, v1, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p2, :cond_1

    .line 259
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/y;->a(II)V

    .line 260
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->e()V

    .line 263
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/mgeek/android/ui/y;->a:Z

    return v0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/mgeek/android/ui/y;->i()V

    .line 216
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    .line 220
    iget-object v1, p0, Lcom/mgeek/android/ui/y;->g:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    sget-object v1, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    iget-object v2, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    if-ne v1, v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/b/a;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->h:Lcom/mgeek/android/ui/ad;

    .line 237
    sget-object v1, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/mgeek/android/ui/ad;->c:Lcom/mgeek/android/ui/ad;

    if-ne v0, v1, :cond_1

    .line 238
    :cond_0
    const/4 v0, -0x1

    .line 240
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/mgeek/android/ui/y;->c:I

    return v0
.end method

.method public h()Lcom/mgeek/android/ui/ac;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mgeek/android/ui/y;->i:Lcom/mgeek/android/ui/ac;

    return-object v0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this view should only be added to a frame layout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/y;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/mgeek/android/ui/z;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/z;-><init>(Lcom/mgeek/android/ui/y;)V

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/y;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method
