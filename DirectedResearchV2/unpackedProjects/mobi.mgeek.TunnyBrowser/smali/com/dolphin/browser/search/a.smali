.class public Lcom/dolphin/browser/search/a;
.super Lcom/dolphin/browser/search/k;
.source "MixedSuggestionsAdapter.java"


# static fields
.field private static final r:Ljava/lang/String;

.field private static final s:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/dolphin/browser/search/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/search/a;->r:Ljava/lang/String;

    .line 232
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_visited"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/a;->s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/k;-><init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V

    .line 132
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/search/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/search/a;->s:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/dolphin/browser/search/q;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dolphin/browser/search/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/b;-><init>(Lcom/dolphin/browser/search/a;)V

    return-object v0
.end method

.method protected b()Lcom/dolphin/browser/search/q;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/dolphin/browser/search/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/d;-><init>(Lcom/dolphin/browser/search/a;)V

    return-object v0
.end method
