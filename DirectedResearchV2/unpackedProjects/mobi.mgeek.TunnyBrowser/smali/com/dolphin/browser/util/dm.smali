.class public Lcom/dolphin/browser/util/dm;
.super Ljava/lang/Object;
.source "UpgradeHomeDataHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/f/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/util/dm;->a:Lcom/dolphin/browser/f/e/g;

    return-void
.end method

.method public static a()Lcom/dolphin/browser/f/e/g;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dolphin/browser/util/dm;->a:Lcom/dolphin/browser/f/e/g;

    return-object v0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/dolphin/browser/util/dn;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/dn;-><init>(Z)V

    sput-object v0, Lcom/dolphin/browser/util/dm;->a:Lcom/dolphin/browser/f/e/g;

    .line 27
    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    .prologue
    .line 8
    invoke-static {p0}, Lcom/dolphin/browser/util/dm;->c(Z)V

    return-void
.end method

.method private static c(Z)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/dolphin/browser/util/do;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/do;-><init>(Z)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 44
    return-void
.end method
