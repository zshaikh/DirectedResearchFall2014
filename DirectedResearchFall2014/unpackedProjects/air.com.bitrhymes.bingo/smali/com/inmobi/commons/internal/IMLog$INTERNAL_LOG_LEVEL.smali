.class public final enum Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;
.super Ljava/lang/Enum;
.source "IMLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/internal/IMLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERNAL_LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

.field public static final enum INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

.field public static final enum NONE:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

.field private static final synthetic b:[Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    new-instance v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->b:[Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->a:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->b:[Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/inmobi/commons/internal/IMLog$INTERNAL_LOG_LEVEL;->a:I

    return v0
.end method
