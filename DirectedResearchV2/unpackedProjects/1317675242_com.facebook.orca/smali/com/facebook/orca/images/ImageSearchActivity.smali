.class public Lcom/facebook/orca/images/ImageSearchActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ImageSearchActivity.java"


# instance fields
.field private A:Landroid/os/Bundle;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private k:Lcom/facebook/orca/images/ImageSearchListAdapter;

.field private m:Landroid/view/inputmethod/InputMethodManager;

.field private n:Lcom/facebook/orca/images/ImageCache;

.field private o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/GridView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 56
    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    .line 60
    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageSearchActivity;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    const-string v1, "AppId"

    const-string v2, "E71A777BBC850CF326C995ECDA7AFA3577A5749F"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "Query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "Sources"

    const-string v2, "Image"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "Version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "Market"

    const-string v2, "en-us"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "Adult"

    const-string v2, "Strict"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "Image.Count"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "Image.Offset"

    mul-int/lit8 v2, p2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput p2, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    .line 209
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "image_search"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const v1, 0x7f0a00fb

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/ImageSearchListAdapter;->a(I)Landroid/os/Bundle;

    move-result-object v0

    .line 276
    const-string v1, "Thumbnail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 277
    const-string v1, "Url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Lcom/facebook/orca/images/ImageCache;

    new-instance v2, Lcom/facebook/orca/images/ImageCacheKey;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 281
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->finish()V

    .line 285
    :cond_0
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageSearchActivity;->d(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->e()V

    .line 234
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "SearchResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 225
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 226
    const-string v2, "Total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 227
    div-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    .line 228
    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    .line 229
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->A:Landroid/os/Bundle;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->f()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->c()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    if-lez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 188
    :cond_2
    if-nez p1, :cond_0

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->e()V

    return-void
.end method

.method private d(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    const-string v0, "SearchResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 289
    if-nez p0, :cond_0

    move v0, v1

    .line 301
    :goto_0
    return v0

    .line 292
    :cond_0
    const-string v0, "Image"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 293
    if-nez p0, :cond_1

    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "Results"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    if-nez v0, :cond_2

    move v0, v1

    .line 299
    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 237
    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    .line 238
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    .line 239
    iput v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    .line 240
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->A:Landroid/os/Bundle;

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const v1, 0x7f0a00fc

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 246
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->A:Landroid/os/Bundle;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 252
    const-string v1, "Results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const v1, 0x7f0a00fd

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 272
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/ImageSearchListAdapter;->a(Ljava/util/List;)V

    .line 263
    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    if-ge v0, v3, :cond_2

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f0a00f8

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/images/ImageSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    if-lez v1, :cond_3

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    iget v2, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_4

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v6

    .line 268
    goto :goto_1

    :cond_4
    move v1, v6

    .line 269
    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 73
    const-class v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageSearchListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Lcom/facebook/orca/images/ImageSearchListAdapter;

    .line 74
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->n:Lcom/facebook/orca/images/ImageCache;

    .line 76
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 77
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Landroid/widget/Button;

    .line 79
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    .line 80
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->s:Landroid/widget/RelativeLayout;

    .line 81
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->t:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->w:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$1;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$2;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    const-string v0, "imageSearchOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$3;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;

    iget-object v2, p0, Lcom/facebook/orca/images/ImageSearchActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-direct {v1, v2}, Lcom/facebook/orca/ops/TitlebarProgressProgressIndicator;-><init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$4;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$5;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->k:Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->r:Landroid/widget/GridView;

    new-instance v1, Lcom/facebook/orca/images/ImageSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/ImageSearchActivity$6;-><init>(Lcom/facebook/orca/images/ImageSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageSearchActivity;->setContentView(I)V

    .line 67
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "currentQuery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    .line 160
    const-string v0, "currentPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    .line 161
    const-string v0, "currentResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->A:Landroid/os/Bundle;

    .line 162
    const-string v0, "loadingQuery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    .line 163
    const-string v0, "loadingPage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    .line 164
    const-string v0, "numPages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    .line 165
    iget v0, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    if-ltz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageSearchActivity;->f()V

    .line 168
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "currentQuery"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "currentPage"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->z:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v0, "currentResponse"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->A:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    const-string v0, "loadingQuery"

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "loadingPage"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->C:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v0, "numPages"

    iget v1, p0, Lcom/facebook/orca/images/ImageSearchActivity;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    return-void
.end method
