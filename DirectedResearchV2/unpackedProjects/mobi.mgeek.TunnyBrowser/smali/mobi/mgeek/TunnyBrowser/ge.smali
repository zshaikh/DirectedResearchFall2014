.class abstract Lmobi/mgeek/TunnyBrowser/ge;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/mgeek/TunnyBrowser/gg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:I


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    .line 343
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ge;->b:Landroid/content/Context;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    .line 346
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08022d

    invoke-virtual {p1, v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->a:Landroid/view/ViewGroup;

    .line 347
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->e:Landroid/widget/Button;

    .line 348
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b7

    invoke-virtual {p1, v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->f:Landroid/widget/Button;

    .line 349
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 388
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Ljava/io/File;

    const-string v1, "/dbdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->i(Landroid/content/Context;Z)V

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 416
    const/4 v0, 0x0

    const-string v1, "goto step %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 418
    iput p1, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    .line 419
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/gg;

    .line 420
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gg;->a()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/ge;->a(Landroid/view/View;)V

    .line 421
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gg;->b()V

    .line 423
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ge;->e()V

    .line 360
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->j()I

    move-result v0

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->useVolumeButtonScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setVolumeButtonAction(Landroid/content/Context;I)V

    .line 369
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setOrientation(Landroid/content/Context;I)V

    .line 373
    :cond_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->d:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;->a(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setVolumeButtonAction(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 434
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 435
    :goto_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/ge;->a()V

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ge;->a(I)V

    .line 356
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 427
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 439
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 405
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ge;->a(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 431
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    if-lez v0, :cond_0

    .line 411
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ge;->a(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 394
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08022b

    if-ne v1, v0, :cond_1

    .line 395
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/gg;

    .line 396
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gg;->c()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800b7

    if-ne v1, v0, :cond_0

    .line 398
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ge;->c:Ljava/util/List;

    iget v1, p0, Lmobi/mgeek/TunnyBrowser/ge;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/gg;

    .line 399
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/gg;->d()V

    goto :goto_0
.end method
