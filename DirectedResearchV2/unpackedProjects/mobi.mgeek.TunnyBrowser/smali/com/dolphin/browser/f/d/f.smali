.class Lcom/dolphin/browser/f/d/f;
.super Lcom/dolphin/browser/util/f;
.source "TopSitesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/f/d/d;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/f/d/d;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/f/d/f;->a:Lcom/dolphin/browser/f/d/d;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/f/d/d;Lcom/dolphin/browser/f/d/e;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/dolphin/browser/f/d/f;-><init>(Lcom/dolphin/browser/f/d/d;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/d/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/f/d/f;->a:Lcom/dolphin/browser/f/d/d;

    invoke-static {v0}, Lcom/dolphin/browser/f/d/d;->a(Lcom/dolphin/browser/f/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method
