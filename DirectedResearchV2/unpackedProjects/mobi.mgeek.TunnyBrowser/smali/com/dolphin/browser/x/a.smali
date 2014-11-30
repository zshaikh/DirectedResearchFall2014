.class public Lcom/dolphin/browser/x/a;
.super Ljava/lang/Object;
.source "BaiduGate.java"

# interfaces
.implements Lcom/dolphin/browser/x/c;


# static fields
.field private static a:J

.field private static b:Lcom/dolphin/browser/x/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/dolphin/browser/x/a;->a:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/x/a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/x/a;->b:Lcom/dolphin/browser/x/a;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/dolphin/browser/x/a;

    invoke-direct {v0}, Lcom/dolphin/browser/x/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/x/a;->b:Lcom/dolphin/browser/x/a;

    .line 24
    :cond_0
    sget-object v0, Lcom/dolphin/browser/x/a;->b:Lcom/dolphin/browser/x/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gate.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    const-string v1, "http://gate.baidu.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v0, "src"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
