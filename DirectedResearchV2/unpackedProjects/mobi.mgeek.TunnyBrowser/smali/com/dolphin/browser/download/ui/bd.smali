.class public Lcom/dolphin/browser/download/ui/bd;
.super Landroid/widget/RelativeLayout;
.source "DownloadingItem.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/dolphin/browser/download/ui/HorizontalProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/dolphin/browser/download/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->setTag(Ljava/lang/Object;)V

    .line 38
    const v0, 0x4285570a

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->setMinimumHeight(I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03003d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->a:Landroid/widget/ImageView;

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->b:Lcom/dolphin/browser/download/ui/HorizontalProgressBar;

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->c:Landroid/widget/TextView;

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->d:Landroid/widget/TextView;

    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->e:Landroid/view/View;

    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->f:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bd;->b()V

    .line 47
    return-void
.end method

.method private b(Lcom/dolphin/browser/download/d;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method private c(Lcom/dolphin/browser/download/d;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bd;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bd;->f:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->m()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c8

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 81
    const-string v3, "title"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bd;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/download/d;)Landroid/content/Context;
    .locals 10

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->b:Lcom/dolphin/browser/download/ui/HorizontalProgressBar;

    .line 93
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->c:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a()V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->j()J

    move-result-wide v3

    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bd;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 99
    invoke-static {v5, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->e()J

    move-result-wide v6

    .line 101
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 102
    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-wide/16 v8, 0x64

    mul-long/2addr v3, v8

    div-long/2addr v3, v6

    long-to-int v3, v3

    .line 105
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a(I)V

    .line 109
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-object v5

    .line 107
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a(I)V

    goto :goto_0
.end method

.method private e(Lcom/dolphin/browser/download/d;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f0e01cb

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->d:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->e:Landroid/view/View;

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bd;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 118
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->d()I

    move-result v4

    .line 119
    invoke-static {v4}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a3

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0178

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a017b

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->l()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 125
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 129
    const/16 v1, 0xbe

    if-ne v4, v1, :cond_2

    .line 130
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_2
    const/16 v1, 0xbf

    if-ne v4, v1, :cond_3

    .line 132
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_3
    const/16 v1, 0xc1

    if-ne v4, v1, :cond_4

    .line 134
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->i()J

    move-result-wide v3

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/download/d;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bd;->g:Lcom/dolphin/browser/download/d;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/download/d;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bd;->g:Lcom/dolphin/browser/download/d;

    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/bd;->b(Lcom/dolphin/browser/download/d;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/bd;->c(Lcom/dolphin/browser/download/d;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/bd;->d(Lcom/dolphin/browser/download/d;)Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/bd;->e(Lcom/dolphin/browser/download/d;)V

    .line 55
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->b:Lcom/dolphin/browser/download/ui/HorizontalProgressBar;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0057

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->setBackgroundColor(I)V

    .line 151
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b7

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bd;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 154
    return-void
.end method
