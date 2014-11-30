.class public abstract Lcom/dolphin/browser/bookmark/j;
.super Landroid/widget/BaseAdapter;
.source "BaseBookmarkAdapter.java"


# static fields
.field protected static b:[Ljava/lang/String;

.field protected static c:[Ljava/lang/String;


# instance fields
.field protected final a:Z

.field protected d:Lcom/dolphin/browser/bookmark/n;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/dolphin/browser/bookmark/l;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/dolphin/browser/bookmark/a;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "favicon"

    aput-object v1, v0, v6

    const-string v1, "folder"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/dolphin/browser/bookmark/j;->b:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "favicon"

    aput-object v1, v0, v6

    const-string v1, "-1 AS folder"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0 AS is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmark/j;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    new-instance v0, Lcom/dolphin/browser/bookmark/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/k;-><init>(Lcom/dolphin/browser/bookmark/j;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/j;->d:Lcom/dolphin/browser/bookmark/n;

    .line 77
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/j;->f:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    .line 79
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    const-string v1, "keepBuiltInBookmark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/j;->a:Z

    .line 81
    return-void
.end method

.method private A()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/j;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/dolphin/browser/bookmark/b/c;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    .line 196
    :goto_0
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/j;->e:Z

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->d(Z)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->e(Z)V

    .line 199
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Z)V

    .line 200
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/j;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/j;->j:Z

    return p1
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 298
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/bookmark/a/a;->a(Z)V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->notifyDataSetChanged()V

    .line 303
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a;->b()V

    .line 306
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/j;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/j;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/j;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/j;->k:Z

    return p1
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->f:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/bookmark/a;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/j;->i:Lcom/dolphin/browser/bookmark/a;

    .line 343
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/j;->e:Z

    .line 120
    return-void
.end method

.method public b(I)Lcom/dolphin/browser/bookmark/a/a;
    .locals 5

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 148
    :cond_0
    const-string v0, "BaseBookmarkAdapter"

    const-string v1, "%s.getItem: Invalid position %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    goto :goto_0
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/j;->e:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    .line 156
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 157
    :cond_0
    const-string v0, "BaseBookmarkAdapter"

    const-string v1, "%s.getItemId: Invalid position %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    const-wide/high16 v0, -0x8000000000000000L

    .line 160
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 170
    new-instance v1, Lcom/dolphin/browser/bookmark/b/c;

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/j;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/bookmark/b/c;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/c;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/j;->d:Lcom/dolphin/browser/bookmark/n;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/b/c;->a(Lcom/dolphin/browser/bookmark/n;)V

    .line 173
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/b/c;Lcom/dolphin/browser/bookmark/a/a;)V

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/c;->c(Z)V

    .line 177
    return-object v1
.end method

.method public h()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/j;->j:Z

    if-eqz v0, :cond_0

    .line 232
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/j;->k:Z

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/j;->j:Z

    .line 238
    new-instance v0, Lcom/dolphin/browser/bookmark/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/bookmark/m;-><init>(Lcom/dolphin/browser/bookmark/j;Lcom/dolphin/browser/bookmark/k;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method protected abstract q()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation
.end method

.method public r()V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->t()Landroid/net/Uri;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v1, Lcom/dolphin/browser/bookmark/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/l;-><init>(Lcom/dolphin/browser/bookmark/j;)V

    iput-object v1, p0, Lcom/dolphin/browser/bookmark/j;->g:Lcom/dolphin/browser/bookmark/l;

    .line 250
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/j;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/j;->g:Lcom/dolphin/browser/bookmark/l;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->g:Lcom/dolphin/browser/bookmark/l;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/j;->g:Lcom/dolphin/browser/bookmark/l;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected t()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/j;->b(Z)V

    .line 273
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/j;->b(Z)V

    .line 277
    return-void
.end method

.method public w()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 283
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_1
    return-object v2
.end method

.method public x()I
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->w()Ljava/util/List;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected y()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/j;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/j;->p()V

    .line 312
    :cond_0
    return-void
.end method

.method public z()Lcom/dolphin/browser/bookmark/a;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/j;->i:Lcom/dolphin/browser/bookmark/a;

    return-object v0
.end method
