.class public Lcom/dolphin/browser/menu/PanelMenuAddonItem;
.super Landroid/widget/LinearLayout;
.source "PanelMenuAddonItem.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/dolphin/browser/extensions/n;

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/dolphin/browser/extensions/ThemeManager;

.field private j:Lcom/dolphin/browser/b/l;

.field private k:Landroid/os/Handler;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 58
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 59
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    .line 208
    new-instance v0, Lcom/dolphin/browser/menu/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/z;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->j:Lcom/dolphin/browser/b/l;

    .line 222
    new-instance v0, Lcom/dolphin/browser/menu/aa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/menu/aa;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->k:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/dolphin/browser/menu/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/ab;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->l:Landroid/view/View$OnClickListener;

    .line 66
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 58
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 59
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    .line 208
    new-instance v0, Lcom/dolphin/browser/menu/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/z;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->j:Lcom/dolphin/browser/b/l;

    .line 222
    new-instance v0, Lcom/dolphin/browser/menu/aa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/menu/aa;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->k:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/dolphin/browser/menu/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/ab;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->l:Landroid/view/View$OnClickListener;

    .line 72
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 58
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 59
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    .line 208
    new-instance v0, Lcom/dolphin/browser/menu/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/z;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->j:Lcom/dolphin/browser/b/l;

    .line 222
    new-instance v0, Lcom/dolphin/browser/menu/aa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/menu/aa;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->k:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/dolphin/browser/menu/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/ab;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->l:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 58
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 59
    iput-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    .line 208
    new-instance v0, Lcom/dolphin/browser/menu/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/z;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->j:Lcom/dolphin/browser/b/l;

    .line 222
    new-instance v0, Lcom/dolphin/browser/menu/aa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/menu/aa;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->k:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/dolphin/browser/menu/ab;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/ab;-><init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->l:Landroid/view/View$OnClickListener;

    .line 85
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 87
    iput-object p3, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 88
    iput p4, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 89
    iput-boolean p5, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    .line 90
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b()V

    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->i:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->i:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->j:Lcom/dolphin/browser/b/l;

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;Lcom/dolphin/browser/b/l;)V

    .line 203
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    invoke-direct {p0, p2}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 235
    const/4 v1, 0x0

    .line 237
    :try_start_0
    new-instance v0, Lcom/e/a/z;

    invoke-direct {v0, v2}, Lcom/e/a/z;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bb;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e()V

    .line 244
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 248
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->removeAllViews()V

    .line 105
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->addView(Landroid/view/View;)V

    .line 108
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->addView(Landroid/view/View;)V

    .line 115
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->i:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 121
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    if-ne v4, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e()V

    .line 154
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f()V

    .line 155
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->i:Lcom/dolphin/browser/extensions/ThemeManager;

    iget-object v2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 163
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 166
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setOrientation(I)V

    .line 167
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setGravity(I)V

    .line 168
    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    return-void

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a()I

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setGravity(I)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setOrientation(I)V

    .line 172
    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    .line 187
    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b:Landroid/content/Context;

    const-string v3, "dolphin://addon?pkg=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/f/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/e/a/z;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    .line 325
    :goto_0
    return-object v0

    .line 293
    :cond_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 294
    new-array v0, v10, [I

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 304
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 305
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 306
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 308
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 309
    invoke-virtual {v5, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 310
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 311
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 312
    invoke-virtual {v3, v0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 315
    new-array v2, v9, [I

    const v3, 0x10100a2

    aput v3, v2, v8

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 319
    new-array v2, v10, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 322
    new-array v2, v9, [I

    const v3, 0x101009e

    aput v3, v2, v8

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 325
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 294
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 319
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->f:I

    .line 273
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->e:Lcom/dolphin/browser/extensions/n;

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b()V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->c()V

    .line 134
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
