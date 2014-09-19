.class public final enum Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;
.super Ljava/lang/Enum;
.source "IMNavigationStringEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACK:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

.field public static final enum CLOSE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

.field public static final enum FORWARD:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

.field public static final enum NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

.field public static final enum REFRESH:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

.field private static final synthetic b:[Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->CLOSE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    const-string v1, "BACK"

    const-string v2, "back"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->BACK:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    const-string v1, "FORWARD"

    const-string v2, "forward"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->FORWARD:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    const-string v1, "REFRESH"

    const-string v2, "refresh"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->REFRESH:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->CLOSE:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->BACK:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->FORWARD:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->REFRESH:Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->b:[Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;
    .locals 5
    .parameter

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->values()[Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 39
    :cond_1
    aget-object v3, v0, v2

    .line 40
    iget-object v4, v3, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 41
    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->b:[Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMNavigationStringEnum;->a:Ljava/lang/String;

    return-object v0
.end method
