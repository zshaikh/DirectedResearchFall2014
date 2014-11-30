.class public Lcom/dolphin/browser/extensions/q;
.super Lcom/dolphin/browser/extensions/n;
.source "ExtensionStub.java"


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/extensions/a;)V
    .locals 2

    .prologue
    .line 30
    invoke-static {p1}, Lcom/dolphin/browser/extensions/q;->a(Lcom/dolphin/browser/extensions/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/q;->o()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/extensions/n;-><init>(Ljava/lang/Object;Lcom/dolphin/browser/extensions/a;Ljava/util/Set;)V

    .line 31
    return-void
.end method

.method private static a(Lcom/dolphin/browser/extensions/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/dolphin/browser/extensions/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/r;-><init>(Lcom/dolphin/browser/extensions/a;)V

    return-object v0
.end method

.method private static o()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    sget-object v1, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method
