.class public Lcom/dolphin/browser/menu/PanelMenuTabBar;
.super Landroid/widget/LinearLayout;
.source "PanelMenuTabBar.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/menu/x;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dolphin/browser/menu/ag;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tools"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "exit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    .line 107
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    .line 113
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private a(ILcom/dolphin/browser/c/a;)Lcom/dolphin/browser/c/a;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/dolphin/browser/menu/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/menu/ai;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuTabBar;)Lcom/dolphin/browser/menu/ag;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b:Lcom/dolphin/browser/menu/ag;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setOrientation(I)V

    .line 119
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->setGravity(I)V

    .line 120
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c()V

    .line 121
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/menu/PanelMenuTabBar;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 126
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 127
    new-instance v3, Lcom/dolphin/browser/menu/t;

    invoke-direct {v3, p1}, Lcom/dolphin/browser/menu/t;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/x;

    .line 129
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/t;->a(Lcom/dolphin/browser/menu/x;)V

    .line 130
    new-instance v4, Lcom/dolphin/browser/menu/aj;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/dolphin/browser/menu/aj;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;Lcom/dolphin/browser/menu/af;)V

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/menu/t;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v3, v6}, Lcom/dolphin/browser/menu/t;->setFocusable(Z)V

    .line 132
    invoke-virtual {v3, v6}, Lcom/dolphin/browser/menu/t;->setClickable(Z)V

    .line 133
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->d()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(IZ)V

    .line 136
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    .line 142
    new-instance v1, Lcom/dolphin/browser/menu/x;

    invoke-direct {v1}, Lcom/dolphin/browser/menu/x;-><init>()V

    .line 143
    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 144
    new-instance v2, Lcom/dolphin/browser/c/t;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dolphin/browser/c/a;

    const/4 v4, 0x0

    new-instance v5, Lcom/dolphin/browser/c/d;

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-direct {v5, v0, v6, v7}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    aput-object v5, v3, v4

    new-instance v0, Lcom/dolphin/browser/c/j;

    invoke-direct {v0}, Lcom/dolphin/browser/c/j;-><init>()V

    aput-object v0, v3, v8

    invoke-direct {v2, v3}, Lcom/dolphin/browser/c/t;-><init>([Lcom/dolphin/browser/c/a;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0}, Lcom/dolphin/browser/menu/x;-><init>()V

    .line 154
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 155
    invoke-virtual {v0, v8}, Lcom/dolphin/browser/menu/x;->b(Z)V

    .line 156
    new-instance v1, Lcom/dolphin/browser/c/j;

    invoke-direct {v1}, Lcom/dolphin/browser/c/j;-><init>()V

    invoke-direct {p0, v8, v1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(ILcom/dolphin/browser/c/a;)Lcom/dolphin/browser/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lcom/dolphin/browser/menu/x;

    invoke-direct {v0}, Lcom/dolphin/browser/menu/x;-><init>()V

    .line 160
    sget-object v1, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(I)V

    .line 161
    new-instance v1, Lcom/dolphin/browser/c/n;

    invoke-direct {v1, v8}, Lcom/dolphin/browser/c/n;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 164
    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 248
    invoke-static {p1, v0}, Lcom/dolphin/browser/menu/v;->a(IZ)V

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(IZ)V

    .line 250
    return-void
.end method

.method private d()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 184
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 187
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "PanelMenuTabBar"

    const-string v1, "[updateTheme]"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 194
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/t;

    .line 195
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/t;->b()V

    .line 193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c(I)V

    .line 202
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a(IZZ)V

    .line 255
    return-void
.end method

.method public a(IZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    if-eq v0, p1, :cond_0

    .line 233
    const-string v0, "PanelMenuTabBar"

    const-string v1, "[setCurrentTab] :%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(I)Landroid/view/View;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 238
    :cond_2
    iput p1, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    .line 239
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b:Lcom/dolphin/browser/menu/ag;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b:Lcom/dolphin/browser/menu/ag;

    invoke-interface {v0, p1, v4}, Lcom/dolphin/browser/menu/ag;->a(IZ)V

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->invalidate()V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/menu/ag;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b:Lcom/dolphin/browser/menu/ag;

    .line 295
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 275
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 280
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 282
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 286
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/x;

    .line 288
    new-instance v2, Lcom/dolphin/browser/menu/aj;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/dolphin/browser/menu/aj;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;Lcom/dolphin/browser/menu/af;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getChildCount()I

    move-result v0

    .line 212
    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->invalidate()V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 335
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 336
    iget p2, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    .line 340
    :cond_0
    :goto_0
    return p2

    .line 337
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuTabBar;->c:I

    if-lt p2, v0, :cond_0

    .line 338
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b()I

    move-result v1

    .line 263
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(I)Landroid/view/View;

    move-result-object v2

    .line 265
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method
