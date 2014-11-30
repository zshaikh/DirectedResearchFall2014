.class public Lcom/dolphin/browser/ui/v;
.super Landroid/widget/LinearLayout;
.source "ExtensionItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/z;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/dolphin/browser/extensions/n;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/BaseAdapter;

.field private q:Z

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/v;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    const/4 p1, 0x0

    .line 366
    :goto_0
    return-object p1

    .line 360
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    .line 361
    if-eqz v0, :cond_1

    .line 362
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 364
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->f:Landroid/view/View;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_options_bg:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 107
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_option_item_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_option_item_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_option_item_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_option_item_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->list_selector_background_round:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->m:Landroid/view/View;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->plugin_item_indicator:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->plugin_summary_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->a:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->history_title_textcolor:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$layout;->plugin_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    sget v0, Lcom/dolphin/browser/core/R$id;->app_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->a:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/dolphin/browser/core/R$id;->app_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/dolphin/browser/core/R$id;->app_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->c:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/dolphin/browser/core/R$id;->icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->d:Landroid/widget/ImageView;

    .line 73
    sget v0, Lcom/dolphin/browser/core/R$id;->middle_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->k:Landroid/view/View;

    .line 74
    sget v0, Lcom/dolphin/browser/core/R$id;->bottom_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->l:Landroid/view/View;

    .line 75
    sget v0, Lcom/dolphin/browser/core/R$id;->drag_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->o:Landroid/view/View;

    .line 77
    sget v0, Lcom/dolphin/browser/core/R$id;->indicator:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->m:Landroid/view/View;

    .line 78
    sget v0, Lcom/dolphin/browser/core/R$id;->btn_detail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->k:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget v3, Lcom/dolphin/browser/core/R$drawable;->middle_divider:I

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->l:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget v3, Lcom/dolphin/browser/core/R$drawable;->divider_horizontal:I

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    sget v0, Lcom/dolphin/browser/core/R$id;->plugin_content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->f:Landroid/view/View;

    .line 84
    sget v0, Lcom/dolphin/browser/core/R$id;->options:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    .line 85
    sget v0, Lcom/dolphin/browser/core/R$id;->btn_options:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    .line 86
    sget v0, Lcom/dolphin/browser/core/R$id;->btn_disable:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    .line 87
    sget v0, Lcom/dolphin/browser/core/R$id;->btn_uninstall:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-direct {p0}, Lcom/dolphin/browser/ui/v;->a()V

    .line 101
    return-void
.end method

.method private a(Lcom/dolphin/browser/extensions/n;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    sget v1, Lcom/dolphin/browser/core/R$string;->plugin_options_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    :goto_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 191
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    :goto_1
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :goto_2
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    .line 213
    if-nez v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    :goto_3
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    sget v1, Lcom/dolphin/browser/core/R$string;->plugin_options_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method private a(Ljava/util/HashMap;Lcom/dolphin/browser/extensions/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/dolphin/browser/extensions/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/extensions/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->p:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/extensions/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    instance-of v2, p1, Lcom/dolphin/browser/extensions/s;

    if-eqz v2, :cond_2

    .line 320
    check-cast p1, Lcom/dolphin/browser/extensions/s;

    .line 321
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 294
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 227
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 228
    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->a(Z)V

    .line 229
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->r:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->r:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->p:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->r:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/v;->a(Ljava/util/HashMap;Lcom/dolphin/browser/extensions/n;)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/v;->q:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 237
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 239
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    .line 298
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v1

    .line 299
    if-eqz v1, :cond_0

    .line 300
    instance-of v1, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v1, :cond_2

    .line 301
    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 302
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/Context;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/al;->g(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->j()V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->c(Z)V

    .line 339
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/dolphin/browser/extensions/n;)V
    .locals 6

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->m()Lcom/dolphin/browser/extensions/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/core/R$string;->upgrade_dolphin_to_use_this_addon:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v1, "BrowserPluginList"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/extensions/n;ILjava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Lcom/dolphin/browser/extensions/n;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 127
    iput-object p1, p0, Lcom/dolphin/browser/ui/v;->p:Landroid/widget/BaseAdapter;

    .line 128
    iput-object p4, p0, Lcom/dolphin/browser/ui/v;->r:Ljava/util/HashMap;

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 130
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->a(Z)V

    .line 131
    if-nez p3, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_0
    invoke-virtual {p0, p2, p5}, Lcom/dolphin/browser/ui/v;->a(Lcom/dolphin/browser/extensions/n;Z)V

    .line 139
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/extensions/n;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 142
    iput-boolean p2, p0, Lcom/dolphin/browser/ui/v;->q:Z

    .line 143
    iput-object p1, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    .line 144
    iget-object v2, p0, Lcom/dolphin/browser/ui/v;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/dolphin/browser/ui/v;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v2, p0, Lcom/dolphin/browser/ui/v;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->i()Ljava/lang/CharSequence;

    move-result-object v2

    .line 147
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 148
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->m()Lcom/dolphin/browser/extensions/c;

    move-result-object v4

    .line 150
    sget-object v5, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-ne v4, v5, :cond_2

    .line 167
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 168
    iget-object v4, p0, Lcom/dolphin/browser/ui/v;->l:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_1
    iget-object v4, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->d:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/browser/core/R$drawable;->ic_mp_move:I

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/v;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/v;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 177
    return-void

    .line 156
    :cond_2
    sget-object v5, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    if-ne v4, v5, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/dolphin/browser/core/R$string;->old_addon_version:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 158
    :cond_3
    sget-object v5, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    if-ne v4, v5, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/v;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/dolphin/browser/core/R$string;->old_app_version:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 170
    :cond_4
    iget-object v4, p0, Lcom/dolphin/browser/ui/v;->l:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_5
    invoke-direct {p0}, Lcom/dolphin/browser/ui/v;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->f:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/dolphin/browser/ui/v;->c()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "disable"

    .line 275
    :goto_1
    const-string v2, "addons"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->d(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 274
    :cond_2
    const-string v0, "enable"

    goto :goto_1

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 278
    const-string v0, "addons"

    const-string v2, "option"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->b(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 281
    const-string v0, "addons"

    const-string v2, "uninstall"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->c(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->n:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 284
    const-string v0, "addons"

    const-string v2, "detail"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/ui/v;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/v;->e(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0
.end method
