.class final Lcom/vungle/sdk/j$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 1

    .prologue
    .line 338
    iput-object p1, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/j;B)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/vungle/sdk/j$a;-><init>(Lcom/vungle/sdk/j;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/sdk/j$a;)Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j$a;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/j$a;->b:Z

    .line 344
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 348
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->e(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/vungle/sdk/j$a;->b:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 358
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v5, v0

    .line 359
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->j(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-double v0, v3

    div-double/2addr v0, v9

    iget-object v2, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->k(Lcom/vungle/sdk/j;)I

    move-result v2

    int-to-double v7, v2

    cmpg-double v0, v0, v7

    if-ltz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/j$a;->b:Z

    .line 366
    sget-boolean v0, Lcom/vungle/sdk/n;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->j(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    long-to-double v0, v3

    div-double/2addr v0, v9

    iget-object v2, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v2}, Lcom/vungle/sdk/j;->k(Lcom/vungle/sdk/j;)I

    move-result v2

    int-to-double v7, v2

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->c(Lcom/vungle/sdk/j;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    const-string v1, "Confirm Cancel"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    const-string v1, "Stopping this video early will prevent you from earning your reward. Continue?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    const-string v1, "Keep Watching"

    new-instance v2, Lcom/vungle/sdk/j$a$1;

    invoke-direct {v2, p0}, Lcom/vungle/sdk/j$a$1;-><init>(Lcom/vungle/sdk/j$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const-string v1, "Cancel Video"

    new-instance v2, Lcom/vungle/sdk/j$a$2;

    invoke-direct {v2, p0}, Lcom/vungle/sdk/j$a$2;-><init>(Lcom/vungle/sdk/j$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    new-instance v1, Lcom/vungle/sdk/j$a$3;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/j$a$3;-><init>(Lcom/vungle/sdk/j$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v1, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/sdk/j;->a(Lcom/vungle/sdk/j;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 408
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->g(Lcom/vungle/sdk/j;)V

    .line 409
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->f(Lcom/vungle/sdk/j;)V

    .line 410
    iget-object v0, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->h(Lcom/vungle/sdk/j;)J

    move-result-wide v1

    invoke-interface/range {v0 .. v6}, Lcom/vungle/sdk/j$g;->a(JJJ)V

    goto/16 :goto_0
.end method
