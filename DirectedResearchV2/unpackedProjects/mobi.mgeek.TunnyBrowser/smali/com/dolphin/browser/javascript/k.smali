.class public Lcom/dolphin/browser/javascript/k;
.super Ljava/lang/Object;
.source "JsApiManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/javascript/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dolphin-browser.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dolphin.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/javascript/k;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/javascript/k;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/dolphin/browser/javascript/k;->b:Lcom/dolphin/browser/javascript/k;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/dolphin/browser/javascript/k;

    invoke-direct {v0}, Lcom/dolphin/browser/javascript/k;-><init>()V

    sput-object v0, Lcom/dolphin/browser/javascript/k;->b:Lcom/dolphin/browser/javascript/k;

    .line 29
    :cond_0
    sget-object v0, Lcom/dolphin/browser/javascript/k;->b:Lcom/dolphin/browser/javascript/k;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    sget-object v3, Lcom/dolphin/browser/javascript/k;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
