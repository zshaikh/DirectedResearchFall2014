.class public Lcom/dolphin/browser/download/ui/bb;
.super Landroid/widget/RelativeLayout;
.source "DownloadedItem.java"


# instance fields
.field private a:Lcom/dolphin/browser/download/d;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bb;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/bb;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03001c

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/download/ui/bb;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->b:Landroid/widget/ImageView;

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->c:Landroid/widget/TextView;

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->d:Landroid/widget/TextView;

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->e:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bb;->a()V

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f0a017b

    .line 55
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/bb;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bb;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 59
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bb;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bb;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/bb;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a004d

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    return-void
.end method

.method public a(Lcom/dolphin/browser/download/d;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bb;->a:Lcom/dolphin/browser/download/d;

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 74
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/download/e;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/bb;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->b()Ljava/lang/String;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_7

    .line 82
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    :goto_0
    if-nez v0, :cond_0

    .line 85
    if-nez v3, :cond_3

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c8

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    :goto_1
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 98
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 99
    iget-object v4, p0, Lcom/dolphin/browser/download/ui/bb;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->e()J

    move-result-wide v6

    .line 109
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->d()I

    move-result v0

    .line 110
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 117
    :goto_3
    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01a5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    :goto_4
    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->f()J

    move-result-wide v0

    .line 126
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/bb;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/cn;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    return-void

    .line 89
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 91
    const-string v7, "title"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bb;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/dolphin/browser/download/d;->a()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 103
    const/16 v7, 0x21

    invoke-virtual {v6, v0, v2, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 113
    goto :goto_3

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bb;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public b()Lcom/dolphin/browser/download/d;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bb;->a:Lcom/dolphin/browser/download/d;

    return-object v0
.end method
