.class public final enum Lcom/dolphin/browser/search/suggestions/v;
.super Ljava/lang/Enum;
.source "SearchTabIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/search/suggestions/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/search/suggestions/v;

.field public static final enum b:Lcom/dolphin/browser/search/suggestions/v;

.field public static final enum c:Lcom/dolphin/browser/search/suggestions/v;

.field private static final synthetic e:[Lcom/dolphin/browser/search/suggestions/v;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/dolphin/browser/search/suggestions/v;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/dolphin/browser/search/suggestions/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/v;->a:Lcom/dolphin/browser/search/suggestions/v;

    new-instance v0, Lcom/dolphin/browser/search/suggestions/v;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/dolphin/browser/search/suggestions/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/v;->b:Lcom/dolphin/browser/search/suggestions/v;

    new-instance v0, Lcom/dolphin/browser/search/suggestions/v;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/dolphin/browser/search/suggestions/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/v;->c:Lcom/dolphin/browser/search/suggestions/v;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/search/suggestions/v;

    sget-object v1, Lcom/dolphin/browser/search/suggestions/v;->a:Lcom/dolphin/browser/search/suggestions/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/search/suggestions/v;->b:Lcom/dolphin/browser/search/suggestions/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/search/suggestions/v;->c:Lcom/dolphin/browser/search/suggestions/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/search/suggestions/v;->e:[Lcom/dolphin/browser/search/suggestions/v;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/dolphin/browser/search/suggestions/v;->d:I

    .line 67
    return-void
.end method

.method public static a(I)Lcom/dolphin/browser/search/suggestions/v;
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lcom/dolphin/browser/search/suggestions/v;->values()[Lcom/dolphin/browser/search/suggestions/v;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 72
    iget v4, v0, Lcom/dolphin/browser/search/suggestions/v;->d:I

    if-ne v4, p0, :cond_0

    .line 76
    :goto_1
    return-object v0

    .line 71
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/search/suggestions/v;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/dolphin/browser/search/suggestions/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/v;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/search/suggestions/v;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/dolphin/browser/search/suggestions/v;->e:[Lcom/dolphin/browser/search/suggestions/v;

    invoke-virtual {v0}, [Lcom/dolphin/browser/search/suggestions/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/search/suggestions/v;

    return-object v0
.end method
