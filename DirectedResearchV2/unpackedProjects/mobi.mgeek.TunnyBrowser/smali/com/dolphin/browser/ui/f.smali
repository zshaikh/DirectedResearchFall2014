.class public Lcom/dolphin/browser/ui/f;
.super Landroid/widget/RelativeLayout;
.source "AddonItem.java"

# interfaces
.implements Lcom/dolphin/browser/ui/y;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/dolphin/browser/extensions/n;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/f;->j:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/f;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 p1, 0x0

    .line 216
    :goto_0
    return-object p1

    .line 210
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 214
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/dolphin/browser/core/R$layout;->plugin_item_min:I

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/ui/f;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v0, Lcom/dolphin/browser/core/R$id;->app_icon:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->c:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/dolphin/browser/core/R$id;->app_name:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->d:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/dolphin/browser/core/R$id;->app_description:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->e:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/dolphin/browser/core/R$id;->plugin_state:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/dolphin/browser/core/R$id;->notification:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/dolphin/browser/core/R$id;->top_divider:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->h:Landroid/view/View;

    .line 74
    sget v0, Lcom/dolphin/browser/core/R$id;->bottom_divider:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/f;->i:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41800000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/f;->b()V

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/f;->b()V

    .line 89
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/n;ZZ)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/f;->b(Lcom/dolphin/browser/extensions/n;ZZ)V

    .line 108
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->d:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->toolbar_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->toolbar_text_dark_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->addon_notification_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->ic_notification_overlay:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->h:Landroid/view/View;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->divider_horizontal:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->i:Landroid/view/View;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->divider_horizontal:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget v1, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method public b(Lcom/dolphin/browser/extensions/n;ZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 111
    iput-object p1, p0, Lcom/dolphin/browser/ui/f;->g:Lcom/dolphin/browser/extensions/n;

    .line 113
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    .line 120
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    iget-object v4, p0, Lcom/dolphin/browser/ui/f;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/f;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/dolphin/browser/extensions/IAddonBarExtention2;

    if-eqz v1, :cond_c

    .line 129
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/IAddonBarExtention2;

    .line 130
    invoke-interface {v1}, Lcom/dolphin/browser/extensions/IAddonBarExtention2;->getAddonBarIconNumber()I

    move-result v1

    .line 133
    :goto_1
    if-lez v1, :cond_1

    .line 134
    iget-object v4, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v4, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_2
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->getAddonBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/dolphin/browser/extensions/IBaseExtension;

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 144
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/x;

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/x;

    .line 151
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/x;->getAddonState()Ljava/lang/CharSequence;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_3
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/f;->j:Z

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :goto_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void

    .line 121
    :catch_0
    move-exception v1

    move-object v1, v2

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/x;->getAddonState()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41800000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 159
    :cond_3
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/f;->j:Z

    if-nez v0, :cond_6

    .line 160
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 161
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 162
    :goto_5
    if-nez v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    sget v1, Lcom/dolphin/browser/core/R$string;->plugin_click_to_install:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41400000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :cond_4
    move v0, v3

    .line 161
    goto :goto_5

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 175
    :cond_7
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/ak;

    if-eqz v0, :cond_8

    .line 176
    invoke-static {p1}, Lcom/dolphin/browser/extensions/ak;->a(Lcom/dolphin/browser/extensions/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v4, p0, Lcom/dolphin/browser/ui/f;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/f;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget v4, Lcom/dolphin/browser/core/R$color;->toolbar_text_color:I

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 192
    :cond_9
    if-eqz p2, :cond_a

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_6
    if-eqz p3, :cond_b

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 195
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 200
    :cond_b
    iget-object v0, p0, Lcom/dolphin/browser/ui/f;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    move v1, v3

    goto/16 :goto_1
.end method
