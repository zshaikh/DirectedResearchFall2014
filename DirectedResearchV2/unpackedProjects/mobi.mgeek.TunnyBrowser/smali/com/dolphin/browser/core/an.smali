.class abstract Lcom/dolphin/browser/core/an;
.super Ljava/lang/Object;
.source "TabImpl.java"

# interfaces
.implements Lcom/dolphin/browser/core/ITab;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Lcom/dolphin/browser/core/bh;

.field private F:Z

.field private G:Z

.field private final H:Landroid/view/ViewGroup;

.field private I:I

.field private J:I

.field private K:Landroid/net/http/SslError;

.field private L:Z

.field private a:Landroid/os/Bundle;

.field private b:Z

.field private c:I

.field private d:I

.field protected e:Z

.field protected f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/dolphin/browser/core/ITab;

.field protected h:Lcom/dolphin/browser/core/k;

.field protected i:Lcom/dolphin/browser/core/j;

.field protected j:Z

.field protected final k:Lcom/dolphin/browser/core/TabManager;

.field protected l:Lcom/dolphin/browser/core/ar;

.field protected m:Z

.field protected n:Z

.field protected o:J

.field protected p:Landroid/view/View;

.field protected q:Lcom/dolphin/browser/core/IWebViewCallback;

.field private final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/TabManager;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/dolphin/browser/core/an;->c:I

    .line 86
    iput v0, p0, Lcom/dolphin/browser/core/an;->d:I

    .line 105
    iput-boolean v2, p0, Lcom/dolphin/browser/core/an;->y:Z

    .line 107
    iput-boolean v2, p0, Lcom/dolphin/browser/core/an;->z:Z

    .line 658
    new-instance v0, Lcom/dolphin/browser/core/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/ao;-><init>(Lcom/dolphin/browser/core/an;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/an;->q:Lcom/dolphin/browser/core/IWebViewCallback;

    .line 156
    invoke-virtual {p1}, Lcom/dolphin/browser/core/TabManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    .line 158
    iput-boolean v2, p0, Lcom/dolphin/browser/core/an;->b:Z

    .line 159
    iput-boolean v2, p0, Lcom/dolphin/browser/core/an;->j:Z

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/core/an;->r:Landroid/util/SparseArray;

    .line 161
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/core/an;->s:Landroid/util/SparseArray;

    .line 162
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iput p2, p0, Lcom/dolphin/browser/core/an;->I:I

    .line 166
    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/core/an;->setData(ILjava/lang/Object;)V

    .line 167
    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/core/an;->setData(ILjava/lang/Object;)V

    .line 168
    iput v2, p0, Lcom/dolphin/browser/core/an;->u:I

    .line 169
    iput-boolean v2, p0, Lcom/dolphin/browser/core/an;->x:Z

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/core/an;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/dolphin/browser/core/an;->J:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/dolphin/browser/core/ar;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ar;-><init>()V

    .line 232
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/core/ar;->c:Landroid/graphics/Bitmap;

    .line 235
    iget-object v1, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 236
    iget-object v1, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    .line 238
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    .line 239
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 289
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->j:Z

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->b(Z)Landroid/view/View;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_1

    .line 292
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 299
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 303
    :cond_1
    return-void
.end method

.method private e()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getChildTabs()Ljava/util/Vector;

    move-result-object v0

    .line 428
    :goto_0
    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 431
    :cond_0
    return-object v0

    .line 426
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/az;->a()Lcom/dolphin/browser/core/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/az;->b()Ljava/util/Vector;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->K:Landroid/net/http/SslError;

    .line 1188
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 604
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->getSecureStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 609
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 614
    :cond_0
    return-void
.end method

.method a(Lcom/dolphin/browser/core/j;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->i:Lcom/dolphin/browser/core/j;

    .line 367
    return-void
.end method

.method a(Lcom/dolphin/browser/core/k;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->h:Lcom/dolphin/browser/core/k;

    .line 359
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method protected a(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public addChildTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {p1, p0}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    .line 441
    return-void
.end method

.method protected abstract b(Z)Landroid/view/View;
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->j:Z

    .line 322
    const-string v0, "TabImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putInBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method protected c(I)V
    .locals 0

    .prologue
    .line 1191
    iput p1, p0, Lcom/dolphin/browser/core/an;->c:I

    .line 1192
    return-void
.end method

.method c(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->e()Ljava/util/Vector;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 215
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 216
    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 222
    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->addChildTab(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 226
    :cond_2
    return-void
.end method

.method protected final c(Z)V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/core/an;->o:J

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->j:Z

    .line 338
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->n:Z

    .line 339
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/an;->a(Z)V

    .line 340
    const-string v0, "TabImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putInForeground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public canStateUndo()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public clearInLoad()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->m:Z

    .line 562
    return-void
.end method

.method public clearPageData()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 648
    return-void
.end method

.method public closeOnExit()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->b:Z

    return v0
.end method

.method protected final d(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/dolphin/browser/core/an;->I:I

    .line 179
    return-void
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 1008
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->L:Z

    .line 1009
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->e:Z

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->e()Ljava/util/Vector;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 192
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 199
    iget-object v2, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/core/ITab;->setParentTab(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    check-cast v0, Lcom/dolphin/browser/core/an;

    iget-object v0, v0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 209
    :goto_2
    return-void

    .line 207
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/core/az;->a()Lcom/dolphin/browser/core/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/az;->b(Lcom/dolphin/browser/core/ITab;)V

    goto :goto_2
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->d()V

    .line 307
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->j:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 310
    :cond_0
    return-void
.end method

.method public getChildTabs()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    return-object v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFakeProgress()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/dolphin/browser/core/an;->J:I

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->c:Landroid/graphics/Bitmap;

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlatHistoryCount()I
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x1

    return v0
.end method

.method public getFlatHistoryIndex()I
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public getLastChildTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastGameModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVideoModeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->e()Ljava/util/Vector;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 402
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 403
    if-ltz v1, :cond_0

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLockIconType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 596
    iget v0, p0, Lcom/dolphin/browser/core/an;->c:I

    return v0
.end method

.method public getMinWebAppModePageIndex()I
    .locals 1

    .prologue
    .line 1123
    const/4 v0, -0x1

    return v0
.end method

.method public getPageData(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentTab()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public getRightSiblingTab()Lcom/dolphin/browser/core/ITab;
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->e()Ljava/util/Vector;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 413
    invoke-virtual {v0, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 414
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ITab;

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSSLError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->K:Landroid/net/http/SslError;

    return-object v0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSecureStatus()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/dolphin/browser/core/an;->c:I

    return v0
.end method

.method public getSecurityIconType()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/dolphin/browser/core/an;->u:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/dolphin/browser/core/an;->I:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->d()V

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->H:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWebAppPreviewInfo()Lcom/dolphin/browser/core/bh;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->E:Lcom/dolphin/browser/core/bh;

    return-object v0
.end method

.method public getWebView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->c(Z)V

    .line 330
    return-void
.end method

.method public hasSSLError()Z
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->K:Landroid/net/http/SslError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Lcom/dolphin/browser/core/k;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->h:Lcom/dolphin/browser/core/k;

    return-object v0
.end method

.method public inLoad()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->m:Z

    return v0
.end method

.method public isBackOrForward()Z
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->t:Z

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->L:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->e:Z

    return v0
.end method

.method public isGameMode()Z
    .locals 1

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->A:Z

    return v0
.end method

.method public isInForeground()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->j:Z

    return v0
.end method

.method public isLoadingReceivedError()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->z:Z

    return v0
.end method

.method public isOpeningContentUrl()Z
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->x:Z

    return v0
.end method

.method public isOpeningInNewTab()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->F:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->e:Z

    return v0
.end method

.method public isTitleReceived()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->w:Z

    return v0
.end method

.method public isVideoMode()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->C:Z

    return v0
.end method

.method public isWebappMode()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->v:Z

    return v0
.end method

.method j()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v0, Lcom/dolphin/browser/core/ar;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ar;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    .line 548
    const-string v2, "currentUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    .line 549
    const-string v2, "currentTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    .line 551
    iput-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    goto :goto_0
.end method

.method protected k()Lcom/dolphin/browser/core/ITab;
    .locals 0

    .prologue
    .line 651
    return-object p0
.end method

.method public needShowSearchEngineTab()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->y:Z

    return v0
.end method

.method public performResume()V
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->n:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->h()V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->b()V

    goto :goto_0
.end method

.method public resetLockIcon(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->a(Landroid/net/http/SslError;)V

    .line 571
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->getSecureStatus()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/an;->d:I

    .line 573
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 578
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 579
    return-void

    .line 576
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 507
    if-nez p1, :cond_0

    .line 515
    :goto_0
    return v0

    .line 510
    :cond_0
    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->e:Z

    .line 511
    iput-object v1, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    .line 512
    iput-object v1, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    .line 513
    const-string v0, "closeonexit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/core/an;->b:Z

    .line 514
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/an;->I:I

    .line 515
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/an;->b(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public revertLockIcon()V
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/dolphin/browser/core/an;->d:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/an;->c(I)V

    .line 588
    return-void
.end method

.method public final saveState()Z
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/dolphin/browser/core/an;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string v0, "closeonexit"

    iget-boolean v2, p0, Lcom/dolphin/browser/core/an;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const-string v0, "type"

    iget v2, p0, Lcom/dolphin/browser/core/an;->I:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    if-eqz v0, :cond_2

    .line 477
    const-string v0, "parentTab"

    iget-object v2, p0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    iget-object v3, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/core/an;->a()V

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 483
    const-string v0, "currentUrl"

    iget-object v2, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v2, v2, Lcom/dolphin/browser/core/ar;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v0, v0, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 486
    const-string v0, "currentTitle"

    iget-object v2, p0, Lcom/dolphin/browser/core/an;->l:Lcom/dolphin/browser/core/ar;

    iget-object v2, v2, Lcom/dolphin/browser/core/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_4
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/core/an;->a(Landroid/os/Bundle;)Z

    move-result v0

    .line 489
    iput-object v1, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setBottomBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->i:Lcom/dolphin/browser/core/j;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->i:Lcom/dolphin/browser/core/j;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/j;->a(Landroid/view/View;)V

    .line 1168
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->p:Landroid/view/View;

    .line 1169
    return-void
.end method

.method public setCloseOnExit(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->b:Z

    .line 140
    return-void
.end method

.method public setData(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    return-void
.end method

.method public setGameMode(Z)V
    .locals 0

    .prologue
    .line 1083
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->A:Z

    .line 1084
    return-void
.end method

.method public setIsBackOrForward(Z)V
    .locals 0

    .prologue
    .line 1018
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->t:Z

    .line 1019
    return-void
.end method

.method public setIsOpeningContentUrl(Z)V
    .locals 0

    .prologue
    .line 1054
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->x:Z

    .line 1055
    return-void
.end method

.method public setIsOpeningInNewTab(Z)V
    .locals 0

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->F:Z

    .line 1149
    return-void
.end method

.method public setIsTitleReceived(Z)V
    .locals 0

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->w:Z

    .line 1045
    return-void
.end method

.method public setLastGameModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->B:Ljava/lang/String;

    .line 1094
    return-void
.end method

.method public setLastVideoModeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->D:Ljava/lang/String;

    .line 1114
    return-void
.end method

.method public setLoadingReceivedErrorState(Z)V
    .locals 0

    .prologue
    .line 1078
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->z:Z

    .line 1079
    return-void
.end method

.method public setPageData(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    return-void
.end method

.method public setParentTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    .line 450
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->g:Lcom/dolphin/browser/core/ITab;

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 456
    if-nez p1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    const-string v1, "parentTab"

    iget-object v2, p0, Lcom/dolphin/browser/core/an;->k:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v2, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->a:Landroid/os/Bundle;

    .line 530
    return-void
.end method

.method public setSecurityIconType(I)V
    .locals 0

    .prologue
    .line 1022
    iput p1, p0, Lcom/dolphin/browser/core/an;->u:I

    .line 1023
    return-void
.end method

.method public setShowSearchEngineTabState(Z)V
    .locals 0

    .prologue
    .line 1066
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->y:Z

    .line 1067
    return-void
.end method

.method public setStoppedLoadingByUser(Z)V
    .locals 0

    .prologue
    .line 1156
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->G:Z

    .line 1157
    return-void
.end method

.method public setVideoMode(Z)V
    .locals 0

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->C:Z

    .line 1104
    return-void
.end method

.method public setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/dolphin/browser/core/an;->E:Lcom/dolphin/browser/core/bh;

    .line 1140
    return-void
.end method

.method public setWebappMode(Z)V
    .locals 0

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/dolphin/browser/core/an;->v:Z

    .line 1035
    return-void
.end method

.method public stoppedLoadingByUser()Z
    .locals 1

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcom/dolphin/browser/core/an;->G:Z

    return v0
.end method
