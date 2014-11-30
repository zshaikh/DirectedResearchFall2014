.class public final enum Lcom/dolphin/browser/search/suggestions/w;
.super Ljava/lang/Enum;
.source "SearchTabIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/search/suggestions/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/search/suggestions/w;

.field public static final enum b:Lcom/dolphin/browser/search/suggestions/w;

.field private static final synthetic d:[Lcom/dolphin/browser/search/suggestions/w;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/dolphin/browser/search/suggestions/w;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lcom/dolphin/browser/search/suggestions/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/w;->a:Lcom/dolphin/browser/search/suggestions/w;

    new-instance v0, Lcom/dolphin/browser/search/suggestions/w;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/dolphin/browser/search/suggestions/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/w;->b:Lcom/dolphin/browser/search/suggestions/w;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/search/suggestions/w;

    sget-object v1, Lcom/dolphin/browser/search/suggestions/w;->a:Lcom/dolphin/browser/search/suggestions/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/search/suggestions/w;->b:Lcom/dolphin/browser/search/suggestions/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/search/suggestions/w;->d:[Lcom/dolphin/browser/search/suggestions/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/dolphin/browser/search/suggestions/w;->c:I

    .line 88
    return-void
.end method

.method public static a(I)Lcom/dolphin/browser/search/suggestions/w;
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Lcom/dolphin/browser/search/suggestions/w;->values()[Lcom/dolphin/browser/search/suggestions/w;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 93
    iget v4, v0, Lcom/dolphin/browser/search/suggestions/w;->c:I

    if-ne v4, p0, :cond_0

    .line 97
    :goto_1
    return-object v0

    .line 92
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/search/suggestions/w;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/dolphin/browser/search/suggestions/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/w;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/search/suggestions/w;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/dolphin/browser/search/suggestions/w;->d:[Lcom/dolphin/browser/search/suggestions/w;

    invoke-virtual {v0}, [Lcom/dolphin/browser/search/suggestions/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/search/suggestions/w;

    return-object v0
.end method
