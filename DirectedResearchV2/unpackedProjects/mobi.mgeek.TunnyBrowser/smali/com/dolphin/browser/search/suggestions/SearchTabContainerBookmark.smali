.class public Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;
.super Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;
.source "SearchTabContainerBookmark.java"


# static fields
.field protected static f:[Ljava/lang/String;


# instance fields
.field private g:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

.field private h:Lcom/dolphin/browser/bookmark/bl;

.field private i:J

.field private j:Landroid/app/Dialog;

.field private k:I

.field private l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    const/16 v0, 0x9

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

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_build_in"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_order"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;)V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->k:I

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->k:I

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->k:I

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    .line 76
    return-void
.end method

.method private static a(Landroid/content/Context;J)I
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 213
    .line 214
    cmp-long v3, p1, v5

    if-nez v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v2

    .line 216
    :cond_1
    const-wide/16 v3, -0xa

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    move v2, v0

    .line 217
    goto :goto_0

    .line 218
    :cond_2
    const-wide/16 v3, -0xb

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    move v2, v1

    .line 219
    goto :goto_0

    .line 220
    :cond_3
    cmp-long v3, p1, v5

    if-lez v3, :cond_0

    .line 221
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->b(Landroid/content/Context;J)I

    move-result v3

    .line 222
    if-ne v0, v3, :cond_4

    :goto_1
    move v2, v0

    .line 229
    goto :goto_0

    .line 224
    :cond_4
    if-ne v1, v3, :cond_5

    move v0, v1

    .line 225
    goto :goto_1

    :cond_5
    move v0, v2

    .line 227
    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->k:I

    return p1
.end method

.method private a(JI)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 259
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 262
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JIZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(JII)Landroid/view/View;
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 684
    new-instance v1, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;-><init>(Landroid/content/Context;)V

    .line 685
    invoke-virtual {v1, p1, p2}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 686
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, p4}, Lcom/dolphin/browser/bookmark/b/i;->a(I)V

    .line 688
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setEnabled(Z)V

    .line 689
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->s()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setClickable(Z)V

    .line 690
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->s()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    .line 692
    return-object v1

    .line 688
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)Lcom/dolphin/browser/bookmark/bl;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    return-object v0
.end method

.method private a(JZ)V
    .locals 2

    .prologue
    .line 485
    iput-wide p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    .line 486
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->o()V

    .line 488
    if-eqz p3, :cond_0

    .line 489
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 492
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/b/i;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 424
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->d(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->c(Z)V

    .line 427
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;JZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 377
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e065d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_0
    iget-object v2, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    if-eqz p4, :cond_1

    .line 383
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->a(J)V

    .line 384
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    iget-object v2, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    :goto_0
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->a(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 395
    if-eqz v2, :cond_2

    .line 396
    invoke-direct {p0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    :goto_1
    if-eqz v0, :cond_3

    .line 402
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :goto_2
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 406
    :cond_3
    iget-object v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->g:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->v()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->v()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;[I)[I
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    return-object p1
.end method

.method private static b(Landroid/content/Context;J)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 237
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v6

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 247
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    if-eq v0, v7, :cond_0

    .line 254
    :goto_2
    return v0

    :cond_0
    move v0, v6

    goto :goto_2

    .line 248
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private b(J)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0xa

    const-wide/16 v4, -0xb

    const/4 v0, 0x0

    .line 58
    cmp-long v1, p1, v6

    if-eqz v1, :cond_0

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/bl;->c()J

    move-result-wide v1

    .line 64
    cmp-long v3, v1, v6

    if-eqz v3, :cond_0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Landroid/content/Context;J)I

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    new-instance v2, Lcom/dolphin/browser/search/suggestions/o;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/suggestions/o;-><init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/dolphin/browser/bookmark/bl;->a(JILcom/dolphin/browser/bookmark/bn;)V

    .line 481
    return-void
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 515
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0161

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0159

    new-instance v2, Lcom/dolphin/browser/search/suggestions/q;

    invoke-direct {v2, p0, p1, p2}, Lcom/dolphin/browser/search/suggestions/q;-><init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lcom/dolphin/browser/search/suggestions/p;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/search/suggestions/p;-><init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->j:Landroid/app/Dialog;

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->j:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 551
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->g:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v1, Lcom/dolphin/browser/search/suggestions/n;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/search/suggestions/n;-><init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->v()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->g:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    goto :goto_0
.end method

.method private t()Z
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 202
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bq;->c()J

    move-result-wide v0

    .line 203
    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/q;->c(J)Z

    move-result v4

    if-nez v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-wide v0, v2

    .line 208
    :cond_1
    return-wide v0
.end method

.method private v()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private w()I
    .locals 4

    .prologue
    .line 657
    iget-wide v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 658
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->k:I

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Landroid/view/View;
    .locals 4

    .prologue
    .line 670
    const-wide/16 v0, -0xa

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00e5

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02005f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private y()Landroid/view/View;
    .locals 4

    .prologue
    .line 676
    const-wide/16 v0, -0xb

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0278

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020133

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    aget v0, v0, p1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f(I)I

    move-result v0

    goto :goto_0
.end method

.method protected a(JIZ)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f:[Ljava/lang/String;

    move-wide v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J[Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    aget v0, v0, p1

    .line 285
    packed-switch v0, :pswitch_data_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 287
    :pswitch_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->x()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->y()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a()V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->g:Lcom/dolphin/browser/bookmark/BookmarkPathBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/BookmarkPathBar;->a()V

    .line 127
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/dolphin/browser/bookmark/bl;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/bl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->d(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->u()J

    move-result-wide v0

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c(J)V

    .line 97
    iput-wide v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    .line 98
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 363
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    .line 364
    :goto_0
    if-eqz v1, :cond_2

    instance-of v0, p1, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 365
    check-cast v0, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {p0, v0, p2, p3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/bookmark/b/i;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 369
    :cond_0
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 366
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 367
    check-cast v0, Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Lcom/dolphin/browser/search/suggestions/SuggestionBookmarkItem;Landroid/content/Context;Landroid/database/Cursor;Z)V

    goto :goto_1
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->l:[I

    aget v0, v0, p1

    .line 318
    packed-switch v0, :pswitch_data_0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 320
    :pswitch_0
    const-wide/16 v0, -0xa

    goto :goto_0

    .line 322
    :pswitch_1
    const-wide/16 v0, -0xb

    goto :goto_0

    .line 324
    :pswitch_2
    const-wide/16 v0, -0xc

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 567
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 586
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e054a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(I)V
    .locals 3

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 594
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 595
    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/provider/Browser;->deleteBookmark(Landroid/content/ContentResolver;J)Z

    .line 596
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f()V

    .line 597
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 346
    invoke-super {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->i()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h()Landroid/database/Cursor;

    move-result-object v2

    .line 351
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    .line 353
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    .line 356
    goto :goto_0

    :cond_2
    move v2, v1

    .line 352
    goto :goto_1
.end method

.method protected j()I
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j()I

    move-result v0

    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-super {p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->m()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->n()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 436
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f080302

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 437
    iget-wide v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(J)V

    .line 439
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 445
    .line 446
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 447
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->b(I)J

    move-result-wide v0

    .line 448
    check-cast p2, Lcom/dolphin/browser/bookmark/b/i;

    .line 449
    iget-object v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/b/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    .line 450
    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JZ)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v0

    sub-int v1, p3, v0

    .line 454
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->e(I)Landroid/database/Cursor;

    move-result-object v0

    .line 455
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    .line 457
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v7, 0x7f0e065d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_2
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->f(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    .line 462
    :goto_1
    if-eqz v1, :cond_4

    .line 463
    invoke-direct {p0, v5, v6, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JZ)V

    .line 464
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {v1, v5, v6, v0}, Lcom/dolphin/browser/bookmark/bl;->a(JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 461
    goto :goto_1

    .line 465
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->d:Lcom/dolphin/browser/search/p;

    sget-object v1, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v1

    invoke-interface {v0, v4, v1, v3}, Lcom/dolphin/browser/search/p;->a(Ljava/lang/String;IZ)V

    .line 468
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->f()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget-wide v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->w()I

    move-result v2

    sub-int v3, p3, v2

    .line 612
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->e(I)Landroid/database/Cursor;

    move-result-object v4

    .line 613
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    .line 614
    :goto_1
    if-eqz v2, :cond_3

    .line 615
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->d(J)V

    move v0, v1

    .line 619
    goto :goto_0

    :cond_2
    move v2, v0

    .line 613
    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 617
    invoke-super/range {v0 .. v5}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected p()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->i:J

    .line 188
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Landroid/content/Context;J)I

    move-result v2

    .line 189
    const-wide/16 v3, -0xa

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, -0xb

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    const-wide/16 v0, 0x0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->r()V

    .line 198
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(JI)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->h:Lcom/dolphin/browser/bookmark/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method r()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 631
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 632
    const/4 v1, 0x0

    .line 633
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    invoke-static {v0}, Lcom/dolphin/browser/bookmark/bt;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    const/16 v3, -0x66

    aput v3, v2, v1

    .line 638
    :goto_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/bt;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/16 v1, -0x67

    aput v1, v2, v0

    .line 640
    add-int/lit8 v0, v0, 0x1

    .line 644
    :cond_0
    :goto_1
    new-instance v1, Lcom/dolphin/browser/search/suggestions/r;

    invoke-direct {v1, p0, v2, v0}, Lcom/dolphin/browser/search/suggestions/r;-><init>(Lcom/dolphin/browser/search/suggestions/SearchTabContainerBookmark;[II)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 653
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method
