.class public Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;
.super Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;
.source "SearchTabContainerSearchRecord.java"


# static fields
.field public static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "search"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_category"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "search_engine_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->c(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;

    .line 86
    invoke-static {p3}, Lcom/dolphin/browser/search/suggestions/t;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/search/suggestions/t;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->a(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    :cond_0
    const/4 v1, 0x1

    .line 92
    :goto_0
    if-eqz v1, :cond_1

    .line 93
    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->i:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->j:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    :goto_1
    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->b(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->b:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->c(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->e:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->d(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->b:Landroid/widget/TextView;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00e4

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->c:Landroid/widget/TextView;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00e5

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->e:Landroid/widget/TextView;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->d:Landroid/widget/TextView;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00e3

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->d:Landroid/widget/TextView;

    sget-object v5, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v5, 0x7f02025b

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    if-eqz v1, :cond_3

    .line 124
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_3
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->h:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00ea

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    return-void

    .line 96
    :cond_1
    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->j:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 97
    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->i:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 103
    :cond_2
    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->b:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->b(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->c:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->c(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 126
    :cond_3
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v1

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/t;->c(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 132
    :cond_4
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method protected b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->e(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/t;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/search/suggestions/t;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/t;->c(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(I)V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/dolphin/browser/search/suggestions/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/search/suggestions/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/search/suggestions/m;->a(J)Z

    .line 242
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->f()V

    .line 243
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e053f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v1, v0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/t;

    .line 152
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v3, 0x7f08037d

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->d:Lcom/dolphin/browser/search/p;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/t;->a(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;I)V

    .line 155
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->e()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080302

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->g()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->d:Lcom/dolphin/browser/search/p;

    invoke-virtual {p0, p3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->c(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;IZ)V

    .line 165
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->e()V

    .line 166
    return-void
.end method

.method protected p()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/search/suggestions/SearchTabContainerSearchRecord;->f:[Ljava/lang/String;

    const-string v5, "date DESC "

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
