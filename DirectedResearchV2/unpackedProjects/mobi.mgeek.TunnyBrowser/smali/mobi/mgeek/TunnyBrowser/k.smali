.class Lmobi/mgeek/TunnyBrowser/k;
.super Lmobi/mgeek/TunnyBrowser/i;
.source "BackupRestoreDialogHelper.java"


# instance fields
.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/i;-><init>(Landroid/content/Context;)V

    .line 288
    new-instance v0, Lmobi/mgeek/TunnyBrowser/l;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/l;-><init>(Lmobi/mgeek/TunnyBrowser/k;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 159
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/k;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/k;)Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->e:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const v7, 0x7f0a0180

    const v6, 0x7f0a0044

    .line 188
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 191
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/k;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/k;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v4, v7}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 199
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/view/View;)V

    .line 173
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    .line 175
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->e:Landroid/view/View;

    .line 176
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 178
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 180
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->h:Landroid/widget/TextView;

    .line 182
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    .line 183
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/k;->d()V

    .line 185
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 204
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/i;->onClick(Landroid/content/DialogInterface;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 207
    :cond_1
    const-string v0, "BackupRestoreDialogHelper"

    const-string v1, "BackupDialog click"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 210
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    new-instance v0, Lmobi/mgeek/TunnyBrowser/m;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/m;-><init>(Lmobi/mgeek/TunnyBrowser/k;Landroid/content/DialogInterface;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 216
    :cond_2
    sget-object v0, Lmobi/mgeek/TunnyBrowser/k;->a:Lcom/dolphin/browser/util/bx;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bx;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 218
    :pswitch_1
    new-instance v0, Lmobi/mgeek/TunnyBrowser/m;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/TunnyBrowser/m;-><init>(Lmobi/mgeek/TunnyBrowser/k;Landroid/content/DialogInterface;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e008c

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/k;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e008d

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/k;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/k;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e008e

    invoke-virtual {p0, v0, v1}, Lmobi/mgeek/TunnyBrowser/k;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
