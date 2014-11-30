.class public Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;
.super Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;
.source "SearchTabContainerMostVisited.java"


# static fields
.field protected static f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-1 AS folder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0 AS is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(JJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visits != 0 AND date < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;-><init>(Landroid/content/Context;)V

    .line 101
    return-object v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->c(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;

    .line 120
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e065d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->b:Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00e4

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->c:Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00e5

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 139
    if-eqz v3, :cond_2

    .line 140
    invoke-direct {p0, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    :goto_1
    if-eqz v1, :cond_3

    .line 145
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_2
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->a:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00ea

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    return-void

    .line 131
    :cond_1
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 149
    :cond_3
    iget-object v1, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->d:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 196
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(I)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->f()V

    .line 205
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e053f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08037d

    if-ne v0, v1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->d:Lcom/dolphin/browser/search/p;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->g:Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/search/y;->h:Lcom/dolphin/browser/search/y;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;I)V

    .line 165
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->g()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080302

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->g()V

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
    .line 174
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->d:Lcom/dolphin/browser/search/p;

    sget-object v2, Lcom/dolphin/browser/search/y;->h:Lcom/dolphin/browser/search/y;

    invoke-virtual {v2}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;IZ)V

    .line 177
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->g()V

    .line 178
    return-void
.end method

.method protected p()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Lcom/dolphin/browser/bookmark/bt;->a()Lcom/dolphin/browser/bookmark/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bt;->e()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->a(JJ)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v5, "visits DESC"

    .line 83
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 84
    sget-object v2, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->f:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerMostVisited;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
