.class public Lcom/dolphin/browser/bookmark/ap;
.super Ljava/lang/Object;
.source "BookmarkFileImporter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/bookmark/aq;

.field private c:Lcom/dolphin/browser/bookmark/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ap;->a:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/dolphin/browser/bookmark/ar;

    invoke-direct {v0}, Lcom/dolphin/browser/bookmark/ar;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->c:Lcom/dolphin/browser/bookmark/ar;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/ap;)Lcom/dolphin/browser/bookmark/ar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->c:Lcom/dolphin/browser/bookmark/ar;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->b:Lcom/dolphin/browser/bookmark/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->b:Lcom/dolphin/browser/bookmark/aq;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/aq;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->b:Lcom/dolphin/browser/bookmark/aq;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/bookmark/aq;->b(Z)Z

    .line 44
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/aq;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ap;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/bookmark/aq;-><init>(Lcom/dolphin/browser/bookmark/ap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->b:Lcom/dolphin/browser/bookmark/aq;

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ap;->b:Lcom/dolphin/browser/bookmark/aq;

    new-array v1, v2, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 46
    return-void
.end method
