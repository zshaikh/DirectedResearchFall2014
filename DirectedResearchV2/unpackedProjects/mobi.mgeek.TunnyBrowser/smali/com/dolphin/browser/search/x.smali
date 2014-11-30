.class public final Lcom/dolphin/browser/search/x;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/search/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dolphin/browser/search/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 810
    new-instance v0, Lcom/dolphin/browser/search/x;

    invoke-direct {v0}, Lcom/dolphin/browser/search/x;-><init>()V

    sput-object v0, Lcom/dolphin/browser/search/x;->a:Lcom/dolphin/browser/search/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/search/w;Lcom/dolphin/browser/search/w;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 815
    iget v0, p2, Lcom/dolphin/browser/search/w;->e:F

    iget v1, p1, Lcom/dolphin/browser/search/w;->e:F

    sub-float/2addr v0, v1

    .line 816
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 817
    const/4 v0, 0x1

    .line 821
    :goto_0
    return v0

    .line 818
    :cond_0
    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 819
    const/4 v0, -0x1

    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 808
    check-cast p1, Lcom/dolphin/browser/search/w;

    check-cast p2, Lcom/dolphin/browser/search/w;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/search/x;->a(Lcom/dolphin/browser/search/w;Lcom/dolphin/browser/search/w;)I

    move-result v0

    return v0
.end method
