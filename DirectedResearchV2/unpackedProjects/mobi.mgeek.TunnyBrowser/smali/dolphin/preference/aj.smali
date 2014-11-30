.class public Ldolphin/preference/aj;
.super Landroid/widget/LinearLayout;
.source "SetUserAgentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:[Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/CheckedTextView;

.field private j:Landroid/widget/CheckedTextView;

.field private k:Landroid/widget/CheckedTextView;

.field private l:Landroid/widget/CheckedTextView;

.field private m:Landroid/widget/CheckedTextView;

.field private n:I

.field private o:Landroid/content/Context;

.field private p:Ldolphin/preference/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/preference/al;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/aj;->p:Ldolphin/preference/al;

    .line 37
    invoke-direct {p0, p1, p2}, Ldolphin/preference/aj;->a(Landroid/content/Context;Ldolphin/preference/al;)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;Ldolphin/preference/al;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300c3

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    iput-object p1, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Ldolphin/preference/aj;->p:Ldolphin/preference/al;

    .line 57
    invoke-virtual {p0}, Ldolphin/preference/aj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ldolphin/preference/aj;->b()V

    .line 59
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    iget v2, p0, Ldolphin/preference/aj;->n:I

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Landroid/content/Context;I)V

    .line 263
    iget-object v0, p0, Ldolphin/preference/aj;->p:Ldolphin/preference/al;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Ldolphin/preference/aj;->p:Ldolphin/preference/al;

    invoke-direct {p0}, Ldolphin/preference/aj;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldolphin/preference/al;->a(Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/preference/aj;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ldolphin/preference/aj;->e()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getUserAgent()I

    move-result v0

    iput v0, p0, Ldolphin/preference/aj;->n:I

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802b9

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldolphin/preference/aj;->d:Landroid/widget/LinearLayout;

    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldolphin/preference/aj;->e:Landroid/widget/LinearLayout;

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldolphin/preference/aj;->f:Landroid/widget/LinearLayout;

    .line 107
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c0

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldolphin/preference/aj;->g:Landroid/widget/LinearLayout;

    .line 108
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c3

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ldolphin/preference/aj;->h:Landroid/widget/LinearLayout;

    .line 110
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802be

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c1

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    .line 114
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c4

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    .line 115
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget-object v0, p0, Ldolphin/preference/aj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Ldolphin/preference/aj;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Ldolphin/preference/aj;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Ldolphin/preference/aj;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Ldolphin/preference/aj;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c5

    invoke-virtual {p0, v0}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    .line 129
    invoke-direct {p0}, Ldolphin/preference/aj;->d()V

    .line 130
    invoke-direct {p0}, Ldolphin/preference/aj;->c()V

    .line 131
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget v0, p0, Ldolphin/preference/aj;->n:I

    sparse-switch v0, :sswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 137
    :sswitch_0
    iget-object v0, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 140
    :sswitch_1
    iget-object v0, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 143
    :sswitch_2
    iget-object v0, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 146
    :sswitch_3
    iget-object v0, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 149
    :sswitch_4
    iget-object v0, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private d()V
    .locals 5

    .prologue
    const v4, 0x7f0a01a0

    const v3, 0x7f0200ab

    .line 159
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    .line 161
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0800c2

    invoke-virtual {p0, v2}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 163
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802bf

    invoke-virtual {p0, v2}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802c2

    invoke-virtual {p0, v2}, Ldolphin/preference/aj;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    iget-object v1, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v1, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v1, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v1, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    iget-object v1, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    iget-object v1, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v1, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object v1, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    iget-object v1, p0, Ldolphin/preference/aj;->d:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v1, p0, Ldolphin/preference/aj;->e:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v1, p0, Ldolphin/preference/aj;->f:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v1, p0, Ldolphin/preference/aj;->g:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, p0, Ldolphin/preference/aj;->h:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    iget-object v1, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {p0}, Ldolphin/preference/aj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 194
    invoke-virtual {p0}, Ldolphin/preference/aj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 195
    iget-object v2, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 196
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 245
    const/16 v1, 0x64

    iget v2, p0, Ldolphin/preference/aj;->n:I

    if-ne v1, v2, :cond_0

    .line 247
    :try_start_0
    invoke-direct {p0}, Ldolphin/preference/aj;->g()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setCustomUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-direct {p0, v0}, Ldolphin/preference/aj;->a(Z)V

    .line 257
    return v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0}, Ldolphin/preference/aj;->f()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setCustomUserAgent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method private g()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    const-string v1, ""

    .line 293
    const-string v0, ""

    .line 294
    iget-object v2, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 296
    iget v2, p0, Ldolphin/preference/aj;->n:I

    sparse-switch v2, :sswitch_data_0

    .line 321
    :cond_0
    :goto_0
    const-string v2, "settings_new"

    const-string v3, "user_agent"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v1

    .line 298
    :sswitch_0
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 299
    const-string v0, "Android"

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 303
    const-string v0, "desktop"

    goto :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 307
    const-string v0, "iPhone"

    goto :goto_0

    .line 310
    :sswitch_3
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 311
    const-string v0, "iPad"

    goto :goto_0

    .line 314
    :sswitch_4
    iget-object v0, p0, Ldolphin/preference/aj;->b:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    .line 315
    const-string v0, "customize"

    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/aj;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0490

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Ldolphin/preference/ak;

    invoke-direct {v2, p0}, Ldolphin/preference/ak;-><init>(Ldolphin/preference/aj;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/aj;->a:Landroid/app/AlertDialog;

    .line 73
    iget-object v0, p0, Ldolphin/preference/aj;->a:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 74
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f0802c3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 214
    iget-object v1, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 215
    iget-object v1, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 216
    iget-object v1, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 217
    iget-object v1, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 219
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802b9

    if-ne v1, v0, :cond_1

    .line 220
    iput v2, p0, Ldolphin/preference/aj;->n:I

    .line 221
    iget-object v1, p0, Ldolphin/preference/aj;->i:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 235
    :cond_0
    :goto_0
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v4, v0, :cond_5

    .line 236
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 240
    :goto_1
    return-void

    .line 222
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802bb

    if-ne v1, v0, :cond_2

    .line 223
    iput v3, p0, Ldolphin/preference/aj;->n:I

    .line 224
    iget-object v1, p0, Ldolphin/preference/aj;->j:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802bd

    if-ne v1, v0, :cond_3

    .line 226
    const/4 v1, 0x2

    iput v1, p0, Ldolphin/preference/aj;->n:I

    .line 227
    iget-object v1, p0, Ldolphin/preference/aj;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 228
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802c0

    if-ne v1, v0, :cond_4

    .line 229
    const/4 v1, 0x3

    iput v1, p0, Ldolphin/preference/aj;->n:I

    .line 230
    iget-object v1, p0, Ldolphin/preference/aj;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 231
    :cond_4
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v4, v0, :cond_0

    .line 232
    const/16 v1, 0x64

    iput v1, p0, Ldolphin/preference/aj;->n:I

    .line 233
    iget-object v1, p0, Ldolphin/preference/aj;->m:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 238
    :cond_5
    iget-object v0, p0, Ldolphin/preference/aj;->c:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method
