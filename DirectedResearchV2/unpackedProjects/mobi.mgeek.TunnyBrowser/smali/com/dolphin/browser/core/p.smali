.class final Lcom/dolphin/browser/core/p;
.super Ljava/lang/Object;
.source "MixedTab.java"


# instance fields
.field private a:I

.field private b:Lcom/dolphin/browser/core/ITab;

.field private c:Lcom/dolphin/browser/core/IWebHistoryItem;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->copyBackForwardList2()Lcom/dolphin/browser/core/IWebBackForwardList;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentItem()Lcom/dolphin/browser/core/IWebHistoryItem;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/core/p;->c:Lcom/dolphin/browser/core/IWebHistoryItem;

    .line 70
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebBackForwardList;->getCurrentIndex()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/core/p;->a:I

    .line 71
    iput-object p2, p0, Lcom/dolphin/browser/core/p;->b:Lcom/dolphin/browser/core/ITab;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/core/p;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/dolphin/browser/core/p;->a:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/dolphin/browser/core/p;->a:I

    return v0
.end method
