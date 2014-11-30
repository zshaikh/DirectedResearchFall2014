.class public Lcom/dolphin/browser/ui/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/g;


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->g:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->h:I

    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->i:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    iget v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->j:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(I)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 209
    sget v1, Lcom/dolphin/browser/core/R$layout;->list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 212
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    iget v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->j:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(I)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 216
    sget v1, Lcom/dolphin/browser/core/R$layout;->list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    iget v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->j:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->a(I)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    sget v1, Lcom/dolphin/browser/core/R$layout;->list_menu_item_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    iget v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->j:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/e;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a()V

    .line 196
    :cond_3
    if-eqz p1, :cond_4

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/ui/menu/e;I)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    .line 72
    iput p2, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->j:I

    .line 74
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->setVisibility(I)V

    .line 76
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/e;->a(Lcom/dolphin/browser/ui/menu/g;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->c()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a(ZC)V

    .line 79
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/e;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->setEnabled(Z)V

    .line 81
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$color;->menu_title_textcolor:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a(I)V

    .line 82
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$color;->menu_shortcut_textcolor:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->b(I)V

    .line 83
    return-void

    .line 74
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 86
    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZC)V
    .locals 3

    .prologue
    .line 166
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 169
    :goto_0
    if-nez v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/menu/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_1
    return-void

    .line 166
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    return-void
.end method

.method public b(Z)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 105
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d()V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e()V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    move-object v3, v2

    move-object v2, v0

    .line 129
    :goto_1
    if-eqz p1, :cond_7

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 133
    :goto_2
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 134
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 138
    :cond_4
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 139
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 132
    goto :goto_2

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->a:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 162
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 163
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e()V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget v0, Lcom/dolphin/browser/core/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 62
    iget v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->i:Landroid/content/Context;

    iget v2, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    :cond_0
    sget v0, Lcom/dolphin/browser/core/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 68
    return-void
.end method
