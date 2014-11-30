.class public abstract Lcom/dolphin/browser/util/co;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/dolphin/browser/util/co;
    .locals 2

    .prologue
    .line 1532
    if-nez p0, :cond_0

    .line 1533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_0
    invoke-static {p0}, Lcom/dolphin/browser/util/co;->b(Landroid/content/Context;)Lcom/dolphin/browser/util/co;

    move-result-object v0

    return-object v0
.end method

.method static final b(Landroid/content/Context;)Lcom/dolphin/browser/util/co;
    .locals 2

    .prologue
    .line 1539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1540
    new-instance v0, Lcom/dolphin/browser/util/cp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/cp;-><init>(Landroid/content/Context;)V

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/util/cq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/cq;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/net/Uri;
.end method
