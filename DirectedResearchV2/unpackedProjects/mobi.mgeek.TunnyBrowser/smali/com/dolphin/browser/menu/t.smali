.class public Lcom/dolphin/browser/menu/t;
.super Landroid/widget/FrameLayout;
.source "MenuBarItem.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout$LayoutParams;

.field private e:Lcom/dolphin/browser/menu/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/t;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/menu/t;->a:Landroid/content/Context;

    .line 38
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/t;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/t;->b:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->d:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/menu/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->d:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/menu/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/menu/x;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/menu/x;)V
    .locals 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/dolphin/browser/menu/t;->e()V

    .line 53
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/o;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/o;->a()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->b()V

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->c()V

    .line 60
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->d()V

    .line 61
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/bb;->c()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->c()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/t;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/t;->setSelected(Z)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->b()Ljava/util/Observable;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 106
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/k/g;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/dolphin/browser/k/g;

    .line 118
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 121
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p1}, Lcom/dolphin/browser/k/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/x;->a(Ljava/lang/String;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/k/g;->a(I)Lcom/dolphin/browser/k/h;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/dolphin/browser/menu/u;->a:[I

    invoke-virtual {v0}, Lcom/dolphin/browser/k/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/t;->b()V

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/menu/x;->a(Z)V

    goto :goto_1

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/t;->e:Lcom/dolphin/browser/menu/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/x;->a(Z)V

    goto :goto_1

    .line 138
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/menu/t;->setVisibility(I)V

    goto :goto_1

    .line 141
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/t;->setVisibility(I)V

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
