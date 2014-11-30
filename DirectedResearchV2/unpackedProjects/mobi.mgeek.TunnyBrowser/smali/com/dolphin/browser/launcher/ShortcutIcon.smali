.class public Lcom/dolphin/browser/launcher/ShortcutIcon;
.super Landroid/widget/RelativeLayout;
.source "ShortcutIcon.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bh;
.implements Lcom/dolphin/browser/launcher/cm;


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/dolphin/browser/launcher/cl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;ILcom/dolphin/browser/launcher/cl;)Lcom/dolphin/browser/launcher/ShortcutIcon;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ShortcutIcon;

    .line 137
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->a:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    return-object p1
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/dolphin/browser/launcher/cj;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/launcher/cj;-><init>(Lcom/dolphin/browser/launcher/ShortcutIcon;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 123
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 78
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->b()V

    .line 82
    :cond_0
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 83
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    .line 84
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->b(Landroid/graphics/Bitmap;)V

    .line 85
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->b(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/cl;->a(Lcom/dolphin/browser/launcher/cm;)V

    .line 89
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/dolphin/browser/launcher/ck;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/launcher/ck;-><init>(Lcom/dolphin/browser/launcher/ShortcutIcon;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public b()Lcom/dolphin/browser/launcher/bi;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    return-object v0
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Lcom/dolphin/browser/launcher/cl;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/launcher/al;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/launcher/al;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0

    .prologue
    .line 132
    return-object p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    sget v0, Lcom/dolphin/browser/launcher/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->a:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/dolphin/browser/launcher/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/ShortcutIcon;->b:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a()V

    .line 74
    return-void
.end method
