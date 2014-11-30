.class public Lcom/dolphin/browser/ui/fake/a;
.super Landroid/widget/RelativeLayout;
.source "AddonItem.java"

# interfaces
.implements Lcom/dolphin/browser/ui/y;


# static fields
.field public static final b:I


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/dolphin/browser/extensions/n;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x422a6666

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    sput v0, Lcom/dolphin/browser/ui/fake/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/a;->m:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/a;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 p1, 0x0

    .line 247
    :goto_0
    return-object p1

    .line 241
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 245
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300b1

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/ui/fake/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->d:Landroid/widget/ImageView;

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->e:Landroid/widget/TextView;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->f:Landroid/widget/TextView;

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080266

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->i:Landroid/view/View;

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->j:Landroid/view/View;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/a;->b()V

    .line 90
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/a;->b()V

    .line 99
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/n;ZZ)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/fake/a;->b(Lcom/dolphin/browser/extensions/n;ZZ)V

    .line 124
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const v4, 0x7f0201c0

    const/4 v3, 0x0

    .line 102
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a000a

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020196

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->i:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->j:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/fake/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/extensions/n;ZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/a;->h:Lcom/dolphin/browser/extensions/n;

    .line 128
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    if-eqz v0, :cond_6

    .line 129
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    .line 133
    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    iput-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->l:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v4, p0, Lcom/dolphin/browser/ui/fake/a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/fake/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/dolphin/browser/extensions/IAddonBarExtention2;

    if-eqz v1, :cond_b

    .line 146
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/IAddonBarExtention2;

    .line 147
    invoke-interface {v1}, Lcom/dolphin/browser/extensions/IAddonBarExtention2;->getAddonBarIconNumber()I

    move-result v1

    .line 150
    :goto_1
    if-lez v1, :cond_1

    .line 151
    iget-object v4, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v4, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_2
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->getAddonBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/dolphin/browser/extensions/IBaseExtension;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/IBaseExtension;

    .line 161
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBaseExtension;->getExtensionTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/x;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/x;

    .line 168
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/x;->getState()I

    move-result v0

    .line 169
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_3
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/a;->m:Z

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 185
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/a;->m:Z

    if-nez v0, :cond_5

    .line 191
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 192
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bw;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 193
    :goto_5
    if-nez v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :goto_6
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    move v0, v3

    .line 192
    goto :goto_5

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 204
    :cond_6
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/ak;

    if-eqz v0, :cond_7

    .line 205
    invoke-static {p1}, Lcom/dolphin/browser/extensions/ak;->a(Lcom/dolphin/browser/extensions/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 207
    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->l:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 223
    :cond_8
    if-eqz p2, :cond_9

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_7
    if-eqz p3, :cond_a

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 231
    :cond_a
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 136
    :catch_0
    move-exception v4

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto/16 :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/a;->h:Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method
