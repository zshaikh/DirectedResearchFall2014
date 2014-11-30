.class public Lcom/dolphin/browser/bookmark/al;
.super Ljava/lang/Object;
.source "BookmarkFileExporter.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/dolphin/browser/bookmark/am;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
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

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_order"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmark/al;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/al;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dolphin/browser/bookmark/al;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/al;->c:Lcom/dolphin/browser/bookmark/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/al;->c:Lcom/dolphin/browser/bookmark/am;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/am;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/al;->c:Lcom/dolphin/browser/bookmark/am;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/bookmark/am;->b(Z)Z

    .line 47
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/am;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/al;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/bookmark/am;-><init>(Lcom/dolphin/browser/bookmark/al;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/al;->c:Lcom/dolphin/browser/bookmark/am;

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/al;->c:Lcom/dolphin/browser/bookmark/am;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 49
    return-void
.end method
