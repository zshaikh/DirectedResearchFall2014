.class public final enum Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;
.super Ljava/lang/Enum;
.source "PHContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dialog:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

.field private static final synthetic ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

.field public static final enum Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

.field public static final enum Unknown:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Unknown:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 26
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    const-string v1, "Modal"

    invoke-direct {v0, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 27
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    const-string v1, "Dialog"

    invoke-direct {v0, v1, v4}, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Dialog:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Unknown:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Modal:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->Dialog:Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;->ENUM$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/playhaven/src/publishersdk/content/PHContent$TransitionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
