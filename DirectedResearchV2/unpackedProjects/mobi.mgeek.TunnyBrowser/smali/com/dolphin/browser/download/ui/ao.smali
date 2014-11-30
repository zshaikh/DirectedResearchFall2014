.class public Lcom/dolphin/browser/download/ui/ao;
.super Landroid/app/Dialog;
.source "DownloadPathDialog.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Ljava/io/File;

.field private h:Lcom/dolphin/browser/download/ui/av;

.field private i:Lcom/dolphin/browser/download/ui/an;

.field private j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f001e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 184
    new-instance v0, Lcom/dolphin/browser/download/ui/as;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/as;-><init>(Lcom/dolphin/browser/download/ui/ao;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 75
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->j:Ljava/util/Stack;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->setContentView(I)V

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->c:Landroid/view/View;

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->b:Landroid/widget/TextView;

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->d:Landroid/widget/ImageView;

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->e:Landroid/widget/ImageView;

    .line 88
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->f:Landroid/widget/ImageView;

    .line 89
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->k:Landroid/view/View;

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ao;->c()V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->c:Landroid/view/View;

    new-instance v1, Lcom/dolphin/browser/download/ui/ap;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/ap;-><init>(Lcom/dolphin/browser/download/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/download/ui/aq;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/aq;-><init>(Lcom/dolphin/browser/download/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/download/ui/ar;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/ar;-><init>(Lcom/dolphin/browser/download/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ao;->e()V

    .line 148
    const-string v0, "DownloadPathDialog"

    const-string v1, "construct end"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/ao;)Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/ao;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/download/ui/ao;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ao;->c()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/download/ui/ao;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->j:Ljava/util/Stack;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    .line 154
    if-eqz v4, :cond_0

    .line 155
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    if-ne v0, v4, :cond_1

    move v0, v1

    .line 156
    :goto_0
    iget-object v5, p0, Lcom/dolphin/browser/download/ui/ao;->c:Landroid/view/View;

    if-nez v0, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    iget-object v5, p0, Lcom/dolphin/browser/download/ui/ao;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 158
    iget-object v5, p0, Lcom/dolphin/browser/download/ui/ao;->b:Landroid/widget/TextView;

    if-nez v0, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 159
    iget-object v5, p0, Lcom/dolphin/browser/download/ui/ao;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    move v3, v1

    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 160
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/ao;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 161
    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    :goto_6
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    if-nez v0, :cond_8

    .line 169
    new-instance v0, Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/download/ui/an;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ao;->l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    :cond_0
    :goto_7
    return-void

    :cond_1
    move v0, v2

    .line 155
    goto :goto_0

    :cond_2
    move v3, v2

    .line 156
    goto :goto_1

    :cond_3
    move v3, v2

    .line 157
    goto :goto_2

    :cond_4
    move v3, v2

    .line 158
    goto :goto_3

    :cond_5
    move v3, v2

    .line 159
    goto :goto_4

    :cond_6
    move v1, v2

    .line 160
    goto :goto_5

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 174
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/download/ui/an;->a(Ljava/io/File;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    goto :goto_7
.end method

.method static synthetic d(Lcom/dolphin/browser/download/ui/ao;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->i:Lcom/dolphin/browser/download/ui/an;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/an;->a()V

    .line 182
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/download/ui/ao;)Lcom/dolphin/browser/download/ui/av;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->h:Lcom/dolphin/browser/download/ui/av;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const v6, 0x7f0a004c

    const v5, 0x7f0201b8

    .line 225
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 226
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    .line 228
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00f6

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->c:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/ao;->k:Landroid/view/View;

    invoke-static {v3}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->e:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->f:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020094

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a003a

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    sget-object v0, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v0, 0x7f060046

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v0, v6, v6, v3}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/ao;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->a:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 246
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ca

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/download/ui/ao;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ao;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/ao;->g:Ljava/io/File;

    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/ao;->c()V

    .line 69
    return-void
.end method

.method public a(Lcom/dolphin/browser/download/ui/av;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ao;->h:Lcom/dolphin/browser/download/ui/av;

    .line 63
    return-void
.end method

.method public b()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0a0180

    .line 253
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 254
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v3

    .line 255
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300a3

    invoke-static {v0, v1, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 256
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080267

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080268

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 258
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 260
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v7, 0x7f0b0089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 261
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 262
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 264
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0392

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00d9

    invoke-virtual {v0, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c1

    new-instance v4, Lcom/dolphin/browser/download/ui/at;

    invoke-direct {v4, p0, v1, v3}, Lcom/dolphin/browser/download/ui/at;-><init>(Lcom/dolphin/browser/download/ui/ao;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 288
    new-instance v2, Lcom/dolphin/browser/download/ui/au;

    invoke-direct {v2, p0, v1}, Lcom/dolphin/browser/download/ui/au;-><init>(Lcom/dolphin/browser/download/ui/ao;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 299
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 300
    return-void
.end method
