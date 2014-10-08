.class final Lcom/vungle/sdk/d;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static h:Landroid/graphics/Bitmap;

.field private static i:Landroid/graphics/Bitmap;

.field private static j:Landroid/graphics/Bitmap;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/VideoView;

.field c:Landroid/widget/ProgressBar;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/vungle/sdk/d;->h:Landroid/graphics/Bitmap;

    .line 85
    sput-object v0, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;

    .line 86
    sput-object v0, Lcom/vungle/sdk/d;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 133
    sget-object v0, Lcom/vungle/sdk/d;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/sdk/d;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/vungle/sdk/m;->a()Lcom/vungle/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/m;->b()Lcom/vungle/sdk/VungleBitmapFactory;

    move-result-object v0

    sget-object v2, Lcom/vungle/sdk/d;->h:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "vunglepub_sdk_close.png"

    invoke-interface {v0, v2}, Lcom/vungle/sdk/VungleBitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/vungle/sdk/d;->h:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v2, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "vunglepub_sdk_mute.png"

    invoke-interface {v0, v2}, Lcom/vungle/sdk/VungleBitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    sget-object v2, Lcom/vungle/sdk/d;->j:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    :try_start_2
    const-string v2, "vunglepub_sdk_unmute.png"

    invoke-interface {v0, v2}, Lcom/vungle/sdk/VungleBitmapFactory;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/d;->j:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :cond_3
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    .line 136
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->b:Landroid/widget/VideoView;

    .line 137
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->c:Landroid/widget/ProgressBar;

    .line 138
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    .line 139
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    .line 141
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/vungle/sdk/d;->a(Landroid/widget/ImageView;F)V

    .line 151
    iget-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/vungle/sdk/d;->a(Landroid/widget/ImageView;F)V

    .line 153
    iget-object v0, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    sget-object v2, Lcom/vungle/sdk/d;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v0, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    const v2, 0x1030044

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 159
    iget-object v0, p0, Lcom/vungle/sdk/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    iget-object v2, p0, Lcom/vungle/sdk/d;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/vungle/sdk/d;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 164
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 165
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 166
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    iget-object v2, p0, Lcom/vungle/sdk/d;->b:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 170
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v2, p0, Lcom/vungle/sdk/d;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 175
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const/high16 v2, 0x40a00000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    iget-object v1, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    iget-object v1, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    iget-object v1, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void

    .line 133
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private static a(Landroid/widget/ImageView;F)V
    .locals 2

    .prologue
    const/high16 v1, 0x42280000

    .line 124
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    mul-float v0, v1, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 126
    mul-float v0, v1, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vungle/sdk/d;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/vungle/sdk/d;->i:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    return-void

    .line 192
    :cond_0
    sget-object v1, Lcom/vungle/sdk/d;->j:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final b()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vungle/sdk/d;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vungle/sdk/d;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vungle/sdk/d;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vungle/sdk/d;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final f()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vungle/sdk/d;->b:Landroid/widget/VideoView;

    return-object v0
.end method
