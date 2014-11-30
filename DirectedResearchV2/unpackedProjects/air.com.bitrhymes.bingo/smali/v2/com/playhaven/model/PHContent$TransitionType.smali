.class public final enum Lv2/com/playhaven/model/PHContent$TransitionType;
.super Ljava/lang/Enum;
.source "PHContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/model/PHContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/model/PHContent$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/model/PHContent$TransitionType;

.field public static final enum Dialog:Lv2/com/playhaven/model/PHContent$TransitionType;

.field public static final enum Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

.field public static final enum Unknown:Lv2/com/playhaven/model/PHContent$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lv2/com/playhaven/model/PHContent$TransitionType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/model/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Unknown:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 26
    new-instance v0, Lv2/com/playhaven/model/PHContent$TransitionType;

    const-string v1, "Modal"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/model/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 27
    new-instance v0, Lv2/com/playhaven/model/PHContent$TransitionType;

    const-string v1, "Dialog"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/model/PHContent$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Dialog:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lv2/com/playhaven/model/PHContent$TransitionType;

    sget-object v1, Lv2/com/playhaven/model/PHContent$TransitionType;->Unknown:Lv2/com/playhaven/model/PHContent$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/model/PHContent$TransitionType;->Dialog:Lv2/com/playhaven/model/PHContent$TransitionType;

    aput-object v1, v0, v4

    sput-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->$VALUES:[Lv2/com/playhaven/model/PHContent$TransitionType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/model/PHContent$TransitionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lv2/com/playhaven/model/PHContent$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lv2/com/playhaven/model/PHContent$TransitionType;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/model/PHContent$TransitionType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->$VALUES:[Lv2/com/playhaven/model/PHContent$TransitionType;

    invoke-virtual {v0}, [Lv2/com/playhaven/model/PHContent$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/model/PHContent$TransitionType;

    return-object v0
.end method
