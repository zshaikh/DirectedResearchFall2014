.class public final enum Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;
.super Ljava/lang/Enum;
.source "IMTransitionStringEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum DISSOLVE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum FADE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum ROLL:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum SLIDE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field public static final enum ZOOM:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

.field private static final synthetic b:[Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->DEFAULT:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "DISSOLVE"

    const-string v2, "dissolve"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->DISSOLVE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "FADE"

    const-string v2, "fade"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->FADE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "ROLL"

    const-string v2, "roll"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->ROLL:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "SLIDE"

    const-string v2, "slide"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->SLIDE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "ZOOM"

    const/4 v2, 0x5

    const-string v3, "zoom"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->ZOOM:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->DEFAULT:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->DISSOLVE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->FADE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->ROLL:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->SLIDE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->ZOOM:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->NONE:Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->b:[Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;
    .locals 5
    .parameter

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->values()[Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 19
    :cond_1
    aget-object v3, v0, v2

    .line 20
    iget-object v4, v3, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 21
    goto :goto_1

    .line 19
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->b:[Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMTransitionStringEnum;->a:Ljava/lang/String;

    return-object v0
.end method
