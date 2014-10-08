.class public Lcom/chartboost/sdk/impl/b$a;
.super Lcom/chartboost/sdk/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/Button;

.field public f:Lcom/chartboost/sdk/impl/v;

.field final synthetic g:Lcom/chartboost/sdk/impl/b;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 43
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->setBackgroundColor(I)V

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/b$a$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b$a$1;-><init>(Lcom/chartboost/sdk/impl/b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/chartboost/sdk/impl/b$a$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b$a$2;-><init>(Lcom/chartboost/sdk/impl/b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/b$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;Lcom/chartboost/sdk/impl/b$a;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/b$a;-><init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/impl/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 150
    const-string v1, "offset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    return-object v0
.end method


# virtual methods
.method protected a(II)V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/high16 v8, 0x43f00000

    const/high16 v7, 0x43a00000

    const/high16 v10, 0x40000000

    const/4 v6, -0x2

    .line 80
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getOrientation()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->isPortrait()Z

    move-result v0

    .line 85
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    .line 86
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/b;->j:Lcom/chartboost/sdk/Libraries/a$a;

    .line 88
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    if-eqz v0, :cond_2

    int-to-float v6, p1

    div-float v6, v7, v6

    int-to-float v7, p2

    div-float v7, v8, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 100
    :goto_2
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 101
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 102
    if-eqz v0, :cond_3

    const-string v7, "frame-portrait"

    :goto_3
    invoke-direct {p0, v7}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    .line 103
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    iget v9, v7, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v7, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 108
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 110
    if-eqz v0, :cond_4

    const-string v0, "ad-portrait"

    :goto_4
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 111
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 112
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v7, p2, v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 119
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b$a;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/chartboost/sdk/Libraries/d;->b(ILandroid/content/Context;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 120
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v7, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/chartboost/sdk/Libraries/d;->b(ILandroid/content/Context;)F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v7

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    goto/16 :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/b;->k:Lcom/chartboost/sdk/Libraries/a$a;

    goto/16 :goto_1

    .line 95
    :cond_2
    int-to-float v6, p2

    div-float v6, v7, v6

    int-to-float v7, p1

    div-float v7, v8, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_2

    .line 102
    :cond_3
    const-string v7, "frame-landscape"

    goto/16 :goto_3

    .line 110
    :cond_4
    const-string v0, "ad-landscape"

    goto/16 :goto_4
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-super {p0}, Lcom/chartboost/sdk/c$b;->b()V

    .line 140
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    .line 141
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    .line 142
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    .line 143
    return-void
.end method
