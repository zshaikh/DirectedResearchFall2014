.class public final enum Lcom/dolphin/browser/search/y;
.super Ljava/lang/Enum;
.source "SuggestionAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/search/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/search/y;

.field public static final enum b:Lcom/dolphin/browser/search/y;

.field public static final enum c:Lcom/dolphin/browser/search/y;

.field public static final enum d:Lcom/dolphin/browser/search/y;

.field public static final enum e:Lcom/dolphin/browser/search/y;

.field public static final enum f:Lcom/dolphin/browser/search/y;

.field public static final enum g:Lcom/dolphin/browser/search/y;

.field public static final enum h:Lcom/dolphin/browser/search/y;

.field public static final enum i:Lcom/dolphin/browser/search/y;

.field public static final enum j:Lcom/dolphin/browser/search/y;

.field private static final synthetic k:[Lcom/dolphin/browser/search/y;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_BOOKMARK"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_HISTORY"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->b:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_SEARCH_ENGINE_SUGGEST"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->c:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_NAMESPACE_SUGGEST"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_QUERY"

    invoke-direct {v0, v1, v7}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_DEFAULT_HISTORY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->f:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_DEFAULT_BOOKMARK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->g:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_MOST_VISITED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->h:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_TOP_SUGGEST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->i:Lcom/dolphin/browser/search/y;

    new-instance v0, Lcom/dolphin/browser/search/y;

    const-string v1, "TYPE_HOME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/search/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/search/y;->j:Lcom/dolphin/browser/search/y;

    .line 520
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dolphin/browser/search/y;

    sget-object v1, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/search/y;->b:Lcom/dolphin/browser/search/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/search/y;->c:Lcom/dolphin/browser/search/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/search/y;->e:Lcom/dolphin/browser/search/y;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/search/y;->f:Lcom/dolphin/browser/search/y;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/search/y;->g:Lcom/dolphin/browser/search/y;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/search/y;->h:Lcom/dolphin/browser/search/y;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dolphin/browser/search/y;->i:Lcom/dolphin/browser/search/y;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dolphin/browser/search/y;->j:Lcom/dolphin/browser/search/y;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/search/y;->k:[Lcom/dolphin/browser/search/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/dolphin/browser/search/y;->a:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/search/y;->g:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/dolphin/browser/search/y;->b:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/search/y;->f:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/search/y;->f:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lcom/dolphin/browser/search/y;->c:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/search/y;
    .locals 1

    .prologue
    .line 520
    const-class v0, Lcom/dolphin/browser/search/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/y;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/search/y;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/dolphin/browser/search/y;->k:[Lcom/dolphin/browser/search/y;

    invoke-virtual {v0}, [Lcom/dolphin/browser/search/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/search/y;

    return-object v0
.end method
